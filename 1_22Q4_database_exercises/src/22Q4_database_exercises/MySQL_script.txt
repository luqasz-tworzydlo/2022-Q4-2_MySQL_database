
# --------------------------------------------------
SELECT * FROM `pracownik`
# --------------------------------------------------

# 1.1 Wyświetlić zawartość wszystkich kolumn z tabeli pracownik.
# select*from pracownik
# SELECT * FROM pracownik
# SELECT imie, telefon FROM pracownik

# 1.2 Z tabeli pracownik wyświetlić same imiona pracowników.
# SELECT imie FROM pracownik

# 1.3 Wyświetlić zawartość kolumn imię, nazwisko i dział z tabeli pracownik.
# SELECT imie, nazwisko, dzial FROM pracownik

# --------------------------------------------------

# 2 Sortowanie wyników zapytań (ORDER BY)
# select imie, nazwisko, pensja from pracownik order by pensja DESC
# SELECT imie, nazwisko, pensja FROM pracownik ORDER BY pensja ASC

# 2.1 Wyświetlić zawartość kolumn imię, nazwisko i pensja z tabeli pracownik. Wynik posortuj malejąco względem pensji.
# SELECT imie, nazwisko, pensja FROM pracownik ORDER BY pensja DESC

# 2.2 Wyświetl zawartość kolumn nazwisko i imię z tabeli pracownik. Wynik posortuj rosnąco (leksykograficznie) względem nazwiska i imienia.
# select nazwisko, imie from pracownik order by nazwisko, imie ASC
# SELECT nazwisko, imie FROM pracownik ORDER BY nazwisko ASC, imie ASC

# 2.3 Wyświetlić zawartość kolumn nazwisko, dział, stanowisko z tabeli pracownik. Wynik posortuj rosnąco względem działu, a dla tych samych nazw działów malejąco względem stanowiska.
# SELECT nazwisko, dzial, stanowisko FROM pracownik ORDER BY dzial ASC, stanowisko DESC

# --------------------------------------------------

# 3.1 Wyświetlić niepowtarzające się wartości kolumny dział z tabeli pracownik.
# SELECT DISTINCT dzial FROM pracownik

# 3.2 Wyświetlić unikatowe wiersze zawierające wartości kolumn dział i stanowisko w tabeli pracownik.
# SELECT DISTINCT dzial, stanowisko FROM pracownik

# 3.3 Wyświetlić unikatowe wiersze zawierające wartości kolumn dział i stanowisko w tabeli pracownik. Wynik posortuj malejąco względem działu i stanowiska.
# SELECT DISTINCT dzial, stanowisko FROM pracownik ORDER BY dzial DESC, stanowisko DESC

# --------------------------------------------------

# 4 Selekcja wyników zapytań (WHERE)
# SELECT imie, nazwisko, stanowisko FROM pracownik WHERE imie='Jan'

# 4.1 Znajdź pracowników o imieniu Jan. Wyświetl ich imiona i nazwiska.
# SELECT imie, nazwisko FROM pracownik WHERE imie='Jan'

# 4.2 Wyświetlić imiona i nazwiska pracowników pracujących na stanowisku sprzedawca.
# SELECT imie, nazwisko FROM pracownik WHERE stanowisko='sprzedawca'

# 4.3 Wyświetlić imiona, nazwiska, pensje pracowników, którzy zarabiają powyżej 1500 zł. Wynik posortuj malejąco względem pensji.
# SELECT imie, nazwisko, pensja FROM pracownik WHERE pensja>='1500' ORDER by pensja DESC
# SELECT imie, nazwisko, pensja FROM pracownik WHERE pensja > '1500' ORDER by pensja DESC

# --------------------------------------------------

# 5 Warunki złożone (AND, OR, NOT)
# SELECT imie, nazwisko FROM pracownik WHERE dzial='obsługa klienta' AND stanowisko='sprzedawca'

# 5.1 Z tabeli pracownik wyświetlić imiona, nazwiska, działy, stanowiska tych pracowników, którzy pracują w dziale obsługi klienta na stanowisku sprzedawca.
# SELECT imie, nazwisko, dzial, stanowisko FROM pracownik WHERE dzial='obsługa klienta' AND stanowisko='sprzedawca'\

# 5.2 Znaleźć pracowników pracujących w dziale technicznym na stanowisku kierownika lub sprzedawcy. Wyświetl imię, nazwisko, dział, stanowisko.
# SELECT imie, nazwisko, dzial, stanowisko FROM pracownik WHERE dzial='techniczny' AND stanowisko='kierownik' OR dzial='techniczny' AND stanowisko='sprzedawca'
# SELECT imie, nazwisko, dzial, stanowisko FROM pracownik WHERE dzial='techniczny' AND (stanowisko='kierownik' OR stanowisko='sprzedawca')

