program soal_2_praktek_menu; // Nama program
const { KONSTANTA }
    phi=3.14;
    gaji=2000000;
    lembur=6000;
    cut=500;
    terjual = 500;
    modal = 65000;
    gaji2=670000;
    lembur2=1500;
    hutang2=2100000;
    
var { VARIABEL }
    pilih: byte;
    nama, ttl, alamat, status, jenis_kelamin, agama: string;
    nilai_1, nilai_2, nilai_3{1}, nilai_4{2}, hasil_1, hasil_2, hasil_3, angka, myNumber, isi, i, n, g, angka1, angka2, nilai1, nilai2, angsuran, x, y, bil, jam2: integer;
    nilai_5{3}, hasil_4, r, luas, alas, tinggi, s, volume, jam, total_lembur, total_gaji, IDR, USD, EUR, hargaJual, untung, perbulan, pembayaran, totalLembur, totalGaji, gajiNormal, lemburan, potongan, gajiTotal, pinjaman, bunga, totalPinjaman, angsuranPerbulan, beratBadan, tinggiBadan, imt: real;
    c, d, hasil: boolean;
    nilai: array [0..1, 0..2] of integer;
    buah: array[1..5] of string = ('apel', 'jeruk', 'semangka', 'durian', 'anggur');
    hewan: array[1..5] of string = ('jerapah', 'kucing', 'ayam', 'kambing', 'buaya');
    nomor: integer;
    
    { (Buka) procedure untuk pertemuan 12 }
        
        // Untuk no 1
        procedure hitungGaji(nama: string; jam2: smallint; var gajiNormal, lemburan, potongan,
        gajiTotal: real);
        begin
        {rumus gaji normal}
        if (jam >= 50) and (jam <= 60) then
        begin
        gajiNormal := 5000 * jam;
        end
        else if jam > 60 then
        begin
        gajiNormal := 5000 * 60;
        lemburan := (jam - 60) * 7500;
        end
        else
        begin
        gajiNormal := 5000 * jam;
        potongan := (50 - jam) * 2500;
        end;
        {rumus total gaji}
        gajiTotal := gajiNormal + lemburan - potongan;
        end;
        
        // Untuk no 2
        procedure hitungAngsuran(pinjaman, bunga: real; angsuran: integer; var totalPinjaman,
        angsuranPerbulan: real);
        begin
        { rumus total pinjaman }
        totalPinjaman := pinjaman + (pinjaman * bunga / 100);
        { rumus angsuran per bulan }
        angsuranPerbulan := totalPinjaman / angsuran;
        end;
        
        // Untuk no 3
        procedure hitungIMT(beratBadan, tinggiBadan: real; var imt: real);
        begin
        { rumus dari imt }
        imt := beratBadan / (tinggiBadan * tinggiBadan);
        end;
        procedure kriteriaIMT(imt: real);
        begin
        if imt <= 18.5 then
        writeln('Kriteria: Kurus')
        else if (imt > 18.5) and (imt <= 25) then
        writeln('Kriteria: Normal')
        else if (imt > 25) and (imt <= 30) then
        writeln('Kriteria: Gemuk')
        else
        writeln('Kriteria: Kegemukan (Obesitas)');
        end;
        
        // Untuk no 4
        procedure tampilData(nomor: integer);
        begin
        if (nomor >= 1) and (nomor <= 5) then
        begin
        writeln(nomor, '. ',buah[nomor]);
        writeln(nomor, '. ',hewan[nomor]);
        end
        else
        begin
        writeln('Data tidak ada');
        end;
        end;
        
    { (Tutup) procedure untuk pertemuan 12}
    
    {------------------------------------}
    
    { (Buka) function untuk pertemuan 13 }
        
        // Untuk no 1
        function HitungPerkalian(var a,b : integer) : integer;
        begin
        HitungPerkalian := a*b;
        end;
        
        // Untuk no 2
        function genap(var x : integer) : boolean;
        begin
        genap := (x mod 2=0);
        end;

    { (Tutup) function untuk pertemuan 13 }

