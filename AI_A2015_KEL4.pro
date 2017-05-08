domains
  biodata       = orang(Pasien,Alamat,Umur)
  Pasien,Alamat = string
  Umur          = integer
  kondisi       = cond*
  cond          = string
  
facts
  kelompok(kondisi)
  false(cond)
  
  
predicates
nondeterm data(Pasien,Alamat,Umur)
nondeterm go
nondeterm ulang
nondeterm ucapan
nondeterm balik4(char)
%================= variabel tiap inputan soal ===================
nondeterm pilihan(char)
nondeterm pil1(char)
nondeterm pil2(char)
nondeterm pil3(char)
nondeterm pil4(char)
nondeterm pil6(char)
nondeterm pil7(char)
nondeterm pil8(char)
nondeterm pil10(char)
nondeterm pil11(char)
nondeterm pil12(char)
nondeterm pil13(char)
nondeterm pil14(char)
nondeterm pil15(char)
nondeterm pil16(char)
nondeterm pil18(char)
nondeterm pil19(char)
nondeterm  pil20(char)
nondeterm pil21(char)
nondeterm pil22(char)
nondeterm pil23(char)
%================= gejala tiap jenis penyakit ===========
nondeterm gejala1
nondeterm gejala2
nondeterm gejala3
nondeterm gejala4
nondeterm gejala6
nondeterm gejala7
nondeterm gejala8
nondeterm gejala10
nondeterm gejala11
nondeterm gejala12
nondeterm gejala13
nondeterm gejala14
nondeterm gejala15
nondeterm gejala16
nondeterm gejala18
nondeterm gejala19
nondeterm gejala20
nondeterm gejala21
nondeterm gejala22
nondeterm gejala23
nondeterm inputan
nondeterm xxx

%================== hipotesis jenis penyakit ============

nondeterm hipotesis1
nondeterm hipotesis2
nondeterm hipotesis3
nondeterm hipotesis4
nondeterm lihat(kondisi)
nondeterm test
nondeterm vi(char)
nondeterm balik
id(char,char)

