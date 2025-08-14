<x-app-layout>
    <!-- Header -->
    @include('layouts.navigation', ['currentPage' => 'Reports Transaction'])

    <div class="py-12 bg-gray-100">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
            <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
                <div class="container p-6 mx-auto">
                    <h1 class="mb-6 text-3xl font-bold text-center" style="color: #d4af37;">Transaction Report</h1>

                    @if (session('success'))
                        <div class="px-4 py-3 mb-4 text-green-700 bg-green-100 border border-green-400 rounded">
                            {{ session('success') }}
                        </div>
                    @endif

                    <!-- Filter Section -->
                    <div class="p-6 mb-6 bg-white rounded-lg shadow-md">
                        <h2 class="mb-4 text-xl font-bold" style="color: #d4af37;">Filter Transactions</h2>
                        <form id="filterForm" method="GET" action="{{ route('admin.reports.index') }}" class="grid items-end grid-cols-1 gap-4 md:grid-cols-4">
                            <div>
                                <label for="start_date" class="block text-sm font-medium text-gray-700">Start Date</label>
                                <input type="date" name="start_date" id="start_date"
                                       value="{{ request('start_date') }}"
                                       class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-yellow-500 focus:ring-yellow-500 sm:text-sm">
                            </div>
                            <div>
                                <label for="end_date" class="block text-sm font-medium text-gray-700">End Date</label>
                                <input type="date" name="end_date" id="end_date"
                                       value="{{ request('end_date') }}"
                                       class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-yellow-500 focus:ring-yellow-500 sm:text-sm">
                            </div>
                            <div>
                                <label for="month" class="block text-sm font-medium text-gray-700">Month</label>
                                <select name="month" id="month"
                                        class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-yellow-500 focus:ring-yellow-500 sm:text-sm">
                                    <option value="">Select Month</option>
                                    @for ($m = 1; $m <= 12; $m++)
                                        <option value="{{ sprintf('%02d', $m) }}"
                                                {{ request('month') == sprintf('%02d', $m) ? 'selected' : '' }}>
                                            {{ date('F', mktime(0, 0, 0, $m, 10)) }}
                                        </option>
                                    @endfor
                                </select>
                            </div>
                            <div>
                                <label for="year" class="block text-sm font-medium text-gray-700">Year</label>
                                <select name="year" id="year"
                                        class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-yellow-500 focus:ring-yellow-500 sm:text-sm">
                                    <option value="">Select Year</option>
                                    @php
                                        $currentYear = date('Y');
                                        $startYear = $currentYear - 5; // Adjust as needed
                                    @endphp
                                    @for ($y = $currentYear; $y >= $startYear; $y--)
                                        <option value="{{ $y }}"
                                                {{ request('year') == $y ? 'selected' : '' }}>
                                            {{ $y }}
                                        </option>
                                    @endfor
                                </select>
                            </div>
                            <div class="flex justify-end col-span-full md:col-span-1 md:justify-start">
                                <button type="submit"
                                        class="px-4 py-2 font-bold text-white bg-blue-600 rounded hover:bg-blue-700">
                                    Apply Filter
                                </button>
                            </div>
                        </form>
                    </div>

                    {{-- <div class="flex justify-end mb-4 space-x-2">
                        <a id="printLink" href="{{ route('admin.reports.print') }}" target="_blank"
                            class="px-4 py-2 font-bold text-white bg-yellow-600 rounded hover:bg-yellow-700"
                            style="background-color: #d4af37;">Print</a>
                        <a id="exportExcelLink" href="{{ route('admin.reports.exportExcel') }}"
                            class="px-4 py-2 font-bold text-white bg-green-600 rounded hover:bg-green-700">Export
                            Excel</a>
                        <a id="exportPDFLink" href="{{ route('admin.reports.exportPDF') }}"
                            class="px-4 py-2 font-bold text-white bg-red-600 rounded hover:bg-red-700">Export PDF</a>
                    </div> --}}

                    <div class="flex justify-end mb-4 space-x-2">
                        <a id="printLink" href="{{ route('admin.reports.print', request()->query()) }}" target="_blank"
                            class="px-4 py-2 font-bold text-white bg-yellow-600 rounded hover:bg-yellow-700"
                            style="background-color: #d4af37;">Print</a>
                        <a id="exportExcelLink" href="{{ route('admin.reports.exportExcel', request()->query()) }}"
                            class="px-4 py-2 font-bold text-white bg-green-600 rounded hover:bg-green-700">Export
                            Excel</a>
                        <a id="exportPDFLink" href="{{ route('admin.reports.exportPDF', request()->query()) }}"
                            class="px-4 py-2 font-bold text-white bg-red-600 rounded hover:bg-red-700">Export PDF</a>
                    </div>

                    <div class="overflow-hidden bg-white rounded-lg shadow-md">
                        <table class="min-w-full">
                            <thead>
                                <tr class="bg-gray-200">
                                    <th class="px-6 py-3 text-left">Transaction ID</th>
                                    <th class="px-6 py-3 text-left">User</th>
                                    <th class="px-6 py-3 text-left">Items</th>
                                    <th class="px-6 py-3 text-left">Total Price</th>
                                    <th class="px-6 py-3 text-left">Status</th>
                                    <th class="px-6 py-3 text-left">Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($transactions as $transaction)
                                    <tr class="border-b">
                                        <td class="px-6 py-3">{{ $transaction->id }}</td>
                                        <td class="px-6 py-3">
                                            {{ $transaction->user ? $transaction->user->name : 'N/A' }}</td>
                                        <td class="px-6 py-3">
                                            @foreach ($transaction->items as $item)
                                                {{ $item->barang ? $item->barang->name : ($item->jasa ? $item->jasa->name : 'N/A') }}
                                                (Qty: {{ $item->quantity }})<br>
                                            @endforeach
                                        </td>
                                        <td class="px-6 py-3">Rp {{ number_format($transaction->total_price, 2) }}</td>
                                        <td class="px-6 py-3">{{ $transaction->status }}</td>
                                        <td class="px-6 py-3">{{ $transaction->created_at->format('Y-m-d H:i:s') }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="mt-4">
                        {{ $transactions->appends(request()->query())->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