begin //Untuk memulai program
  repeat //Untuk mengulangi sampai input yang diminta diisi
    writeln; // Baris kosong
    writeln('__.:: REVIEW MATERI, LATIHAN, & TUGAS - TUGAS / JORDY LIAN FERDINAND ::.__'); // Judul program
    writeln; // Baris kosong
    writeln('1. Pertemuan 1'); // Pilihan menu pertama
    writeln('2. Pertemuan 2 & 3'); // Pilihan menu kedua
    writeln('3. Pertemuan 4'); // Pilihan menu ketiga
    writeln('4. Pertemuan 5'); // Pilihan menu keempat
    writeln('5. Pertemuan 6'); // Pilihan menu kelima
    writeln('6. QUIZ 1'); // Pilihan menu keenam
    writeln('7. UTS'); // Pilihan menu ketujuh
    writeln('8. Pertemuan 8'); // Pilihan menu kedelapan
    writeln('9. Pertemuan 9'); // Pilihan menu kesembilan
    writeln('10. Pertemuan 10'); // Pilihan menu kesepuluh
    writeln('11. QUIZ 2'); // Pilihan menu kesebelas
    writeln('12. Pertemuan 12'); // Pilihan menu keduabelas
    writeln('13. Pertemuan 13'); // Pilihan menu ketigabelas
    writeln('14. Keluar'); // Pilihan menu keempatbelas
    writeln; // Baris kosong
    write('Pilih 1-14 : '); // Meminta input
    readln(pilih); // Membaca input yang diberikan
    writeln; // Baris kosong
    writeln('..::::::::::::::::::::::..'); // Pemisah
    writeln; // Baris kosong
    case pilih of
    
    1: begin // Memulai menu 1
        writeln('Pertemuan 1 : Perkenalan (Teori-Praktek) / Algoritma dan Pemrograman 1');  // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Tata Cara Perkuliahan'); // Sub-materi 1
        writeln('- Penilaian'); // Sub-materi 2
        writeln('- Deskripsi Mata Kuliah'); // Sub-materi 3
        writeln('- Capaian Pembelajaran'); // Sub-materi 4
        writeln('- Bahasa Pemrograman Yang digunakan'); // Sub-materi 5
        writeln; // Mencetak baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input dari user dan menyimpannya dalam variabel 'pilih'
        if (pilih = 1) then // Jika pilih bernilai 1 maka akan mengeksekusi perintah dibawah
        begin
        writeln('Latihan :'); // Mencetak string 'Latihan :' ke layar
        writeln('Tidak ada latihan / Belum ada latihan'); // Mencetak string 'Tidak ada latihan / Belum ada latihan' ke layar
        end
        else
        begin
        writeln('Tugas :'); // Mencetak string 'Tugas :' ke layar
        writeln('Tidak ada tugas / Belum ada tugas'); // Mencetak string 'Tidak ada tugas / Belum ada tugas' ke layar
        end; //Penutupan dari if-else block
        end;
        
    2: begin // Memulai menu 2
        writeln('Pertemuan 2 & 3 : Konsep (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Konsep Dasar Algoritma (Pendahuluan dan Pengertian)'); // Sub-materi 1
        writeln('- Bahasa pemrograman'); // Sub-materi 2
        writeln('- Apa itu interpreter dan kompilator'); // Sub-materi 3
        writeln('- Flowchart'); // Sub-materi 4
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('Coding Yang Ada Di Dalam Materi Praktek'); // Informasi latihan yang akan dilakukan
                writeln('Seperti coding program (ApaKabar)'); // Contoh latihan yang diberikan
            end
                else // Jika pilihan yang dipilih bukan 1
                    begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Membuat Flowchart Di Kertas'); // Deskripsi tugas
                    writeln; // Baris kosong
                    writeln('1. Mengganti Ban Mobil Yang Pecah'); // Contoh tugas 1
                    writeln('2. Mengambil Uang Di ATM'); // Contoh tugas 2
                    writeln('3. Mengambil Uang Secara Kredit'); // Contoh tugas 3
                    writeln('4. Mengisi Pulsa Pada Telpon Genggam'); // Contoh tugas 4
                    writeln; // Baris kosong
                    writeln('>=================================<');
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul aktivitas
                    writeln('>== Coding ==<'); 
                    writeln;
                    writeln('1. Apa yang dimaksud dengan algoritma? Jawab dengan write coding pascal');
                    writeln('JAWABAN : Algoritma adalah kumpulan Langkah-Langkah secara Logis, di dalam penyelesaian masalah yang apabila dikerjakan oleh orang yang berbeda hasilnya sama.');
                    writeln;
                    writeln('2. Jelaskan perbedaan antara algoritma dengan program ? lihat nomor 1');
                    writeln('JAWABAN : Algoritma adalah urutan langkah-langkah yang logis dan terbatas yang disusun secara sistematis dengan tujuan menyelesaikan suatu masalah tertentu. program adalah kumpulan intruksi berupa pernyataan yang ditulis dengan menggunakan bahasa pemrograman yang melibatkan pemilihan struktur data. Beberapa ahli di bidang komputer menyatakan bahwa program dengan formula program sama dengan algoritma ditambah bahasa program.');
                    writeln;
                    writeln('3. Jelaskan perbedaan algoritma teks dan flowchart! Sebutkan kelebihan dan kekurangan kedua metode ini masing-masing ? lihat nomor 1');
                    writeln('JAWABAN : Algoritma adalah langkah-langkah yang disusun secara tertulis dan berurutan untuk menyelesaikan suatu masalah sedangkan flowchart adalah metode untuk menggambarkan tahap-tahap penyelesaian masalah beserta aliran data dengan simbol-simbol yang mudah dipahami');
                    writeln('- ada 3 cara menulis algoritma yaitu:');
                    writeln('a). structured english (SE) merupakan alat yang cukup baik untuk menggambarkan suatu algoritma. dasar dari SE adalah bahasa inggris namun dapat menyesuaikan dengan bahasa indonesia.SE dapat digunakan sebagai structured Indonesia (SI).');
                    writeln('b). pseudocode hampr mirip dengan SE. pseudocode adalah kode yang mirip dengan program kode yang nyata. pseudocode menggunakan bahasa PASCAL.');
                    writeln('c). flowchart (bagan alir) adalah skema (bagan/chart) yang menunjukkan aliran (flow) didalam program secara logika.');
                    writeln('- dalam pemberian nama variable terdapat suatu aturan, yaitu :');
                    writeln('a). nama variable harus diawali dengan huruf underscore dan tidak boleh diawali dengan angka.');
                    writeln('b). nama variable boleh terdiri dari karakter alpha-numeric dan underscore');
                    writeln('c). tidur mengandung spages.');
                    writeln;
                    writeln('4. BUATKAN SAYA SEPERTI GAMBAR DIBAWAH INI DENGAN CODING PASCAL');
                    writeln('UNIVERSITAS DARMA PERSADA');
                    writeln('Jl Taman Malaka Selatan NO. 8');
                    writeln('-----------------------------');
                    writeln('Nama : Oemar Bakri');
                    writeln('NIM : 10205088');
                    writeln('Jurusan : Teknologi Informasi');
                    writeln('Fakultas : Teknik');
                end;
        end;
        
    3: begin
        writeln('Pertemuan 4 : Algoritma Runtutan (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Karakteristik Algoritma'); // Sub-materi 1
        writeln('- Kriteria Algoritma'); // Sub-materi 2
        writeln('- Manfaat Penggunaan Algoritma'); // Sub-materi 3
        writeln('- Bentuk Algoritma (New)'); // Sub-materi 4
        writeln('- Algoritma runtutan'); // Sub-materi 5
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('Tidak ada latihan / Belum ada latihan'); // Informasi jika tidak ada latihan
            end
                else // Jika pilihan yang dipilih bukan 1
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Membuat Flowchart Studi Kasus Di Kertas'); // Deskripsi tugas
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul Tugas
                    writeln('Tidak ada tugas / Belum ada tugas'); // Informasi jika tidak ada tugas
                end;
        end;
        
    4: begin
        writeln('Pertemuan 5 : Variabel, constanta dan Tipe data (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Variabel'); // Sub-materi 1
        writeln('- Constanta'); // Sub-materi 2
        writeln('- Tipe Data'); // Sub-materi 3
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('>== Coding ==<'); // Info latihan
                writeln('- Program runtutan'); // Contoh latihan
                writeln('- Operasi Pertambahan'); // Contoh latihan
            end
                else // Jika pilihan yang dipilih bukan 1
                    begin
                        writeln('Tugas :'); // Judul aktivitas
                        writeln; // Baris kosong
                        writeln('- Tugas Teori'); // Judul tugas
                        writeln('Membuat pseudocode dan flowchart dari tugas no. 2'); // Deskripsi tugas
                        writeln; // Baris kosong
                        writeln('>=================================<'); // Pemisah
                        writeln; // Baris kosong
                        writeln('- Tugas Praktek'); // Judul Tugas
                        writeln('>== Coding ==<'); // Info tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln ('KTP ');
                        Write ('Masukan Nama: ');
                        readln(nama);
                        Write ('Masukan TTL: ');
                        readln(ttl);
                        Write ('Masukan Alamat: ');
                        readln(alamat);
                        Write ('Masukan Status: ');
                        readln(status);
                        Write ('Masukan Jenis Kelamin: ');
                        readln(jenis_kelamin);
                        Write ('Masukan Agama: ');
                        readln(agama);
                        writeln('----------------------------');
                        {Semua Data}
                        writeln('KTP');
                        writeln('Nama : ', nama);
                        writeln('Tempat Tanggal Lahir : ', ttl);
                        writeln('Alamat : ', alamat);
                        writeln('Status : ', status);
                        writeln('Jenis Kelamin : ', jenis_kelamin);
                        writeln('Agama : ', Agama);
                    writeln; // Baris kosong
                    writeln('No. 2'); // Tugas No 2
                        writeln('==INPUT NILAI==');
                        {nilai1}
                        write ('masukan nilai pertama kamu: ');
                        readln(nilai_1);
                        {nilai2}
                        write ('masukan nilai kedua kamu: ');
                        readln(nilai_2);
                        {nilai3}
                        write ('masukan nilai ketiga kamu untuk pangkat dan kuadrat: ');
                        readln(nilai_4);
                        {eksekusi}
                        writeln ('==EKSEKUSI NILAI==');
                        writeln ('nilai 1 = ', nilai_1);
                        writeln ('nilai 2 = ', nilai_2);
                        writeln ('nilai 3 = ', nilai_4);
                     
                        {hasil}
                        writeln ('==HASIL==');
                        hasil_1 := nilai_1 + nilai_2;
                        hasil_2 := nilai_1 - nilai_2;
                        hasil_3 := nilai_1 * nilai_2;
                        hasil_4 := nilai_1 / nilai_2;
                        nilai_3 := SQR(nilai_4); 
                        nilai_5 := SQRT(nilai_4);
                        writeln ('Hasilnya pertambahannya adalah : ', hasil_1, '!');
                        writeln ('Hasilnya pengurangannya adalah : ', hasil_2, '!');
                        writeln ('Hasilnya perkaliannya adalah : ', hasil_3, '!');
                        writeln ('Hasilnya pembagiannya adalah : ', hasil_4:2:2, '!');
                        writeln ('Hasil nilai pangkatnya ', nilai_4,' adalah : ', nilai_3, '!');
                        writeln ('Hasil akar kuadratnya ', nilai_4,' adalah : ', nilai_5:3:2, '!');
                end;
        end;
        
    5: begin
        writeln('Pertemuan 6 : Aturan Leksikal, Comment, Definisi dan Condition (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Aturan Leksikal'); // Sub-materi 1
        writeln('- Operator'); // Sub-materi 2
        writeln('- Expression'); // Sub-materi 3
        writeln('- Statement'); // Sub-materi 4
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('>== Coding ==<');
                writeln('- Menghitung Luas Lingkaran'); // Latihan 1
                writeln('- Menghitung Volume Kubus'); // Latihan 2
            end
                else // Jika pilihan yang dipilih bukan 1
                    begin
                        writeln('Tugas :'); // Judul aktivitas
                        writeln; // Baris kosong
                        writeln('- Tugas Teori'); // Judul tugas
                        writeln('Membuat pseudocode dan flowchart semua tugas pertemuan 6'); // Deskripsi tugas
                        writeln; // Baris kosong
                        writeln('>=================================<'); // Pemisah
                        writeln; // Baris kosong
                        writeln('- Tugas Praktek'); // Judul tugas
                        writeln('>== Coding ==<'); // Info tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln ('Menghitung Luas Lingkaran');
                        writeln ('------------------------');
                        writeln ('Diketahui phi : 3.14');
                        write ('Masukan Jari-jari : ');
                        readln(r);
                        luas:=phi*r*r;
                        writeln('Luas : ',luas:4:2);
                        writeln('--------SELESAI--------');
                    writeln;
                    writeln('No. 2'); // Tugas No 2
                        writeln('Menghitung Luas Segitiga');
                        writeln('------------------------');
                        write('Masukkan alas segitiga: ');
                        readln(alas);
                        write('Masukkan tinggi segitiga: ');
                        readln(tinggi);
                        luas := (alas * tinggi) / 2;
                        writeln('Luas segitiga = ',luas:6:2);
                        writeln('------SELESAI------');
                        writeln;
                        writeln('No. 3'); // Tugas No 3
                        writeln ('----------------------');
                        writeln ('Menghitung Volume Kubus');
                        write ('Masukkan nilai sisi: ');
                        readln (s);
                        volume:=s*s*s;
                        writeln ('Volume Kubus Adalah: ', volume:0:2);
                        writeln ('--------SELESAI-------');
                end;
        end;
        
    6: begin
        writeln('QUIZ 1 (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('Tidak Ada'); // Quiz tidak memiliki materi
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('Tidak ada latihan / Belum ada latihan'); // Informasi bahwa belum ada latihan untuk Quiz 1
            end
                else // Jika pilihan yang dipilih bukan 1
                    begin
                        writeln('Tugas :'); // Judul aktivitas
                        writeln; // Baris kosong
                        writeln('- Tugas Teori'); // Judul tugas
                        writeln('Membuat pseudocode dan flowchart semua QUIZ 1'); // Deskripsi tugas
                        writeln; // Baris kosong
                        writeln('>=================================<'); // Pemisah
                        writeln; // Baris kosong
                        writeln('- Tugas Praktek'); // Judul tugas
                        writeln('>== Coding ==<'); // Info tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln('Menghitung Gaji Andi');
                        writeln('================');
                        writeln('Nama: Andi');
                        writeln('================');
                        writeln('Total gaji Andi');
                        {Menghitung Total Hasil Lembur/jam}
                        write('Masukan total waktu / jam: '); {memasukan nilai waktu yang user mau}
                        readln(jam); {mengeluarkan inputan jam}
                        total_lembur:= jam*(lembur-cut); {rumus total lembur}
                        writeln('Total lembur/jam: ', total_lembur:4:0);
                        {Menghitung hasil gaji/jam}
                        total_gaji:= gaji+total_lembur; {rumus total gaji}
                        writeln('Total gaji: ', total_gaji:3:0);
                    writeln;
                    writeln('No. 2'); // Tugas No 2
                        writeln('======================================');
                        writeln;
                        writeln('SELAMAT DATANG DI KONVERSI UANG MILIK JORDY');
                        writeln;
                        writeln('======================================');
                        writeln('Konversi Rupiah ke US Dollar dan Euro');
                        read;
                        writeln;
                        {memasukan jumlah rupiah yang ingin di konversi}
                        write('Masukkan jumlah rupiah : '); {memasukkan jumlah rupiah yang user mau}
                        readln(IDR);
                        {hasil konversi dari rupiah ke US Dollar dan Euro}
                        USD:=IDR/14692; {rumus untuk total dollar}
                        writeln;
                        writeln('Jumlah Uang Anda Dalam US Dollar Adalah : ', USD:6:2); {hasil dollar}
                        read;
                        EUR:=IDR/15602; {rumus untuk total euro}
                        writeln('Jumlah Uang Anda Dalam EURO Adalah : ', EUR:6:2); {hasil euro}
                        read;
                        writeln;
                        writeln('===== SELESAI =====');
                end;
        end;
        
    7: begin
        writeln('UTS (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('Tidak Ada'); // UTS tidak memiliki materi
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
            begin // Jika pilihan 1 yang dipilih
                writeln('Latihan :'); // Judul aktivitas
                writeln('Tidak ada latihan / Belum ada latihan'); // Informasi bahwa belum ada latihan untuk UTS
            end
                else // Jika pilihan yang dipilih bukan 1
                    begin
                        writeln('Tugas :'); // Judul aktivitas
                        writeln; // Baris kosong
                        writeln('- Tugas Teori'); // Judul tugas
                        writeln('Membuat pseudocode dan flowchart semua UTS dan menjawab soal - soal dengan coding'); // Deskripsi tugas
                        writeln; // Baris kosong
                        writeln('>=================================<'); // Pemisah
                        writeln; // Baris kosong
                        writeln('- Tugas Praktek'); // Judul tugas
                        writeln('>== Coding ==<'); // Info tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln('Keuntungan Deni Dalam Sehari');
                        writeln;
                        write('Nama: ');
                        readln(nama);
                        writeln('====================');
                        writeln;
                        writeln('Total Keuntungan');
                        {Menghitung Total Hasil hargaJual}
                        write('Masukan Harga Jual: ');
                        readln(hargaJual); {mengeluarkan inputan harga jual}
                        untung:= hargaJual*terjual-modal; {rumus total harga jual}
                        writeln('Total keuntungan: ', untung:4:0);
                        writeln;
                        writeln('--SELESAI--');
                    writeln;
                    writeln('No. 2'); // Tugas No 2
                        writeln('Menghitung Hutang Andi');
                        writeln('================');
                        writeln('Nama: Andi');
                        writeln('================');
                        writeln;
                        writeln('Gaji Andi: ', gaji2);
                        writeln('Lemburan per jam: ', lembur2);
                        writeln('Hutang dia: ', hutang2);
                        writeln;
                        writeln('-----------------');
                        writeln('Total semua gaji Andi');
                        writeln('-----------------');
                        {Menghitung Total Hasil Lembur/jam}
                        write('Masukan total waktu / jam perbulan: ');
                        readln(jam);
                        totalLembur:= jam*lembur2;
                        writeln('Total lembur/jam perbulan: Rp. ', totalLembur:4:0);
                        {Menghitung hasil gaji/jam}
                        totalGaji:= gaji2+totalLembur; {rumus total gaji}
                        writeln('Total gaji: Rp. ', totalGaji:3:0);
                        
                        {menghitung pembayaran gaji}
                        pembayaran:=(totalGaji/30);
                        writeln('Pembayaran: Rp. ', pembayaran:4:0);
                        writeln('-----------------');
                        {menghitung cicilan perbulan}
                        perbulan:=hutang2/pembayaran;
                        writeln('Andi dapat membayar hutangnya sampai hari ke ', perbulan:1:0);
                        writeln('--SELESAI--');
                end;
        end;
    8: begin
        writeln('Pertemuan 8 : Branching (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
            writeln('Materi :'); // Informasi tentang materi yang diajarkan
            writeln('- Algoritma Percabangan (Branching)'); // materi yang diajarkan adalah branching
            writeln; // Baris kosong
            writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
            writeln('1. Latihan'); // Pilihan aktivitas 1
            writeln('2. Tugas'); // Pilihan aktivitas 2
            write('Pilih 1 atau 2 : '); // Meminta input
            readln(pilih); // Membaca input yang diberikan
            if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :'); // Judul aktivitas
                    writeln('>== Coding ==<'); // Informasi bahwa latihan menggunakan coding
                    writeln('- Struktur If Then'); // Latihan pertama
                    writeln('- Struktur If Then Else'); // Latihan kedua
                    writeln('- Struktur If Banyak Kondisi'); // Latihan ketiga
                    writeln('- Struktur If Nested'); // Latihan keempat
                    writeln('- Operator Logika'); // Latihan kelima
                    writeln('- Menyalin codingan'); // Latihan keenam
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Mencari jawaban perbedaan if-else dan switch-case, membuat flowchart, dan mencari konsep and-or-not-xor serta mencarikan kasus nya'); // Deskripsi tugas
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('>== Coding ==<');  // Info tugas
                    writeln('No. 1 (if-then 1 kondisi)'); // Tugas No 1
                        write('Masukkan angka: ');
                        readln(angka);
                        if (angka > 5) then
                        begin
                        writeln('Variabel "angka" lebih besar dari 5');
                        end;
                        writeln('--SELESAI--');
                    writeln; // Baris kosong
                    writeln('No. 2 / cara 1 (if-else 2 kondisi)'); // Tugas No 2
                        write('Masukkan angka: ');
                        readln(angka);
                        if (angka > 5) then
                        begin
                        writeln('Variabel "angka" lebih besar dari 5');
                        end
                        else
                        begin
                        writeln('Variabel "angka" lebih kecil dari 5');
                        end;
                    writeln; // Baris kosong
                    writeln('No. 3 / cara 2'); // Tugas No 3
                        write('Masukkan angka 1: ');
                        readln(angka1);
                        write('Masukkan angka 2: ');
                        readln(angka2);
                        if (angka1 > angka2) then
                        begin
                        writeln(angka1, ' variabel "angka" lebih besar dari ', angka2);
                        end
                        else
                        begin
                        writeln(angka1, ' variabel "angka" lebih kecil dari ', angka2);
                        end;
                        writeln('--SELESAI--');
                    writeln;
                    writeln('No. 4'); // Tugas No 4
                        write('Masukan Angka Pertama: ');
                        readln(nilai1);
                        write('Masukan Angka Kedua: ');
                        readln(nilai2);
                        writeln; // Baris kosong
                        c := nilai1 = nilai2; {true}
                        d := nilai1 > nilai2; {false}
                        writeln('a (nilai1 = nilai2): ', c);
                        writeln('b (nilai1 = nilai2): ', d);
                        writeln;
                        hasil := c and d;
                        writeln('a and b: ', hasil);
                        hasil := c or d;
                        writeln('a or b: ', hasil);
                        hasil := c xor d;
                        writeln('a xor b: ', hasil);
                        hasil := not c;
                        writeln('not a: ', hasil);
                        hasil := not d;
                        writeln('not b: ', hasil);
                        writeln('--SELESAI--');
                    writeln; // Baris kosong
                    writeln('No. 5'); // Tugas No 2
                        write('Masukan nilai: ');
                        readln(myNumber);
                        if (myNumber < 0) then
                        begin
                        if (myNumber mod 2 = 0) then
                        begin
                        writeln('Bilangan genap negatif');
                        end
                        else
                        begin
                        writeln('Bilangan ganjil negatif');
                        end;
                        end
                        else
                        begin
                        if (myNumber mod 2 = 0) then
                        begin
                        writeln('Bilangan genap positif');
                        end
                        else
                        begin
                        writeln('Bilangan ganjil positif');
                        end;
                        end;
                        writeln('--SELESAI--');
                    writeln; // Baris kosong
                end;
        end;
        
    9: begin
        writeln('Pertemuan 9 : Algoritma Perulangan (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Perulangan'); // materi yang diajarkan adalah perulangan / loop
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :');
                    writeln('Menyalin codingan dengan mengetik kembali codingan dari semua pertemuan 9'); // Latihannya
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Menjelaskan perbedaan logic coding while, for, dan repeat until.'); // Deskripsi tugas 1
                    writeln('Dan membuat flowchart dari latihan & tugas dari pertemuan 9'); // Deskripsi tugas 2
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('>== Coding ==<'); // Informasi bahwa latihan menggunakan coding
                    writeln('No. 1 (For To)');
                        write('Mencetak Belajar Sebanyak: ');
                        read(isi);
                        for i := 1 to isi do
                        begin
                        writeln('Belajar');
                        end;
                        writeln('--SELESAI--');
                    writeln;
                    writeln('No. 2 (For Down)');
                        write('input: ');
                        read(g);
                        for i := g DownTo 1 do
                        write (i:3);
                        writeln('--SELESAI--');
                    writeln;
                    writeln;
                    writeln('No. 5 (While)');
                        i:= 1;
                        write('Mencetak Angka: ');
                        readln(g);
                        while i <= g do
                        begin
                        write(i,' ');
                        i:= i + 1;
                        end;
                        writeln('--SELESAI--');
                    writeln;
                    writeln;
                    writeln('No. 6 (Repeat Until)');
                        write('masukkan pengulangan: ');
                        readln(n);
                        i := 0;
                        repeat
                        begin
                        writeln('belajar repeat until');
                        i := i + 1;
                        end;
                        until i = n;
                        writeln('--SELESAI--');
                end;
        end;
        
    10: begin
        writeln('Pertemuan 10 : Array (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Array'); // materi yang diajarkan adalah array
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan 
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :');
                    writeln('- Menyalin kembali codingan hanya untuk latihan'); // Latihannya
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Tidak Ada'); // Deskripsi tugas tidak ada
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('>== Coding ==<'); // Informasi bahwa latihan menggunakan coding
                    writeln; // Baris kosong
                    writeln('-- Peringkat Nilai Siswa / Siswi --');
                    nilai[0,0] := 55;
                    nilai[0,1] := 65;
                    nilai[1,0] := 78;
                    nilai[1,1] := 85;
                    nilai[1,2] := 92;
                    begin {output nilai array}
                    writeln('Jika nilai siswa/siswi : ', nilai[0,0], ' (C-)');
                    writeln('Jika nilai siswa/siswi : ', nilai[0,1], ' (C)');
                    writeln('Jika nilai siswa/siswi : ', nilai[1,0], ' (B-)');
                    writeln('Jika nilai siswa/siswi : ', nilai[1,1], ' (B)');
                    writeln('Jika nilai siswa/siswi : ', nilai[1,2], ' (A)');
                    writeln('-- Selesai --');
                    end;
                end;
        end;
        
    11: begin
        writeln('QUIZ 2 (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('Tidak Ada'); // materi yang diajarkan adalah tidak ada
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan 
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :');
                    writeln('Tidak Ada'); // Latihannya
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Membuat flowchart dan pseudocode dari codingan QUIZ 2'); // Deskripsi tugas 
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln;
                        writeln('-- Menghitung Gaji Karyawan --');
                        writeln;
                        write('Masukkan nama karyawan: ');
                        readln(nama);
                        write('Masukkan jumlah jam kerja karyawan dalam seminggu: ');
                        readln(jam);
                        {rumus gaji normal}
                        if (jam >= 50) and (jam <= 60) then
                        begin
                        gajiNormal := 5000 * jam;
                        end
                        else if jam > 60 then
                        begin
                        gajiNormal := 5000 * 60;
                        lemburan := (jam - 60) * 7500;
                        end
                        else if jam < 50 then
                        begin
                        gajiNormal := 5000 * jam;
                        potongan := (50 - jam) * 2500;
                        end;
                        {rumus total gaji}
                        gajiTotal := gajiNormal + lemburan - potongan;
                        {hasil}
                        writeln;
                        writeln('(Gaji Karyawan)');
                        writeln('----------------');
                        writeln('Nama: ', nama);
                        writeln('Gaji normal: ', gajiNormal:1:0);
                        writeln('Lembur: ', lemburan:1:0);
                        writeln('Potongan: ', potongan:1:0);
                        writeln('Total gaji: ', gajiTotal:1:0);
                        writeln;
                        writeln('-- Selesai --');
                    writeln; // Baris kosong
                    writeln('No. 2'); // Tugas No 2
                        writeln;
                        writeln('-- Menghitung Angsuran Hutang --');
                        writeln;
                        write('Masukkan nama: ');
                        readln(nama);
                        write('Masukkan jumlah pinjaman: ');
                        readln(pinjaman);
                        write('Masukkan bunga (dalam persen): ');
                        readln(bunga);
                        write('Masukkan lama angsuran (dalam bulan): ');
                        readln(angsuran);
                        { rumus total pinjaman }
                        totalPinjaman := pinjaman + (pinjaman * bunga / 100);
                        { rumus angsuran per bulan }
                        angsuranPerbulan := totalPinjaman / angsuran;
                        { menampilkan daftar pembayaran }
                        writeln; // Baris kosong
                        writeln('Hasil Angsuran `', nama, '` Perbulan');
                        writeln('----------------------------------');
                        for i := 1 to angsuran do
                        begin
                        writeln('Angsuran bulan ke-', i, ': Rp', angsuranPerbulan:0:2, ' Sisa hutang : Rp',
                        totalPinjaman - (angsuranPerbulan * i):0:2);
                        end;
                        writeln; // Baris kosong
                        writeln('-- Selesai --');
                    writeln;
                    writeln('No. 3'); // Tugas No 3
                        writeln; // Baris kosong
                        writeln('-- Menghitung Berat Badan Seseorang --');
                        writeln; // Baris kosong
                        write('Masukkan berat badan (kg): ');
                        readln(beratBadan);
                        write('Masukkan tinggi badan (m): ');
                        readln(tinggiBadan);
                        
                        { rumus dari imt }
                        imt := beratBadan / (tinggiBadan * tinggiBadan);
                        { Tampilkan hasil }
                        writeln('Indeks Massa Tubuh (IMT) Anda: ', imt:0:2);
                        { Menentukan kriteria }
                        if imt <= 18.5 then
                        writeln('Kriteria: Kurus')
                        else if (imt > 18.5) and (imt <= 25) then
                        writeln('Kriteria: Normal')
                        else if (imt > 25) and (imt <= 30) then
                        writeln('Kriteria: Gemuk')
                        else
                        writeln('Kriteria: Kegemukan (Obesitas)');
                        writeln; // Baris kosong
                        writeln('-- Selesai --');
                    writeln;
                    writeln('No. 4'); // Tugas No 4
                        writeln; // Baris kosong
                        writeln('-- Mengeluarkan data buah - buahan dan hewan --');
                        writeln; // Baris kosong
                        write('Masukkan nomor: ');
                        readln(nomor);
                        if (nomor >= 1) and (nomor <= 5) then
                        begin
                        writeln(nomor, '. ',buah[nomor]);
                        writeln(nomor, '. ',hewan[nomor]);
                        end
                        else
                        begin
                        writeln('Data tidak ada');
                        end;
                        writeln; // Baris kosong
                        writeln('-- Selesai --');
                end;
        end;
        
    12: begin
        writeln('Pertemuan 12 : Procedure (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Procedure'); // materi yang diajarkan adalah procedure
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :');
                    writeln('Menyalin Codingan yang sudah tertera di materi Pertemuan 12'); // Latihannya
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Tidak Ada'); // Deskripsi tugas tidak ada
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('No. 1 dari quiz'); // Tugas No 1
                        writeln; // Baris kosong
                        writeln('-- Menghitung Gaji Karyawan --');
                        writeln; // Baris kosong
                        write('Masukkan nama karyawan: ');
                        readln(nama);
                        write('Masukkan jumlah jam kerja karyawan dalam seminggu: ');
                        readln(jam);
                        hitungGaji(nama, jam2, gajiNormal, lemburan, potongan, gajiTotal);
                        {hasil}
                        writeln;
                        writeln('(Gaji Karyawan)');
                        writeln('----------------');
                        writeln('Nama: ', nama);
                        writeln('Gaji normal: ', gajiNormal:1:0);
                        writeln('Lembur: ', lemburan:1:0);
                        writeln('Potongan: ', potongan:1:0);
                        writeln('Total gaji: ', gajiTotal:1:0);
                        writeln;
                        writeln('-- Selesai --');
                    writeln; // Baris kosong
                    writeln; // Baris kosong
                    writeln('No. 2 dari quiz'); // Tugas No 2
                        writeln; // Baris kosong
                        writeln('-- Menghitung Angsuran Hutang --');
                        writeln; // Baris kosong
                        write('Masukkan nama: ');
                        readln(nama);
                        write('Masukkan jumlah pinjaman: ');
                        readln(pinjaman);
                        write('Masukkan bunga (dalam persen): ');
                        readln(bunga);
                        write('Masukkan lama angsuran (dalam bulan): ');
                        readln(angsuran);
                        hitungAngsuran(pinjaman, bunga, angsuran, totalPinjaman, angsuranPerbulan);
                        { menampilkan daftar pembayaran }
                        writeln;
                        writeln('Hasil Angsuran `', nama, '` Perbulan');
                        writeln('----------------------------------');
                        for i := 1 to angsuran do
                        begin
                        writeln('Angsuran bulan ke-', i, ': Rp', angsuranPerbulan:1:0, ' Sisa hutang : Rp',
                        totalPinjaman - (angsuranPerbulan * i):1:0);
                        end;
                        writeln;
                        writeln('-- Selesai --');
                    writeln;
                    writeln;
                    writeln('No. 3 dari quiz'); // Tugas No 3
                        writeln;
                        writeln('-- Menghitung Berat Badan Seseorang --');
                        writeln;
                        write('Masukkan berat badan (kg): ');
                        readln(beratBadan);
                        write('Masukkan tinggi badan (m): ');
                        readln(tinggiBadan);
                        hitungIMT(beratBadan, tinggiBadan, imt);
                        { Tampilkan hasil }
                        writeln('Indeks Massa Tubuh (IMT) Anda: ', imt:0:2);
                        kriteriaIMT(imt);
                        writeln;
                        writeln('-- Selesai --');
                    writeln;
                    writeln;
                    writeln('No. 4 dari quiz'); // Tugas No 4
                        writeln;
                        writeln('-- Mengeluarkan data buah - buahan dan hewan --');
                        writeln;
                        write('Masukkan nomor: ');
                        readln(nomor);
                        tampilData(nomor);
                        writeln;
                        writeln('-- Selesai --');
                end;
        end;
        
    13: begin
        writeln('Pertemuan 13 : Function (Teori-Praktek) / Algoritma dan Pemrograman 1'); // Judul pilihan menu
        writeln('Materi :'); // Informasi tentang materi yang diajarkan
        writeln('- Function'); // materi yang diajarkan adalah procedure
        writeln; // Baris kosong
        writeln('>== SELECT ==<'); // Pilihan aktivitas setelah materi diberikan
        writeln('1. Latihan'); // Pilihan aktivitas 1
        writeln('2. Tugas'); // Pilihan aktivitas 2
        write('Pilih 1 atau 2 : '); // Meminta input
        readln(pilih); // Membaca input yang diberikan
        if (pilih = 1) then
                begin // Jika pilihan 1 yang dipilih
                    writeln('Latihan :');
                    writeln('Menyalin codingan di materi pertemuan 13'); // Latihannya
                end
            else
                begin
                    writeln('Tugas :'); // Judul aktivitas
                    writeln; // Baris kosong
                    writeln('- Tugas Teori'); // Judul tugas
                    writeln('Tidak Ada'); // 
                    writeln; // Baris kosong
                    writeln('>=================================<'); // Pemisah
                    writeln; // Baris kosong
                    writeln('- Tugas Praktek'); // Judul tugas
                    writeln('No. 1'); // Tugas No 1
                        writeln('Silahkan masukan Angka : ');
                        write('Nilai X : ');
                        readln(x);
                        write('Nilai Y : ');
                        readln(y);
                        writeln;
                        write(x, ' * ', y, ' = ', HitungPerkalian(x, y));
                    writeln;
                    writeln;
                    writeln('No. 2'); // Tugas No 2
                        write('Masukan bilangan : ');
                        readln(bil);
                        if genap(bil) then
                        begin
                        writeln(bil, ' adalah bilangan genap');
                        end
                        else
                        begin
                        writeln(bil, ' adalah bilangan ganjil');
                        end;
                end;
        end;
        
    14: begin
        writeln('>=== TERIMA KASIH SUDAH MELIHAT TUGAS UAS SAYA ==<');
        writeln; // Baris kosong
        writeln(' +--------------------------+');
        writeln('        |HAPPY CODING|');
        writeln(' +--------------------------+');
        end;
    end;
    writeln('-----------------------------');
    writeln('Tekan ENTER untuk melanjutkan');
    readln;
    until (pilih=15) // Sampai pemilihan 15 berhenti
end.