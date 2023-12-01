--soal 1
SELECT	nama, email, bulan_lahir, tanggal_registrasi
FROM	rakamin_customer
WHERE	(email LIKE '%@yahoo.com' or email LIKE '%@roketmail.com')
		AND
		(tanggal_registrasi BETWEEN '2012-01-01'AND '2012-03-31')
		 AND
		(bulan_lahir IN ('Januari', 'Februari', 'Maret'))


--soal 2
SELECT	id_order,
		id_pelanggan,
		harga,
		harga * ppn + harga AS harga_setelah_ppn,
CASE WHEN harga * ppn + harga < 20000 THEN 'low'
	WHEN harga * ppn + harga >= 20000 AND harga * ppn + harga <= 50000 THEN 'medium'
	WHEN harga * ppn + harga > 50000 THEN 'low'
	ELSE 'ERROR'
	END AS spending_bucket
FROM	rakamin_order
ORDER BY harga_setelah_ppn DESC


--soal 3
SELECT	id_merchant,
		COUNT(id_order) AS jumlah_order,
		SUM(harga) AS jumlah_pendapatan_sebelum_ppn
FROM rakamin_order
GROUP BY 1
ORDER BY jumlah_pendapatan_sebelum_ppn DESC


--soal 4
SELECT	metode_bayar,
		COUNT(id_order) AS frekuensi_penggunaan
FROM	rakamin_order
GROUP BY 1
HAVING COUNT(id_order) > 10
ORDER BY frekuensi_penggunaan DESC


--soal 5
SELECT 	MIN(summary_pelanggan.jumlah_pelanggan), 
		MAX(summary_pelanggan.jumlah_pelanggan)
FROM	(
SELECT	kota,
		count(id_pelanggan) AS jumlah_pelanggan
FROM	rakamin_customer_address
GROUP BY kota
) AS summary_pelanggan


--soal 6
SELECT 	 rm.nama_merchant, 
		 ro.metode_bayar,
	 	 COUNT(ro.id_order) AS frekuensi_pembayaran
FROM 	 rakamin_order AS ro
JOIN 	 rakamin_merchant AS rm
  ON 	 ro.id_merchant = rm.id_merchant
GROUP BY rm.nama_merchant,ro.metode_bayar


--soal 7
WITH 	 analisis AS (
SELECT 	 id_pelanggan,
		 SUM(kuantitas) AS total_kuantitas
FROM 	 rakamin_order ro 
GROUP BY id_pelanggan 
HAVING   SUM(kuantitas) > 5
)
SELECT   a.id_pelanggan,
		 a.total_kuantitas,
		 rc.nama,
		 rc.email 
FROM 	 analisis AS a
JOIN	 rakamin_customer AS rc
  ON 	 a.id_pelanggan = rc.id_pelanggan
  
  
  




