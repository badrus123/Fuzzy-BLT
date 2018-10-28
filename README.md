# PENERAPAN LOGIKA FUZZY DENGAN METODE WEIGHT AVERAGE UNTUK MENENTUKAN KELAYAKAN SEEORANG DALAM PEMBAGIAN BANTUAN LANGSUNG TUNAI
## Deskripsi Masalah
Dalam menentukan pilihan terdapat dua kemungkinan, yaitu Benar dan Salah atau dapat disebut zona hitam dan zona putih. Namun, nyatanya dalam pengaplikasian hal tersebut terdapat range atau jarak yang menyatakan disaat pilihan itu tidak dapat dipastikan ketidakpastiannya. Hal itu  disebut zona abu-abu. Yaitu zona dimana tidak dapat dikatakan hitam dan tidak bisa dikatakan putih yang sebagaimana diilustrasikan oleh fuzzy logic. 
fuzzy logic terjadi didalam hal bernama fuzzy set. Dalam fuzzy set ini terdapat fungsi keanggotaan yang berfungsi untuk memetakan masalah dan hasil keputusan yang diambil guna menentukan kebenaran dari suatu masalah. Dalam tugas program ini saya menggunakan dua fungsi keanggotaan yaitu fungsi pendapatan suatu keluarga dan fungsi Hutang Keluarga itu. Fungsi BLT ini saya buat dengan range dari 1 – 100 data  dan outputan yang mendapatkan BLT sebanyak 20 orang yang di sorting dari 1-20.

## Rancangan Metode
Langkah – langkah:
1.	Inisiasi nilai Pendapatan dan Hutang dengan mengambil nilai yang ada di dalam data sample pada file CSV
2.	Lakukan fuzzification dengan mencari miu  dari fungsi keanggotaan Pendapatan dan Hutang
3.	Lakukan inferensi menggunakan data fuzzification yang telah didapat
4.	Lakukan deffuzification untuk menentukan apakah dia berhak mendapatkan BLT ataupun tidak menggunakan data hasil inferensi

Dan disini juga ada pengamatan Data sebelumnya yang menunjukan kepada Orang yang layak mendapatkan BLT
