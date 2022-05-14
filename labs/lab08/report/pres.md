---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
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


Познакомиться с операционной системой Linux. Получить практические навыки работы с редактором vi, установленным по умолчанию практически во всех дистрибутивах.

# Задание


Задание состорит в выполнении некоторых действий с vi редактором, направленных на улучшение понимания работы с последним.

# Теоретическое введение


Ссылка на [Github](https://github.com/DankoDmitry/study_2021-2022_os-intro)

# Выполнение лабораторной работы


![*Рис. 1.* ](image/1.png)

![*Рис. 2.*](image/2.png)

![*Рис. 3.*](image/3.png)

![*Рис. 4.*](image/4.png)

![*Рис. 5.*](image/5.png)

![*Рис. 6.*](image/6.png)


# Выводы


В ходе выполнения данной лабораторной работы научились работать с редактором vi.

# Контрольные вопросы


- Редактор vi имеет два режима работы - режим команд и режим редактирования. Запускается он в командном режиме, так что все нажатия на клавиши трактуются как команды.
- q!
- Вполне покрывают необходимые задачи.


- Набор символов ограниченный пробелами.
- 0 / G
- Копирование и перемещение, запись в файл и выход из редактора.
- 
- u
- Вставка, удаление, замена, копирование и поиск.
