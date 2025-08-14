<?php

namespace App\Exports;

use App\Models\Transaction;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class TransactionReportExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    protected $transactions;

    public function __construct($transactions)
    {
        $this->transactions = $transactions;
    }

    public function collection()
    {
        return $this->transactions;
    }

    public function headings(): array
    {
        return [
            'Transaction ID',
            'User',
            'Items',
            'Total Price',
            'Status',
            'Date'
        ];
    }

    public function map($transaction): array
    {
        $items = '';
        foreach ($transaction->items as $item) {
            $items .= ($item->barang ? $item->barang->name : ($item->jasa ? $item->jasa->name : 'N/A'))
                   . ' (Qty: ' . $item->quantity . ')' . "\n";
        }

        return [
            $transaction->id,
            $transaction->user ? $transaction->user->name : 'N/A',
            $items,
            'Rp ' . number_format($transaction->total_price, 2),
            $transaction->status,
            $transaction->created_at->format('Y-m-d H:i:s')
        ];
    }
}
