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

<p align="center">
  <img  src="https://imgur.com/5BspaRi.jpg"  />
</p> 

# Fungsi Keanggotaan
###	FK Pendapatan
#### ini adalah merupakan data rule dari pendapatan

<p align="left">
  <img  src="https://imgur.com/wQErczo.jpg"  />
</p> 

#### ini adalah merupakan data histogram 

<p align="left">
  <img  src="https://imgur.com/L6nu5Nc.jpg"  />
</p> 

###	FK Hutang
#### ini adalah merupakan data rule dari Hutang

<p align="left">
  <img  src="https://imgur.com/MTRXipa.jpg"  />
</p> 

#### ini adalah merupakan data histogram 

<p align="left">
  <img  src="https://imgur.com/FJrqrKD.jpg"  />
</p> 

# FK BLT ( weighted average  )
Metode ini berlaku untuk fuzzy set dengan fungsi dan hasil output simetris keanggotaan hasil sangat dekat dengan metode COA(Centroid of Area). Metode ini kurang intensif secara komputasi. Setiap fungsi keanggotaan ditimbang dengan nilai keanggotaan maksimumnya. Nilai defuzzifikasi adalah didefinisikan sebagai: 
 <p align="left">
  <img  src="https://imgur.com/uwLqGlX.jpg"  />
</p> 
Di sini Σ menunjukkan penjumlahan aljabar dan x adalah elemen dengan keanggotaan  maksimum fungsi. 

#	Fuzzy Rule
 <p align="left">
  <img  src="https://imgur.com/erhUQ1n.jpeg"  />
</p> 



