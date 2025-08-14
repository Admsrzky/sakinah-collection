<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction Report</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @media print {

            /* Sembunyikan elemen yang tidak diperlukan saat mencetak */
            body {
                margin: 0;
                padding: 0;
                background-color: #fff !important;
                -webkit-print-color-adjust: exact !important;
                /* Untuk Chrome/Safari */
                color-adjust: exact !important;
                /* Standar */
            }

            /* Hapus padding, margin, shadow, dan border-radius dari kontainer utama */
            .print\:p-0 {
                padding: 0 !important;
            }

            .print\:bg-white {
                background-color: #fff !important;
            }

            .print\:m-0 {
                margin: 0 !important;
            }

            .print\:w-full {
                width: 100% !important;
            }

            .print\:min-h-screen {
                min-height: 100vh !important;
            }

            .print\:max-w-full {
                max-width: 100% !important;
            }

            .print\:px-0 {
                padding-left: 0 !important;
                padding-right: 0 !important;
            }

            .print\:shadow-none {
                box-shadow: none !important;
            }

            .print\:rounded-none {
                border-radius: 0 !important;
            }

            .print\:border {
                border: 1px solid #e5e7eb !important;
            }

            /* Atur ulang padding dan margin untuk konten dalam */
            .print\:p-8 {
                padding: 2rem !important;
            }

            .print\:mb-8 {
                margin-bottom: 2rem !important;
            }

            .print\:mb-6 {
                margin-bottom: 1.5rem !important;
            }

            /* Ukuran font untuk judul dan sub-judul */
            .print\:text-4xl {
                font-size: 2.25rem !important;
            }

            /* 36px */
            .print\:text-2xl {
                font-size: 1.5rem !important;
            }

            /* 24px */
            .print\:text-3xl {
                font-size: 1.875rem !important;
            }

            /* 30px */
            .print\:text-sm {
                font-size: 0.875rem !important;
            }

            /* 14px */

            /* Penyesuaian grid untuk summary */
            .print\:grid-cols-4 {
                grid-template-columns: repeat(4, minmax(0, 1fr)) !important;
            }

            .print\:gap-6 {
                gap: 1.5rem !important;
            }

            /* Warna dan border untuk kotak summary */
            .print\:bg-gray-50 {
                background-color: #f9fafb !important;
            }

            .print\:text-gray-600 {
                color: #4b5563 !important;
            }

            /* Tabel */
            table {
                width: 100% !important;
                border-collapse: collapse !important;
                margin-top: 1.5rem !important;
            }

            thead tr {
                background-color: #f3f4f6 !important;
                color: #374151 !important;
            }

            th,
            td {
                padding: 0.75rem 1rem !important;
                text-align: left !important;
                border-bottom: 1px solid #e5e7eb !important;
            }

            tbody tr:nth-child(even) {
                background-color: #f9fafb !important;
                /* Zebra striping */
            }

            /* Mencegah pemotongan baris tabel saat ganti halaman */
            .print\:break-inside-avoid {
                break-inside: avoid;
            }

            /* Sembunyikan tombol cetak saat dalam mode cetak */
            .no-print,
            .print\:hidden {
                display: none !important;
            }

            /* Pengaturan halaman cetak */
            @page {
                margin: 1cm;
                /* Margin standar untuk cetakan */
            }

            /* Tanda tangan */
            .print-signature-section {
                margin-top: 3rem;
                /* Jarak dari tabel */
                padding-top: 1rem;
                text-align: right;
                /* Posisikan tanda tangan di kanan */
            }

            .print-signature-section p {
                margin-bottom: 0.25rem;
                /* Jarak antar baris teks di tanda tangan */
                font-size: 0.95rem;
                /* Sedikit lebih kecil dari teks biasa */
                color: #374151;
            }

            .signature-line {
                width: 200px;
                /* Lebar garis tanda tangan */
                border-bottom: 1px solid #000;
                margin-left: auto;
                /* Pusatkan garis jika text-align left, atau dorong ke kanan jika text-align right */
                margin-right: 0;
                /* Pastikan di kanan jika text-align right */
                margin-top: 4rem;
                /* Jarak untuk tanda tangan */
                margin-bottom: 0.5rem;
            }
        }
    </style>
</head>

<body>

    <div class="py-12 bg-gray-100 print:p-0 print:bg-white print:m-0 print:w-full print:min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 print:max-w-full print:px-0 print:m-0">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg print:shadow-none print:rounded-none">
                <div class="container mx-auto p-6 print:p-8">
                    <h1 class="text-3xl font-bold mb-6 text-center print:text-4xl print:mb-8" style="color: #d4af37;">
                        Transaction Report</h1>

                    <div
                        class="bg-white shadow-md rounded-lg overflow-hidden print:shadow-none print:rounded-none print:border print:border-gray-200">
                        <table class="min-w-full print:w-full print:text-sm">
                            <thead>
                                <tr
                                    class="bg-gray-200 print:bg-gray-100 print:text-gray-700 print:uppercase print:text-left">
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        ID</th>
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        User</th>
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        Items</th>
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        Total Price</th>
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        Status</th>
                                    <th
                                        class="py-3 px-6 text-left print:py-2 print:px-4 print:border-b print:border-gray-300">
                                        Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($transactions as $transaction)
                                    <tr class="border-b print:border-gray-200 print:break-inside-avoid">
                                        {{-- Use $loop->iteration for incrementing number --}}
                                        <td class="py-3 px-6 print:py-2 print:px-4">{{ $loop->iteration }}</td>
                                        <td class="py-3 px-6 print:py-2 print:px-4">
                                            {{ $transaction->user ? $transaction->user->name : 'N/A' }}</td>
                                        <td class="py-3 px-6 print:py-2 print:px-4">
                                            @foreach ($transaction->items as $item)
                                                {{ $item->barang ? $item->barang->name : ($item->jasa ? $item->jasa->name : 'N/A') }}
                                                (Qty: {{ $item->quantity }})
                                                <br>
                                            @endforeach
                                        </td>
                                        <td class="py-3 px-6 print:py-2 print:px-4">Rp
                                            {{ number_format($transaction->total_price, 2) }}</td>
                                        <td class="py-3 px-6 print:py-2 print:px-4">{{ $transaction->status }}</td>
                                        <td class="py-3 px-6 print:py-2 print:px-4">
                                            {{ $transaction->created_at->format('Y-m-d H:i:s') }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    {{-- - Section Tanda Tangan (Hanya Tampil Saat Cetak) - --}}
                    <div class="hidden print:block print-signature-section">
                        <p>Cilegon, {{ now()->format('d F Y') }}</p> {{-- Tanggal laporan --}}
                        <p>Hormat kami,</p>
                        <div class="signature-line"></div> {{-- Garis untuk tanda tangan --}}
                        <p><strong>(Juwita Summettikul😍)</strong></p>
                        <p>Pemilik Sakinah Collection</p>
                    </div>
                    {{-- ----------------------------------------------------- --}}

                    <div class="mt-4 no-print print:hidden"> {{-- Sembunyikan tombol cetak di tampilan cetak --}}
                        <button onclick="window.print()"
                            class="bg-yellow-600 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded"
                            style="background-color: #d4af37;">Print</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
