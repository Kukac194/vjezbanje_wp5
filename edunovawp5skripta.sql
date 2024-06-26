﻿/*
1. Frizerski salon
U frizerskom salonu radi više djelatnica. Jedna djelatnica na dan radi s više korisnika.
Korisnik tijekom jednog posjeta koristi jednu usluga.
2. Salon za uljepšavanje
U salonu za uljepšavanje radi više djelatnica. Jedna djelatnica na dan radi s više
korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.
3. Udruga za zaštitu životinja
U udruzu radi više osoba. Jedna osoba se brine za jednog ili više štićenika udruge.
Štićenici udruge su životinje. Svaki štićenik se nalazi u jednom prostoru.
4. Dječji vrtić
U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece
i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.
5. Muzej
U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen
za jednu izložbu. Svaka izložba ima jednog sponzora.
6. Samostan
U samostanu se nalaze svećenici. Svaki svećenik je zadužen za više poslova. Jedan
posao u isto vrijeme može obavljati više svećenika. Svaki svećenik ima samo jednog
nadređenog svećenika.
7. Taksi služba
Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač
može prevesti više putnika. Jedan putnik se naravno može tijekom vremena imati više
vožnji.
8. Postolar
Postolar popravlja obuću. Jedan korisnik može postolaru donijeti više komada obuće
na popravak dok jedan komad obuće može biti više puta na popravku. Postolar ima
šegrta koji sudjeluje u određenim popravcima obuće.
9. Urar Silvija

Urar popravlja satove. Jedan korisnik može uraru donijeti više satova na popravak dok
jedan sat može biti više puta na popravku. Urar ima šegrta koji sudjeluje u određenim
popravcima satova.
10. Doktorska ordinacija
Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta
doktoru pomažu medicinske sestre.
11. Fakultet
Studenti polažu kolegije kroz rokove. Student može rok prijaviti više puta a na jedan
rok može izaći više studenata.
12. Osnovna škola
U osnovnoj školi postoje dječje radionice. Na jednoj radionici sudjeluje više djece.
Jedno dijete može sudjelovati na više radionica. Radionicu vodi jedna učiteljica.
13. Srednja škola
Jedna srednja škola ima više razreda. Jedan razred pohađa više učenika. U jednom
razredu predaje više profesora. Jedan profesor može predavati u više razreda.
14. Trgovački centar
U jednom trgovačkom centru postoji više trgovina. U svakoj trgovini radi više osoba.
Jedna osoba može raditi u više trgovina. Svaka trgovina ima jednog šefa koji je ujedno
i osoba.
15. Restoran
Restoran ima više kategorija na jelovniku. Jedna kategorija ima više jela. Uz svako jelo
može se ponuditi više pića. Jedno piće se može ponuditi uz više jela.
16. Obiteljsko poljoprivredno gospodarstvo
OPG proizvodi proizvode od sirovina koje sami uzgoje. Jedan proizvod se može
sastojati od više sirovina. Jedna sirovina se može nalaziti u više proizvoda. Jedan
djelatnik OPG-a je odgovoran za jedan ili više proizvoda.
17. Vodoinstalater
Vodoinstalater popravlja kvarove na vodovodnim instalacijama. Tijekom jednog
popravka može popraviti više kvarova a jedan kvar se može popravljati više puta. Na
određenim popravcima mu pomaže njegov šegrt.
18. Odvjetnik
Jedan odvjetnik brani više klijenata. Jednog klijenta može braniti više puta. U
obranama mu pomažu suradnici. Na jednoj obrani može biti više suradnika a jedan
suradnik može sudjelovati na više obrana.
19. Nakladnik
Nakladnik izdaje djela. Jedan nakladnik može izdati više djela dok jedno djelo može
izdati više nakladnika. Nakladnik se nalazi u jednom mjestu dok jedno mjesto može
imati više nakladnika.
20. Kulturno umjetničko društvo

KUD nastupa u zemlji i inozemstvu. Na jedan nastup ide više članova KUD-a dok
jedan član može nastupati na više nastupa. Svaki nastup se odvija u jednom mjestu.
21. Dječja igraonica
U dječjoj igraonici djeca se igraju u skupinama. Jedno dijete se može igrati u više
skupina a jedna skupina se sastoji od više djece. Svaku skupinu vodi jedna teta.

22. Klub čitatelja
Klub čitatelja se sastoji od članova koji čitaju knjige. Jedan čitatelj može čitati više
knjiga, dok jednu knjigu kroz duže vremensko razdoblje može čitati više čitatelja.
Svaka knjiga ima jednog i samo jednog vlasnika dok jedan vlasnik može imati više
knjiga. Vlasnik je ujedno i čitatelj.
*/