# --------------------------------------------------
SELECT * FROM `samochod`
# --------------------------------------------------

# 5.3 Znaleźć samochody, które nie są marek fiat i ford.
# SELECT * FROM samochod WHERE marka !='fiat' AND marka !='ford'
# SELECT * FROM samochod WHERE marka <> 'fiat' AND marka <> 'ford'

# --------------------------------------------------

# 6 Predykat IN
# SELECT * FROM samochod WHERE marka IN ('opel')

# 6.1 Znaleźć samochody marek mercedes, seat i opel.
# SELECT * FROM samochod WHERE marka IN ('mercedes','seat','opel')

# --------------------------------------------------
SELECT * FROM `pracownik`
# --------------------------------------------------

# 6.2 Znajdź pracowników o imionach Anna, Marzena i Alicja. Wyświetl ich imiona, nazwiska i daty zatrudnienia.
# SELECT imie, nazwisko, data_zatr FROM pracownik WHERE imie IN ('Anna', 'Marzena', 'Alicja')

# --------------------------------------------------
SELECT * FROM `klient`
# --------------------------------------------------

# 6.3 Znajdź klientów, którzy nie mieszkają w Warszawie lub we Wrocławiu. Wyświetl ich imiona, nazwiska i miasta zamieszkania.
# SELECT imie, nazwisko, miasto FROM `klient` WHERE miasto NOT IN ('Warszawa', 'Wrocław')


# --------------------------------------------------
# 7 Predykat LIKE

# 7.1 Wyświetlić imiona i nazwiska klientów, których nazwisko zawiera literę K.
# SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE '%k%'

# 7.2 Wyświetlić imiona i nazwiska klientów, dla których nazwisko zaczyna się na D, a kończy się na SKI.
# SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE 'D%ski'

# 7.3 Znaleźć imiona i nazwiska klientów, których nazwisko zawiera drugą literę O lub A.
# SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE '_o%' OR nazwisko LIKE '_a%'

# --------------------------------------------------
SELECT * FROM `samochod`
# --------------------------------------------------

# 8 Predykat BETWEEN
# SELECT * FROM samochod WHERE poj_silnika BETWEEN 1100 AND 1200

# 8.1 Z tabeli samochód wyświetlić wiersze, dla których pojemność silnika jest z przedziału [1100,1600].
# SELECT * FROM samochod WHERE poj_silnika BETWEEN 1100 AND 1600

# --------------------------------------------------
SELECT * FROM `pracownik`
# --------------------------------------------------

# 8.2 Znaleźć pracowników, którzy zostali zatrudnieni pomiędzy datami 1997-01-01 a 1997-12-31.
# SELECT * FROM pracownik WHERE data_zatr BETWEEN '1997-01-01' AND '1997-12-31'

# --------------------------------------------------
SELECT * FROM `samochod`
# --------------------------------------------------

# 8.3 Znaleźć samochody, dla których przebieg jest pomiędzy 10000 a 20000 km lub pomiędzy 30000 a 40000 km.
# SELECT * FROM samochod WHERE ((przebieg BETWEEN 10000 AND 20000) OR (przebieg BETWEEN 30000 AND 40000))
# SELECT * FROM samochod WHERE (przebieg BETWEEN 10000 AND 20000) OR (przebieg BETWEEN 30000 AND 40000)

# --------------------------------------------------
SELECT * FROM `pracownik`
# --------------------------------------------------

9 Wartość NULL
# SELECT * FROM pracownik WHERE dodatek IS NULL

9.1 Znaleźć pracowników, którzy nie mają określonego dodatku do pensji.
# SELECT * FROM pracownik WHERE dodatek IS NULL

# --------------------------------------------------
SELECT * FROM `klient`
# --------------------------------------------------

9.2 Wyświetlić klientów, którzy posiadają kartę kredytową.
# SELECT * FROM klient WHERE nr_karty_kredyt IS NOT NULL

# --------------------------------------------------
SELECT * FROM `pracownik`
# --------------------------------------------------

# 9.3 Dla każdego pracownika wyświetl imię, nazwisko i wysokość dodatku. Wartość NULL z kolumny dodatek powinna być wyświetlona jako 0. Wskazówka: Użyj funkcji COALESCE.
# SELECT imie, nazwisko, COALESCE(dodatek,0) from pracownik

# --------------------------------------------------

# 10 Kolumny wyliczeniowe (COALESCE)
# SELECT imie, nazwisko, pensja +COALESCE(dodatek,0) AS do_zaplaty FROM pracownik

# 10.1 Wyświetlić imiona, nazwiska pracowników ich pensje i dodatki oraz kolumnę wyliczeniową do_zapłaty, zawierającą sumę pensji i dodatku. Wskazówka: Wartość NULL z kolumny dodatek powinna być wyświetlona jako zero.
# SELECT imie, nazwisko, pensja, dodatek, pensja +COALESCE(dodatek,0) AS do_zaplaty FROM pracownik

