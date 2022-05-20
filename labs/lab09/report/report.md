---
## Front matter
title: "Отчёт по лабораторной работе"
subtitle: "Работа № 9"
author: "Дмитрий Игоревич Данько НПМбд-01-21"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы


Познакомиться с операционной системой Linux. Получить практические навыки работы с редактором Emacs.

# Задание


Задание состорит в выполнении некоторых действий с редактоором emacs, направленных на улучшение понимания работы с последним.

# Теоретическое введение


Ссылка на [Github](https://github.com/DankoDmitry/study_2021-2022_os-intro)

# Выполнение лабораторной работы


 - Создадим файл lab07.sh (рис. 1).

![*Рис. 1.* ](image/1.png)

 - Редактируем файл в сооответствии и пунктами 3, 4 и 5. А именно втавим текст, проивольно отредактируем в соответствии с условиями, а также научились пользоваться командами по перемещеню курсора (рис. 2).

![*Рис. 2.*](image/2.png)

 - Вывели список активных буферов на экран (рис. 3).

![*Рис. 3.*](image/3.png)

 - Поделили фрейм на 4 части (рис. 4).

![*Рис. 4.*](image/4.png)

 - Используем режим поиска (рис. 5).

![*Рис. 5.*](image/5.png)

# Выводы


В ходе выполнения данной лабораторной работы **научились** работать с редактором emacs.