/*
1. Frizerski salon
U frizerskom salonu radi više djelatnica. Jedna djelatnica na dan radi s više korisnika.
Korisnik tijekom jednog posjeta koristi jednu usluga.
*/

CREATE DATABASE Frizerski_salon;
USE Frizerski_salon;

CREATE TABLE IF NOT EXISTS `Djelatnica`(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Prezime VARCHAR(30) NOT NULL,
    Ime VARCHAR(30) NOT NULL,
    Broj_mobitela CHAR(13)
);

/*Ovo je 1:M relacija*/
CREATE TABLE IF NOT EXISTS `Korisnik` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Prezime VARCHAR(30) NOT NULL,
    Ime VARCHAR(30) NOT NULL,
    Email VARCHAR(60) NOT NULL,
    Broj_mobitela CHAR(11) NOT NULL,
    Djelatnica INT,
    FOREIGN KEY (Djelatnica) REFERENCES `Djelatnica`(Id) ON DELETE CASCADE ON UPDATE CASCADE
);


/*Ovo je 1:1 relacija*/
CREATE TABLE IF NOT EXISTS `Usluga`(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(60),
    Korisnik INT,
    FOREIGN KEY (Korisnik) REFERENCES `Korisnik`(Id) ON DELETE CASCADE ON UPDATE CASCADE
);


/*2. Salon za uljepšavanje
U salonu za uljepšavanje radi više djelatnica. Jedna djelatnica na dan radi s više
korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.*/

CREATE DATABASE Salon;
USE Salon;

CREATE TABLE IF NOT EXISTS `Djelatnica`(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Prezime VARCHAR(30) NOT NULL,
    Ime VARCHAR(30) NOT NULL,
    Broj_mobitela CHAR(13)
);

/*Ovo je 1:M relacija*/
CREATE TABLE IF NOT EXISTS `Korisnik` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Prezime VARCHAR(30) NOT NULL,
    Ime VARCHAR(30) NOT NULL,
    Email VARCHAR(60) NOT NULL,
    Broj_mobitela CHAR(11) NOT NULL,
    Djelatnica INT,
    FOREIGN KEY (Djelatnica) REFERENCES `Djelatnica`(Id) ON DELETE CASCADE ON UPDATE CASCADE
);


/*Ovo je 1:1 relacija*/
CREATE TABLE IF NOT EXISTS `Usluga`(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(60),
    Korisnik INT,
    FOREIGN KEY (Korisnik) REFERENCES `Korisnik`(Id) ON DELETE CASCADE ON UPDATE CASCADE
);


/*3.Udruga za zaštitu životinja
U udruzu radi više osoba. Jedna osoba se brine za jednog ili više štićenika udruge.
Štićenici udruge su životinje. Svaki štićenik se nalazi u jednom prostoru.*/

CREATE DATABASE Udruga;
USE Udruga;

CREATE TABLE IF NOT EXISTS Osoba(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Ime VARCHAR(30),
    Prezime VARCHAR(30),
    Oib CHAR(11),
    Email VARCHAR(60),
    Broj_mobitela CHAR(11)
);

CREATE TABLE IF NOT EXISTS Sticenik_udruge(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Ime_zivotinje VARCHAR(30),
    Vrsta ENUM('Pas', 'Macka'),
    Osoba INT,
    FOREIGN KEY Osoba REFERENCES Osoba(Id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Prostor(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(30),
    Sticenik_udruge INT,
    FOREIGN KEY Sticenik_udruge REFERENCES Sticenik_udruge(id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*4. Dječji vrtić
U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece
i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.*/

CREATE DATABASE Vrtic;
USE Vrtic;

CREATE TABLE IF NOT EXISTS Odgojna_skupina(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Dijete(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Ime VARCHAR(30),
    Prezime VARCHAR(30),
);

CREATE TABLE IF NOT EXISTS Skupina_Dijete(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Odgojna_skupina INT,
    Dijete INT,
    FOREIGN KEY (Odgojna_skupina) REFERENCES Odgojna_skupina(Id) ON DELETE CASCADE ON UPDATE CASCADE;
    FOREIGN KEY (Dijete) REFERENCES Dijete(Id) ON DELETE CASCADE ON UPDATE CASCADE;
)

CREATE TABLE IF NOT EXISTS Odgajateljica(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Ime VARCHAR(30),
    Prezime VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Strucna_sprema(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naziv ENUM('SSS', 'VSS', 'VVS')
);