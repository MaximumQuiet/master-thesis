Master thesis
=============

[![Build Status](https://travis-ci.com/SPoket/master-thesis.svg?branch=master)](https://travis-ci.com/SPoket/master-thesis)<Paste>
[![Лицензия на произведения](https://img.shields.io/badge/license-CC_BY--SA_4.0-blue.svg)](https://creativecommons.org/licenses/by-sa/4.0/deed.ru)

Выпускная работа студента техникума по специальности 09.02.01, оформленная в LaTeX. В работе рассматривается разработка СКУД на основе распознавания лиц.

Ключевые особенности:
--------------------
* использование пакета eskdx для оформления рамок
* использование XeLaTeX, для использования шрифта Times New Roman, как основного
* поддержка работы с изображениями, кастомные функции для их добавления
* отступы заголовков, списков и пр. в соответствии с нормоконтролем
* правильный формат подрисуночных надписей
* возможность использования как с локально установленным пакетом texlive, так и с изолированным docker-образом

Установка LaTeX
---------------
Установка нужных пакетов LaTeX в Ubuntu/Mint:
```bash
sudo apt install texlive-base texlive-latex-extra texlive-xetex texlive-lang-cyrillic latexmk texlive-fonts-extra texlive-math-extra latex-beamer ttf-mscorefonts-installer && fc-cache -f -v
```

Arch:
```bash
sudo pacman -S texlive-base texlive-latex-extra texlive-xetex texlive-lang-cyrillic latexmk texlive-fonts-extra texlive-math-extra latex-beamer ttf-ms-fonts && fc-cache -f -v
```

Компиляция проекта
------------------
С помощью Makefile:
```bash
git clone https://github.com/SPoket/master-thesis.git
cd master-thesis/
make build
```

В [Docker](https://hub.docker.com/r/spoket/docker-latex):
```
git clone https://github.com/SPoket/master-thesis.git
cd master-thesis/
make docker
```
