# Ocular Diagnostic Instruments
This repository contains source code, figures, bibs and supplementary
data for our report Paper on ocular diagnostic instruments

## 👥 Team
1. Iman Mokhtari Aski
2. Valiollah Derakhsahni
3. Armita Haj Heydari
4. Shamim Kiani
5. Nima Malekpoor

## 🛖 Repository Structure

| File/Folder | Description |
| ------------- | -------------- |
| main.typ | The main source file for the entire research paper, written in the Typst language. |
| main.bib | The full bibliography in BibTeX format, linked to the `main.typ` file. |
| output | The folder where the generated files will be in. |
| assets | Directory containing all data plots, instrument diagrams, and visual aids. |

## 📕 Using

You can use the relases for generated files.
for building refer to `Building` section.

## 🛠️ Building

1. First download or clone the repo as
```bash
git clone https://github.com/ImanAski/solid-bassoon
```

2. Change your directory to project directory
```bash
cd solid-bassoon
```

3. for building file you can use the command
```bash
typst compile main.typ
```

and for watching
```bash
typst watch main.typ
```