clauses
id(Y,Y):-!.			%mencegah backtracking
id(_,_):-fail.			%memaksa backstracking

 kelompok(["1.DWY PRASTYO	 1515015024","2.RIZKI AFRIANI	   1515015033","3.DESY MILA SANTI   1515015048"]).
 
 %mulai program
 test:-
 write("Created By : "),nl,
 write("KELOMPOK 4_A2015 : "),
 nl,
 kelompok(U),
 lihat(U),
 write("Tekan Apapun atau Enter"),
 readchar(J),vi(J).
 
 vi(J) :- id(J,'a'),go.
 vi(_) :- go.
 	
 go :-
 write(""),nl,
      write("\n\n==============================================================================="),nl,
      write("\t\tS I S T E M  D I A G N O S A  G I Z I  B U R U K  P A D A  A N A K       "),nl,
      nl,
      write("==============================================================================="),nl,
      write(""),nl,
      write("Masukan nama anak Anda       = "),nl,
      write("|| "),
      readln(Pasien),
      write(" "),nl,
      write("Masukan Alamat Anda          = "),nl,
      write("|| "),
      readln(Alamat),
      write(""),nl,
      write("Masukan umur anak Anda       = "),nl,
      write("|| "),
      readint(Umur),xxx,
      write("==============================================================================="),nl,
      write("\t\t\tWaktunya Mendiagnosa Keadaan Anak Anda"),
      data(Pasien,Alamat,Umur),
      write("\t\tHarap Menjawab Pertanyaan Dengan Benar dan Tepat "),nl,
      write("Are you ready? Gassss tekan (y/n) ?"),nl,
      readchar(A),pilihan(A).				%akan membaca karakter dari variabel A jika bernilai Y/y makan akan mengarahkan ke fact per2 jika selain itu akan berulang
      pilihan(A):-id(A,'Y'),gejala1.
      pilihan(A):-id(A,'y'),gejala1.  			  			
      pilihan(A):-id(A,'n'),go.
      pilihan(A):-id(A,'n'),go.  			  			
      pilihan(_):-
      balik.	
       
      lihat([]).			%menampilkan isi dari list
      lihat ([H|T]):-
      
      write(">>"),
      write(H),nl,
      lihat(T).
      
      data(Pasien,Alamat,Umur):-
      write("\nBiodata Pasien dibawah ini :"),nl,
      write("\nNama Pasien    = ",Pasien,"."),nl,
      write("\nAlamat Pasien  = ",Alamat,"."),nl,
      write("\nUmur Pasien    = ",Umur,".\n").
      
      
      ulang:-
      write("\nIngin Mendiagnosa Gizi Buruk Lagi (y/n) ? "),
      readchar(A),balik4(A).
    
      balik4(A):- id(A,'y'),go.
      balik4(A):-id(A,'Y'),go.
      balik4(A):-id(A,'n'),ucapan.
      balik4(A):-id(A,'N'),ucapan.
      balik4(_):-ulang. 
     
      gejala1:-
      nl,
      write("Apakah mengalami edema (pembengkakan),umumnya pada seluruh tubuh terutama pada punggung kaki ?"),nl,
      write("(y/n) | "),
      readchar(A), pil1(A).
      pil1(A):-id(A,'Y'),gejala2.
      pil1(A):-id(A,'y'),gejala2.
      pil1(A):-id(A,'N'),gejala3.
      pil1(A):-id(A,'n'),gejala3. 
      pil1(_):-inputan,gejala1.
      
      gejala2:-
      nl,
      write("Apakah pandangan mata menjadi sayu ?"),nl, 
      write("(y/n) | "),
      readchar(A), pil2(A).
      pil2(A):-id(A,'Y'),gejala3.
      pil2(A):-id(A,'y'),gejala3.
      pil2(A):-id(A,'N'),gejala4.
      pil2(A):-id(A,'n'),gejala4. 
      pil2(_):-inputan,gejala2.

      gejala3:-
      nl,
      write("Apakah mengalami rambut tipis kemerahan seperti warna rambut jagung dan mudah dicabut dan mudah rontok ?"),nl,
      write("(y/n) | "),
      readchar(A), pil3(A).
      pil3(A):-id(A,'Y'),gejala4.
      pil3(A):-id(A,'y'),gejala4.
      pil3(A):-id(A,'N'),gejala2.
      pil3(A):-id(A,'n'),gejala2. 
      pil3(_):-inputan,gejala3. 

      gejala4:-
      nl,
      write("Apakah mengalami perubahan status mental menjadi apatis dan rewel ?"),nl,
      write("(y/n) | "),
      readchar(A), pil4(A).
      pil4(A):-id(A,'Y'),gejala18.
      pil4(A):-id(A,'y'),gejala18.
      pil4(A):-id(A,'N'),gejala10.
      pil4(A):-id(A,'n'),gejala10. 
      pil4(_):-inputan,gejala4. 
       
      gejala6:-
      nl,
      write("Apakah mengalami otot mengecil (hipotrofi), lebih nyata bila diperiksa pada posisi duduk / berdiri ?"),nl,
      write("(y/n) | "),
      readchar(A), pil6(A).
      pil6(A):-id(A,'Y'),gejala7.
      pil6(A):-id(A,'y'),gejala7.
      pil6(A):-id(A,'N'),gejala8.
      pil6(A):-id(A,'n'),gejala8. 
      pil6(_):-inputan,gejala6. 
      
      gejala7:-
      nl,
      write("Apakah terdapat kelainan kulit berupa bercak merah muda dan kehitamanan lalu terkelupas ?"),nl,
      write("(y/n) | "),
      readchar(A), pil7(A).
      pil7(A):-id(A,'Y'),gejala8.
      pil7(A):-id(A,'y'),gejala8.
      pil7(A):-id(A,'N'),hipotesis3,
      ulang.
      pil7(A):-id(A,'n'),hipotesis3,
      ulang.
      pil7(_):-inputan,gejala7. 
      
      gejala8:-
      nl,
      write("Apakah sering mengalami anemia dan diare dan disertai penyakit infeksi pada umumnya akut ?"),nl,
      write("(y/n) | "),
      readchar(A), pil8(A).
      pil8(A):-id(A,'Y'),hipotesis3.
      pil8(A):-id(A,'y'),hipotesis3.
      pil8(A):-id(A,'N'),gejala7.
      pil8(A):-id(A,'n'),gejala7. 
      pil8(_):-inputan,gejala8. 
      
      
      gejala10:-
      nl,
      write("Badan nampak sangat kurus seolah - olah tulang hanya terbungkus kulit ?"),nl,
      write("(y/n) | "),
      readchar(A), pil10(A).
      pil10(A):-id(A,'Y'),gejala11.
      pil10(A):-id(A,'y'),gejala11.
      pil10(A):-id(A,'N'),gejala11.
      pil10(A):-id(A,'n'),gejala11. 
      pil10(_):-inputan,gejala10. 
      
      gejala11:-
      nl,
      write("Pada wajah terlihat seperti orang tua (menua) ?"),nl,
      write("(y/n) | "),
      readchar(A), pil11(A).
      pil11(A):-id(A,'Y'),gejala12.
      pil11(A):-id(A,'y'),gejala12.
      pil11(A):-id(A,'N'),gejala12.
      pil11(A):-id(A,'n'),gejala12. 
      pil11(_):-inputan,gejala11.       

      gejala12:-
      nl,
      write("Apakah kulit terlihat keriput ?"),nl,
      write("(y/n) | "),
      readchar(A), pil12(A).
      pil12(A):-id(A,'Y'),gejala13.
      pil12(A):-id(A,'y'),gejala13.
      pil12(A):-id(A,'N'),hipotesis1.
      pil12(A):-id(A,'n'),hipotesis1. 
      pil12(_):-inputan,gejala12.
      
      gejala13:-
      nl,
      write("Apakah jaringan lemak subkutis sangat sedikit sampai tidak ada atau pakai celana longgar ?"),nl,
      write("(y/n) | "),
      readchar(A), pil13(A).
      pil13(A):-id(A,'Y'),gejala14.
      pil13(A):-id(A,'y'),gejala14.
      pil13(A):-id(A,'N'),gejala16.
      pil13(A):-id(A,'n'),gejala16. 
      pil13(_):-inputan,gejala13.

      gejala14:-
      nl,
      write("Apakah mengalami kurang nafsu makan ?"),nl,
      write("(y/n) | "),
      readchar(A), pil14(A).
      pil14(A):-id(A,'Y'),gejala15.
      pil14(A):-id(A,'y'),gejala15.
      pil14(A):-id(A,'N'),gejala16.
      pil14(A):-id(A,'n'),gejala16. 
      pil14(_):-inputan,gejala14.   
      
      gejala15:-
      nl,
      write("Apakah perut terlihat cekung, iga gambang ?"),nl,
      write("(y/n) | "),
      readchar(A), pil15(A).
      pil15(A):-id(A,'Y'),gejala16.
      pil15(A):-id(A,'y'),gejala16.
      pil15(A):-id(A,'N'),hipotesis4.
      pil15(A):-id(A,'n'),hipotesis4. 
      pil15(_):-inputan,gejala15. 
      
      gejala16:-
      nl,
      write("Apakah sering mengalami diare kronik atau konstipasi / susah BAB ?"),nl,
      write("(y/n) | "),
      readchar(A), pil16(A).
      pil16(A):-id(A,'Y'),hipotesis2.
      pil16(A):-id(A,'y'),hipotesis2.
      pil16(A):-id(A,'N'),gejala15.
      pil16(A):-id(A,'n'),gejala15. 
      pil16(_):-inputan,gejala16.          
      
      gejala18:-
      nl,
      write("Apakah mengalami penurunan berat badan hingga 60% ?"),nl,
      write("(y/n) | "),
      readchar(A), pil18(A).
      pil18(A):-id(A,'Y'),gejala19.
      pil18(A):-id(A,'y'),gejala19.
      pil18(A):-id(A,'N'),gejala19.
      pil18(A):-id(A,'n'),gejala19. 
      pil18(_):-inputan,gejala18.      
      
      gejala19:-
      nl,
      write("Tampak Perut cekung dan iga gambang ?"),nl,
      write("(y/n) | "),
      readchar(A), pil19(A).
      pil19(A):-id(A,'Y'),gejala20.
      pil19(A):-id(A,'y'),gejala20.
      pil19(A):-id(A,'N'),gejala6.
      pil19(A):-id(A,'n'),gejala6. 
      pil19(_):-inputan,gejala19.     
      
      gejala20:-
      nl,
      write("Badan nampak sangat kurus seolah - olah tulang hanya terbungkus kulit ?"),nl,
      write("(y/n) | "),
      readchar(A), pil20(A).
      pil20(A):-id(A,'Y'),gejala23.
      pil20(A):-id(A,'y'),gejala23.
      pil20(A):-id(A,'N'),gejala22.
      pil20(A):-id(A,'n'),gejala22. 
      pil20(_):-inputan,gejala20.                                      
            
      gejala21:-
      nl,
      write("Mudah menangis / cengeng dan rewel ?"),nl,
      write("(y/n) | "),
      readchar(A), pil21(A).
      pil21(A):-id(A,'Y'),hipotesis4.
      pil21(A):-id(A,'y'),hipotesis4.
      pil21(A):-id(A,'N'),gejala23.
      pil21(A):-id(A,'n'),gejala23. 
      pil21(_):-inputan,gejala21.                
           
      gejala22:-
      nl,
      write("Apakah sering mengalami diare kronik atau konstipasi / susah BAB ?"),nl,
      write("(y/n) | "),
      readchar(A), pil22(A).
      pil22(A):-id(A,'Y'),gejala23.
      pil22(A):-id(A,'y'),gejala23.
      pil22(A):-id(A,'N'),gejala21.
      pil22(A):-id(A,'n'),gejala21. 
      pil22(_):-inputan,gejala22.    
      
      gejala23:-
      nl,
      write("Perubahan pada kulit menjadi keriput ?"),nl,
      write("(y/n) | "),
      readchar(A), pil23(A).
      pil23(A):-id(A,'Y'),gejala21.
      pil23(A):-id(A,'y'),gejala21.
      pil23(A):-id(A,'N'),gejala22.
      pil23(A):-id(A,'n'),gejala22. 
      pil23(_):-inputan,gejala23.   
      
      hipotesis1:-
      nl,
      write("==============================================================================="),nl,
      write("\t\tHasil Diagnosa Gizi Buruk Anak Anda dinyatakan dibawah ini :\n"),nl,
    
      %biodata(Nama,Alamat,Umur), 
      write("    ------====> SELAMAT !! ANAK ANDA TIDAK MENGALAMI GIZI BURUK. <====------\n"),nl,
      write("===============================================================================\n"),nl,
      ulang.

      hipotesis2:-
      nl,
      write("===============================================================================\n"),nl,
      write("\t\tHasil Diagnosa Gizi Buruk Anak Anda dinyatakan dibawah ini :"),nl,
    
      %biodata(Nama,Umur,Alamat), 
      write("    ------====> OH TIDAK. ANAK ANDA MENGALAMI GIZI BURUK TYPE MARASMUS <====------\n"),nl,
      write("    ------====> UNTUK TINDAKAN LEBIH LANJUT HUBUNGI DOKTER AHLI <====------\n"),nl,
      write("===============================================================================\n"),nl,
      ulang.      
      
      hipotesis3:-
      nl,
      write("==============================================================================="),nl,
      write("\t\tHasil Diagnosa Gizi Buruk Anak Anda dinyatakan dibawah ini :\n"),nl,
      
      %biodata(Nama,Umur,Alamat), 
      write(" ------====> OH TIDAK. ANAK ANDA MENGALAMI GIZI BURUK TYPE KWASHIORKOR <====------\n"),nl,
      write("    ------====> UNTUK TINDAKAN LEBIH LANJUT HUBUNGI DOKTER AHLI <====------\n"),nl,
      write("===============================================================================\n"),nl,
      ulang.     
           
      hipotesis4:-
      nl,
      write("==============================================================================="),nl,
      write("\t\tHasil Diagnosa Gizi Buruk Anak Anda dinyatakan dibawah ini :\n"),nl,
      
      %biodata(Nama,Umur,Alamat),     
      write("------====> OH TIDAK. ANAK ANDA MENGALAMI GIZI BURUK TYPE MARASMUS_KWASHIORKOR <====------\n"),nl,
      write("    ------====> UNTUK TINDAKAN LEBIH LANJUT HUBUNGI DOKTER AHLI <====------\n"),nl,
      write("===============================================================================\n"),nl,
      ulang.     
      
      balik:-
      write("==============================================================================="),nl,
      write("EITSSSSS, SILAHKAN JAWAB YANG BENAR\n"),nl,
      go.
      
      inputan:-
      write("==============================================================================="),nl,
      write("EITSSSSS, SILAHKAN JAWAB YANG BENAR\n").
      
      ucapan:-
      nl,
      write("\n==============================================================================="),nl,
      write("\n\t\tTERIMA KASIH, ANDA TELAH MENGGUNAKAN SISTEM KAMI\n"),
      write("\tTOLONG JAGA KESEHATAN ANDA DAN PERIKSALAH SETAHUN SEKALI\n"),
      write("==============================================================================="),nl.
	
	xxx:-
	write("hgggg"),test.      
      
goal
test.


