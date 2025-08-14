<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use App\Models\User;
use App\Models\Barang;
use App\Models\Jasa;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\TransactionReportExport;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Gate;

class ReportController extends Controller
{
    /**
     * Terapkan filter tanggal ke query.
     * Untuk transaksi, biasanya juga ingin mengecualikan cancelled & pending.
     */
    protected function applyDateFilters($query, Request $request)
    {
        $query->when($request->filled('start_date'), fn($q) => $q->whereDate('created_at', '>=', $request->start_date))
              ->when($request->filled('end_date'), fn($q) => $q->whereDate('created_at', '<=', $request->end_date))
              ->when($request->filled('month'), fn($q) => $q->whereMonth('created_at', $request->month))
              ->when($request->filled('year'), fn($q) => $q->whereYear('created_at', $request->year));
    }

    public function index(Request $request)
    {
        // 1. Query untuk Transaksi dengan Filter, kecualikan yang cancelled dan pending
        $transactionsQuery = Transaction::with(['user', 'items.barang', 'items.jasa'])
            ->whereNotIn('status', ['cancelled', 'pending']);
        $this->applyDateFilters($transactionsQuery, $request);
        $transactions = $transactionsQuery->latest()->paginate(10)->withQueryString();

        // 2. Total Revenue hanya dari completed, dengan filter tanggal
        $totalRevenueQuery = Transaction::where('status', 'completed');
        $this->applyDateFilters($totalRevenueQuery, $request);
        $totalRevenue = $totalRevenueQuery->sum('total_price');

        // Summary lain
        $users = User::count();
        $barangs = Barang::count();
        $jasas = Jasa::count();

        // 3. Chart Data dari completed, dengan filter tanggal
        $chartDataQuery = Transaction::selectRaw('DATE_FORMAT(created_at, "%Y-%m") as month, COUNT(*) as count, SUM(total_price) as revenue')
            ->where('status', 'completed');
        $this->applyDateFilters($chartDataQuery, $request);
        $chartData = $chartDataQuery
            ->groupBy('month')
            ->orderBy('month')
            ->get()
            ->map(fn($item) => [
                'month' => $item->month,
                'count' => $item->count,
                'revenue' => $item->revenue,
            ]);

        return view('admin.reports.index', compact('transactions', 'users', 'barangs', 'jasas', 'totalRevenue', 'chartData'));
    }

    public function print(Request $request)
    {
        $transactionsQuery = Transaction::with(['user', 'items.barang', 'items.jasa'])
            ->whereNotIn('status', ['cancelled', 'pending']);

        $this->applyDateFilters($transactionsQuery, $request);
        $transactions = $transactionsQuery->latest()->get();

        // Total revenue dari completed saja, dengan filter tanggal
        $totalRevenueQuery = Transaction::where('status', 'completed');
        $this->applyDateFilters($totalRevenueQuery, $request);
        $totalRevenue = $totalRevenueQuery->sum('total_price');

        $users = User::count();
        $barangs = Barang::count();
        $jasas = Jasa::count();

        return view('admin.reports.print', compact('transactions', 'users', 'barangs', 'jasas', 'totalRevenue'));
    }

    public function exportExcel(Request $request)
    {
        $transactionsQuery = Transaction::with(['user', 'items.barang', 'items.jasa'])
            ->whereNotIn('status', ['cancelled', 'pending']);
        $this->applyDateFilters($transactionsQuery, $request);
        $transactions = $transactionsQuery->latest()->get();

        $filename = 'transaction_report_' . date('Y-m-d');
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $filename .= '_from_' . $request->start_date . '_to_' . $request->end_date;
        } elseif ($request->filled('month') && $request->filled('year')) {
            $filename .= '_' . $request->year . '-' . $request->month;
        } elseif ($request->filled('year')) {
            $filename .= '_year_' . $request->year;
        }

        return Excel::download(new TransactionReportExport($transactions), $filename . '.xlsx');
    }

    public function exportPDF(Request $request)
    {
        $transactionsQuery = Transaction::with(['user', 'items.barang', 'items.jasa'])
            ->whereNotIn('status', ['cancelled', 'pending']);
        $this->applyDateFilters($transactionsQuery, $request);
        $transactions = $transactionsQuery->latest()->get();

        $totalRevenueQuery = Transaction::where('status', 'completed');
        $this->applyDateFilters($totalRevenueQuery, $request);
        $totalRevenue = $totalRevenueQuery->sum('total_price');

        $users = User::count();
        $barangs = Barang::count();
        $jasas = Jasa::count();

        $filename = 'transaction_report_' . date('Y-m-d');
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $filename .= '_from_' . $request->start_date . '_to_' . $request->end_date;
        } elseif ($request->filled('month') && $request->filled('year')) {
            $filename .= '_' . $request->year . '-' . $request->month;
        } elseif ($request->filled('year')) {
            $filename .= '_year_' . $request->year;
        }

        $pdf = Pdf::loadView('admin.reports.pdf', compact('transactions', 'users', 'barangs', 'jasas', 'totalRevenue'));
        return $pdf->download($filename . '.pdf');
    }
}
