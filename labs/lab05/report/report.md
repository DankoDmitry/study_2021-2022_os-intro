---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
author: "Дмитрий Сергеевич Кулябов"

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

Здесь приводится формулировка цели лабораторной работы. Формулировки
цели для каждой лабораторной работы приведены в методических
указаниях.

Цель данного шаблона --- максимально упростить подготовку отчётов по
лабораторным работам.  Модифицируя данный шаблон, студенты смогут без
труда подготовить отчёт по лабораторным работам, а также познакомиться
с основными возможностями разметки Markdown.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно об Unix см. в [@gnu-doc:bash;@newham:2005:bash;@zarrelli:2017:bash;@robbins:2013:bash;@tannenbaum:arch-pc:ru;@tannenbaum:modern-os:ru].

# Выполнение лабораторной работы

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }

# Команды

>touch abc1
  197  cp abc1 april
  198  cp abc1 may
  199  ls
  200  mkdir monthly
  201  cp april may monthly
  202  ls
  203  cd monthly/
  204  ls
  205  cp monthly/may monthly/june
  206  cd
  207  cp monthly/may monthly/june
  208  ls monthly/
  209  mkdir monthly.00
  210  cp -r monthly monthly.00
  211  ls monthly.00/
  212  cp -r monthly.00 /tmp
  213  mv april july
  214  ls
  215  mv july monthly.00
  216  ls monthly.00
  217  cd monthly.00/monthly/
  218  ls
  219  cd
  220  mv monthly.00 monthly.01
  221  ls
  222  mkdir reports
  223  mv monthly.01 reports
  224  ls reports/
  225  mv reports/monthly.01 reports/monthly
  226  ls reports/
  227  touch may
  228  ls -l may
  229  chmod u+x may
  230  ls -l may
  231  chmod u-x may
  232  ls -l may
  233  mkdir monthly
  234  chmod g-r, o-r monthly
  235  chmod g-r monthly
  236  chmod o-r monthly
  237  chmod g-r o-r monthly
  238  touch abc1
  239  chmod g+w abc1
  240  ls -l abc1 
  241  cd /usr/include/sys/
  242  pwd
  243  ls
  244  cd 
  245  cp /usr/include/sys/io.h equipment
  246  ls
  247  mkdir ski.plases.
  248  mv equipment ski.plases./
  249  ls ski.plases./
  250  mv /ski.plases/equipment /ski.plases/equipment
  251  ls
  252  mv /ski.plases./equipment ~
  253  mv ski.plases./equipment ~
  254  ls
  255  rm -r ski.plases./
  256  ls
  257  mkdir ski.plases
  258  ls
  259  mv equipment ski.plases/
  260  ls ski.plases/
  261  mv /ski.plases/equipment /ski.plases/equipment
  262  mv ski.plases/equipment ski.plases/equipment
  263  mv ski.plases/equipment ski.plases/equiplist
  264  ls ski.plases/
  265  cp abc1 ski.plases/equiplist2
  266  ls ski.plases/
  267  mkdir ski.plases/equipment
  268  mv ski.plases/equiplist ski.plases/equiplist ski.plases/equipment/
  269  mv ski.plases/equiplist ski.plases/equipment/
  270  mv ski.plases/equiplist2 ski.plases/equipment/
  271  cd ski.plases/
  272  ls
  273  cd equipment/
  274  ls
  275  cd
  276  mkdir newdir
  277  mv newdir/ ski.plases/plans
  278  ls ski.plases/
  279  cd /etc/password
  280  mkdir australia play
  281  chmod 744 australia/
  282  chmod 711 play/
  283  ls -l australia/
  284  ls -l australia
  285  ls -l play/
  286  touch my_os
  287  touch feathers
  288  chmod 544 my_os 
  289  chmod 664 feathers 
  290  ls -l feathers 
  291  cp feathers file.old
  292  mv file.old play/
  293  cp play/ fun/
  294  cp -r play/ fun/
  295  mv fun/ play/game
  296  chmod u-r feathers 
  297  cat feathers 
  298  cp feathers feathers000000000
  299  chmod u+x feathers 
  300  cmod u-x play/
  301  chmod u-x play/
  302  cd play/
  303  chmod u+x play/
  304  cd play/
  305  cd
  306  man fsck
  307  man mkfs
  308  man mount
  309  man kill



# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
