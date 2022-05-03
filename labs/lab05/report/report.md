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

> touch abc1  
> cp abc1 april 
> cp abc1 may 
> ls   
> mkdir monthly  
> cp april may monthly
> ls   
> cd monthly/  
> ls   
> cp monthly/may monthly/june 
> cd   
> cp monthly/may monthly/june 
> ls monthly/  
> mkdir monthly.00  
> cp -r monthly monthly.00
> ls monthly.00/  
> cp -r monthly.00 /tmp
> mv april july 
> ls   
> mv july monthly.00 
> ls monthly.00  
> cd monthly.00/monthly/  
> ls   
> cd   
> mv monthly.00 monthly.01 
> ls   
> mkdir reports  
> mv monthly.01 reports 
> ls reports/  
> mv reports/monthly.01 reports/monthly 
> ls reports/  
> touch may  
> ls -l may 
> chmod u+x may 
> ls -l may 
> chmod u-x may 
> ls -l may 
> mkdir monthly  
> chmod g-r, o-r monthly
> chmod g-r monthly 
> chmod o-r monthly 
> chmod g-r o-r monthly
> touch abc1  
> chmod g+w abc1 
> ls -l abc1 
> cd /usr/include/sys/  
> pwd   
> ls   
> cd   
> cp /usr/include/sys/io.h equipment 
> ls     
> mkdir ski.plases  
> ls   
> mv equipment ski.plases/ 
> ls ski.plases/  
> mv /ski.plases/equipment /ski.plases/equipment 
> mv ski.plases/equipment ski.plases/equipment 
> mv ski.plases/equipment ski.plases/equiplist 
> ls ski.plases/  
> cp abc1 ski.plases/equiplist2 
> ls ski.plases/  
> mkdir ski.plases/equipment  
> mv ski.plases/equiplist ski.plases/equiplist ski.plases/equipment/
> mv ski.plases/equiplist ski.plases/equipment/ 
> mv ski.plases/equiplist2 ski.plases/equipment/ 
> cd ski.plases/  
> ls   
> cd equipment/  
> ls   
> cd   
> mkdir newdir  
> mv newdir/ ski.plases/plans 
> ls ski.plases/  
> cd /etc/password  
> mkdir australia play 
> chmod 744 australia/ 
> chmod 711 play/ 
> ls -l australia/ 
> ls -l australia 
> ls -l play/ 
> touch my_os  
> touch feathers  
> chmod 544 my_os 
> chmod 664 feathers 
> ls -l feathers 
> cp feathers file.old 
> mv file.old play/ 
> cp play/ fun/ 
> cp -r play/ fun/
> mv fun/ play/game 
> chmod u-r feathers 
> cat feathers  
> cp feathers feathers000000000 
> chmod u+x feathers 
> cmod u-x play/ 
> chmod u-x play/ 
> cd play/  
> chmod u+x play/ 
> cd play/  
> cd   
> man fsck  
> man mkfs  
> man mount  
> man kill  




# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
