use Scooters
SELECT TOP 3 Tipe_Produk, COUNT(*) as Jumlah_Pembelian
FROM [dbo].[Transaksi Main Product]
WHERE Customer IN (
SELECT Name
FROM [dbo].[Customer]
WHERE Gender='Wanita' AND Usia >= 20 AND Usia <= 29
)
GROUP BY Tipe_Produk
ORDER BY Jumlah_Pembelian DESC