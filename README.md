# Analizator jakości energii elektrycznej oparty na FPGA

## Opis projektu

Projekt przedstawia system monitorowania i analizy jakości energii elektrycznej w sieciach trójfazowych, wykorzystujący układy FPGA oraz środowisko LabVIEW. Głównym celem projektu było opracowanie wydajnego i rekonfigurowalnego systemu umożliwiającego akwizycję, przetwarzanie oraz analizę sygnałów elektrycznych w czasie rzeczywistym.

Aplikacja umożliwia pomiar napięć i prądów w układach trójfazowych, analizę parametrów jakości energii oraz wykrywanie zakłóceń występujących w sieci elektroenergetycznej. W projekcie zastosowano architekturę FPGA, która dzięki równoległemu przetwarzaniu danych pozwala na realizację zaawansowanych algorytmów analizy sygnałów przy zachowaniu wysokiej wydajności obliczeniowej.

System został opracowany z wykorzystaniem technologii FPGA firmy Xilinx oraz środowiska LabVIEW / LabVIEW FPGA, umożliwiających integrację warstwy sprzętowej z aplikacją pomiarową i wizualizacyjną.

---

# Funkcjonalności

## Analiza parametrów sieci

- pomiar napięć oraz prądów w układzie trójfazowym,
- monitorowanie parametrów jakości energii elektrycznej,
- analiza przebiegów sygnałów w czasie rzeczywistym,
- detekcja zakłóceń oraz harmonicznych,
- analiza stanów symetrycznych i niesymetrycznych,
- pomiar parametrów mocy w układach trójfazowych.

## Funkcje systemu

- akwizycja danych pomiarowych,
- szybkie przetwarzanie sygnałów na układzie FPGA,
- wizualizacja danych pomiarowych,
- zapis wyników pomiarów,
- możliwość dalszej rozbudowy systemu o dodatkowe algorytmy analizy.

## Analiza sygnałów

Projekt wykorzystuje wybrane metody analizy sygnałów stosowane w systemach monitorowania jakości energii:
- transformację Fouriera (FFT),
- analizę czasowo-częstotliwościową,
- dyskretną transformatę falkową (DWT),
- metody detekcji zakłóceń sygnałów elektroenergetycznych.

---

# Architektura systemu

Projekt został podzielony na kilka głównych modułów funkcjonalnych:

## 1. Moduł akwizycji danych

Odpowiada za:
- pobieranie sygnałów napięciowych i prądowych,
- synchronizację danych pomiarowych,
- przesył danych do modułu przetwarzania.

## 2. Moduł FPGA

Centralna część systemu realizująca:
- równoległe przetwarzanie danych,
- implementację algorytmów analizy sygnałów,
- operacje matematyczne wykonywane w czasie rzeczywistym,
- filtrację oraz analizę parametrów jakości energii.

Zastosowanie FPGA pozwala na znaczne przyspieszenie obliczeń względem klasycznych systemów opartych wyłącznie na procesorach CPU.

## 3. Aplikacja wizualizacyjna

Aplikacja wykonana w środowisku LabVIEW umożliwia:
- prezentację danych pomiarowych,
- wizualizację przebiegów napięć i prądów,
- wyświetlanie wyników analizy,
- obsługę interfejsu użytkownika,
- zapis danych pomiarowych.

---

# Wykorzystane technologie

## Sprzęt

- FPGA Xilinx Spartan-3E,
- platformy pomiarowe NI,
- układy akwizycji danych,
- systemy pomiarowe czasu rzeczywistego.

## Oprogramowanie

- LabVIEW,
- LabVIEW FPGA,
- VHDL,
- NI-DAQ,
- środowisko Xilinx.

## Mechanizmy i algorytmy

- FFT (Fast Fourier Transform),
- DWT (Discrete Wavelet Transform),
- analiza czasowo-częstotliwościowa,
- przetwarzanie równoległe,
- akwizycja danych w czasie rzeczywistym.

---

# Architektura FPGA

Projekt wykorzystuje architekturę układów FPGA opartą na:
- konfigurowalnych blokach logicznych (CLB),
- programowalnych połączeniach routingowych,
- blokach pamięci RAM,
- dedykowanych jednostkach DSP,
- menadżerach sygnałów zegarowych.

Zastosowanie układów FPGA umożliwia implementację zaawansowanych algorytmów bezpośrednio w warstwie sprzętowej, co pozwala na osiągnięcie bardzo wysokiej wydajności i niskich opóźnień systemu.

---

# Uruchomienie projektu

1. Otwórz projekt w środowisku LabVIEW.
2. Skompiluj projekt FPGA.
3. Skonfiguruj urządzenia pomiarowe.
4. Uruchom główną aplikację `.vi`.
5. Rozpocznij akwizycję oraz analizę danych pomiarowych.
