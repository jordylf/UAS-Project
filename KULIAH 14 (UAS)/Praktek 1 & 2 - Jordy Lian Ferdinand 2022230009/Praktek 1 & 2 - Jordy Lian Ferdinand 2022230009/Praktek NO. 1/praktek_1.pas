program soal_1_praktek; // Nama Program

const // Konstanta
    GAJI_PER_JAM = 5000;  // Konstanta gaji per jam
    LEMBUR_PER_JAM = 7500; // Konstanta lembur per jam
    POTONGAN_PER_JAM = 2500; // Konstanta potongan per jam
  
{-------------------}  

{ (BUKA) Procedure }

procedure hitungGaji(nama: string; jam: integer; var gajiNormal, lemburan, potongan, gajiTotal: real); // Procedure untuk hitungGaji
begin
  {Rumus Gaji NORMAL}
  if (jam >= 50) and (jam <= 60) then // Jika jam kerja lebih dari 50 dan kurang dari 60
  begin
    gajiNormal := GAJI_PER_JAM * jam; // Hitung gaji normal
  end
  {Rumus lEMBURAN}
  else if jam > 60 then // Jika jam kerja lebih dari 60
  begin
    gajiNormal := GAJI_PER_JAM * 60;
    lemburan := (jam - 60) * LEMBUR_PER_JAM; // Hitung lemburan
  end
  else
  {Rumus lEMBURAN}
  begin
    gajiNormal := GAJI_PER_JAM * jam;
    potongan := (50 - jam) * POTONGAN_PER_JAM; // Hitung potongan
  end;
  {Rumus Gaji TOTAL}
  gajiTotal := gajiNormal + lemburan - potongan; // Hitung gaji total
end;

procedure hitungBonus(jam: integer; var bonus: real); // Procedure untuk hitungBonus
begin
  if (jam >= 65) then // Jika jam kerja lebih dari 65
  begin
    bonus := (jam - 65) * LEMBUR_PER_JAM; // Hitung bonus
  end
  else
  begin
    bonus := 0;
  end;
end;

{ (TUTUP) Procedure }

{-------------------}

{ (BUKA) Function }

function hitungPajak(gaji: real): real; // Function untuk hitungPajak
    begin
      hitungPajak := gaji * 0.1; // Hitung pajak 10% dari gaji total
    end;

function hitungTunjangan(jam: integer): real; // Function untuk hitungTunjangan
    begin
      hitungTunjangan := (jam - 50) * LEMBUR_PER_JAM; // Hitung tunjangan
    end;

{ (TUTUP) Function }

{-------------------}

var
    nama: string; // Deklarasi nama dengan string
    jam: integer; // Deklarasi jam dengan integer
    gajiNormal, lemburan, potongan, gajiTotal, bonus, pajak, tunjangan: real; // Deklarasi real
    hariLibur: array[1..12] of integer; // Array baru untuk menyimpan jumlah hari libur per bulan
    gajis: array[1..12] of real; // Array gaji perbulan sampai setahun
    i, j: integer; // Deklarasi i, j dengan integer
begin
    writeln;
    writeln('::-- Menghitung Gaji Karyawan --::'); // Judul
    writeln;
    write('Masukkan nama karyawan: '); // Memasukan/input nama karyawan
    readln(nama);
    write('Masukkan jumlah jam kerja karyawan dalam seminggu: '); // Memasukan/input jam karyawan dalam seminggu
    readln(jam);
    hitungGaji(nama, jam, gajiNormal, lemburan, potongan, gajiTotal); // Pemanggilan prosedur hitungGaji
    hitungBonus(jam, bonus); // Pemanggilan prosedur hitungBonus
    pajak := hitungPajak(gajiTotal); // Pemanggilan function hitungPajak
    tunjangan := hitungTunjangan(jam); // Pemanggilan function hitungTunjangan
    for i := 1 to 12 do
    begin
        write('Masukkan jumlah hari libur pada bulan ke-', i, ': '); // Menginput jumlah libur perbulannya
        readln(hariLibur[i]); 
    end;
    for i := 1 to 12 do
        begin
            gajis[i] := gajiTotal * i; // Hitung gaji dari bulan ke-1 sampai bulan ke-12 (SETAHUN)
        end;
    j := 1;
    writeln;
    writeln('.:: Gaji dan Libur selama setahun ', nama, ' ::.');
    writeln('-------------------------------------------------');
    while (j <= 12) do
        begin
            writeln('Gaji Bulan ke-', j, ': ', gajis[j]:1:0); // Menampilkan gaji dari bulan ke-1 sampai bulan ke-12 (SETAHUN)
            writeln('Jumlah hari libur Bulan ke-', j, ': ', hariLibur[j]); // Menampilkan jumlah hari libur per bulan
            writeln;
            j := j + 1;
        end;
    if (jam < 50) then // Jika jam kerja kurang dari 50
        begin
            writeln;
            writeln('|| Gaji Karyawan ||');
            writeln('----------------');
            writeln('Nama: ', nama);
            writeln('Total gaji: ', gajiTotal:1:0);
            writeln('Potongan: ', potongan:1:0);
            writeln('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
            writeln('Maaf, karyawan belum memenuhi jam kerja minimum, dan mendapat potongan.');
            writeln;
        end
    else
        begin
            writeln;
            writeln('|| Gaji Karyawan ||');
            writeln('----------------');
            writeln('Nama: ', nama);
            writeln('Gaji normal: ', gajiNormal:1:0);
            writeln('Lembur: ', lemburan:1:0);
            writeln('Potongan: ', potongan:1:0);
            writeln('Bonus: ', bonus:1:0);
            writeln('Tunjangan: ', tunjangan:1:0);
            writeln('Pajak: ', pajak:1:0);
            writeln('Total gaji dalam seminggu: ', gajiTotal:1:0);
            writeln('Total gaji dalam setahun: ', gajis[i]:1:0);
            writeln;
        end;
    writeln('-- Selesai --');
    writeln;
end.