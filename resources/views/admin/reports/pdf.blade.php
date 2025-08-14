<!DOCTYPE html>
<html>
<head>
    <title>Transaction Report</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .header { text-align: center; margin-bottom: 20px; }
        .summary { margin-bottom: 20px; }
        .footer { margin-top: 20px; font-size: 0.8em; text-align: right; }
    </style>
</head>
<body>
    <div class="header">
        <h1 style="color: #d4af37;">Transaction Report</h1>
        <p>Generated on: {{ now()->format('Y-m-d H:i:s') }}</p>
    </div>

    <div class="summary">
        <h3>Summary</h3>
        <p>Total Users: {{ $users }}</p>
        <p>Total Products: {{ $barangs }}</p>
        <p>Total Services: {{ $jasas }}</p>
        <p>Total Revenue: Rp {{ number_format($totalRevenue, 2) }}</p>
    </div>

    <table>
        <thead>
            <tr>
                <th>Transaction ID</th>
                <th>User</th>
                <th>Items</th>
                <th>Total Price</th>
                <th>Status</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            @foreach($transactions as $transaction)
                <tr>
                    <td>{{ $transaction->id }}</td>
                    <td>{{ $transaction->user ? $transaction->user->name : 'N/A' }}</td>
                    <td>
                        @foreach($transaction->items as $item)
                            {{ $item->barang ? $item->barang->name : ($item->jasa ? $item->jasa->name : 'N/A') }}
                            (Qty: {{ $item->quantity }})<br>
                        @endforeach
                    </td>
                    <td>Rp {{ number_format($transaction->total_price, 2) }}</td>
                    <td>{{ $transaction->status }}</td>
                    <td>{{ $transaction->created_at->format('Y-m-d H:i:s') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="footer">
        <p>Page 1 of 1</p>
    </div>
</body>
</html>