# 10.2 Dla każdego pracownika wyświetl imię, nazwisko i wyliczeniową kolumnę nowa_pensja, która będzie miała o 50% większą wartość niż dotychczasowa pensja.
# SELECT imie, nazwisko, pensja, pensja*1.5 AS nowa_pensja FROM pracownik

# 10.3 Dla każdego pracownika oblicz ile wynosi 1% zarobków (pensja + dodatek). Wyświetl imię, nazwisko i obliczony 1%. Wyniki posortuj rosnąco względem obliczonego 1%.
# SELECT imie, nazwisko, pensja, (pensja + COALESCE(dodatek,0)) *0.01 AS obliczony_1 from pracownik ORDER BY obliczony_1 ASC

# --------------------------------------------------

# 11 Ograniczanie wyników wyszukiwania (TOP)
# SELECT imie, nazwisko FROM pracownik ORDER BY data_zatr ASC LIMIT 1

# 11.1 Znajdź imię i nazwisko pracownika, który jako pierwszy został zatrudniony w wypożyczalni samochodów. (Jest tylko jeden taki pracownik.)
# SELECT imie, nazwisko FROM pracownik ORDER BY data_zatr ASC LIMIT 1

11.2 Wyświetl pierwszych czterech pracowników z alfabetycznej listy (nazwiska i imiona) wszystkich pracowników. (W tym zadaniu nie musisz się przejmować powtórkami imion i nazwisk, ale gdybyś chciał to sprawdź konstrukcję SELECT TOP x WITH TIES …)
# SELECT imie, nazwisko FROM pracownik ORDER BY nazwisko ASC, imie ASC LIMIT 4

# --------------------------------------------------

12 Wybrane funkcje daty i czasu (DAY, MONTH, YEAR, GETDATE, DATEDIFF)
# SELECT imie, nazwisko, stanowisko, data_zatr FROM pracownik WHERE MONTH(data_zatr) = 5 ORDER BY nazwisko, imie ASC

12.1 Wyszukaj pracowników zatrudnionych w maju. Wyświetl ich imiona, nazwiska i datę zatrudnienia. Wynik posortuj rosnąco względem nazwiska i imienia. Wskazówka: Zajrzyj do dokumentacji MS SQL i poczytaj o funkcjach: DAY, MONTH, YEAR, GETDATE, DATEDIFF.
# SELECT imie, nazwisko, data_zatr FROM pracownik WHERE MONTH(data_zatr) = 5 ORDER BY nazwisko, imie ASC

12.2 Dla każdego pracownika (imię i nazwisko) oblicz ile już pracuje dni. Wynik posortuj malejąco według ilości przepracowanych dni.
# SELECT imie, nazwisko, data_zatr, DATEDIFF (CURRENT_DATE, data_zatr) AS dni_pracy FROM pracownik ORDER BY dni_pracy DESC

# --------------------------------------------------
SELECT * FROM `samochod`
# --------------------------------------------------

# 12.3 Dla każdego samochodu (marka, typ) oblicz ile lat upłynęło od jego produkcji. Wynik posortuj malejąco po ilości lat.
# SELECT marka, typ, data_prod, DATEDIFF (CURRENT_DATE, data_prod) AS wiek_samochodu_dni FROM samochod ORDER BY wiek_samochodu_dni DESC

# --------------------------------------------------

13 Wybrane funkcje operujące na napisach (LEFT, RIGHT, LEN, UPPER, LOWER, STUFF) !!!!!!!!!!!!!!!!

13.1 Wyświetl imię, nazwisko i inicjały każdego klienta. Wynik posortuj względem inicjałów, nazwiska i imienia klienta. Wskazówka: Zajrzyj do dokumentacji MS SQL i poczytaj o funkcjach: LEFT, RIGHT, LEN, UPPER, LOWER, STUFF.
# SELECT imie, nazwisko, LEFT(imie,1) + '. ' + LEFT(nazwisko,1) + '. ' AS inicjały FROM klient ORDER BY inicjały, nazwisko, imie
# SELECT imie, nazwisko, CONCAT LEFT(imie, 1) AS inicjałIM, LEFT(nazwisko,1) AS inicjałNA, (inicjałIM + inicjałNA) AS inicjały FROM klient ORDER BY inicjały, nazwisko, imie

13.2 Wyświetl imiona i nazwiska klientów w taki sposób, aby pierwsza litera imienia i nazwiska była wielka, a pozostałe małe.

13.3 Wyświetl imiona, nazwiska i numery kart kredytowych klientów. Każda z ostatnich sześciu cyfr wyświetlanego numeru karty kredytowej klienta powinna być zastąpiona znakiem x .
