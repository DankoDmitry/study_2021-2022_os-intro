---
## Front matter
title: "Отчёта по лабораторной работе № 3"
author: "Дмитрий Игоревич Данько"

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

Научиться оформлять отчёты с помощью легковесного языка разметки Markdown.

# Задание

– Сделайте отчёт по предыдущей лабораторной работе в формате Markdown.
– В качестве отчёта просьба предоставить отчёты в 3 форматах: pdf, docx и md (в архиве,
поскольку он должен содержать скриншоты, Makefile и т.д.)

# Теоретическое введение

[Ссылка на Github](https://github.com/DankoDmitry/study_2021-2022_os-intro)

# Выполнение лабораторной работы
`
- Настроим аккаунт на Github.

- Установка Git-flow.

	![Установка Git-flow](image/Установка Git-flow.png){ #fig:001 width=70% }
	
- Создание SSH ключа.

	![Создание SSH ключа](image/Создание SSH ключа.png){ #fig:001 width=70% }
	
- Создание PGP ключа.

	![Создание PGP ключа](image/Создание PGP ключа.png){ #fig:001 width=70% }
	
- Логинимся на Git.

	![Логинимся на Git](image/Логинимся на Git.png){ #fig:001 width=70% }
	
- Копируем репозиторий.

	![Копируем репозиторий](image/Копируем репозиторий.png){ #fig:001 width=70% }
	
- Удаляем не нужные файлы и создаём необходимые катологи.

- Отправляем файлы на сервер.

	![Отправляем файлы на сервер](image/Отправляем файлы на сервер.png){ #fig:001 width=70% }

# Список команд

> cd /tmp

> wget --no-check-certificate -q https://raw.github.com/petervanderdoes/gitflow/develop/contrib/gitflow-installer.sh

> chmod +x gitflow-installer.sh

> sudo ./gitflow-installer.sh install stable

> sudo dnf install gh

> git config --global user.name didanjko

> git config --global user.email ddigorev@gmail.com

> git config --global core.quotepath false

> git config --global init.defaultBranch master

> git config --global core.autocrlf input

> git config --global core.safecrlf warn

> ssh-keygen -t rsa -b 4096

> gpg --full-generate-key

> gpg --list-secret-keys --keyid-format LONG

> gpg --armor --export <…………….> | xclip -sel clip

> git config --global user.signingkey <…………………>

> git config --global commit.gpgsign true

> git config --global gpg.program $(which gpg2)

> gh auth login

> mkdir -p ~/work/study/2021-2022/study_2021-2022_os-intro

> cd ~/work/study/2021-2022/study_2021-2022_os-intro

> gh repo create study_2021-2022_os-intro --template=yamadharma/course-directory-student-template --public

> git clone --recursive  git@github.com:/DankoDmitry/study_2021-2022_os-intro.git os-intro

> cd ~/work/study/2021-2022/study_2021-2022_os-intro/os-intro

> rm package.json

> make COURSE=os-intro

> git add .

> git commit -am 'feat(main): make course structure'

> git push

#     4. Контрольные вопросы

1. Что такое системы контроля версий (VCS) и для решения каких задач они предназначаются? 
	Системы контроля версий (Version Control System, VCS) применяются при работе нескольких человек над одним проектом.
1. Объясните следующие понятия VCS и их отношения: хранилище, commit, история, рабочая копия. 
	-Хранилище – место хранения всех данных, основного дерева, веток, коммитов.
	-Коммит – синоним/копия основного дерева.
	-История – история всех изменений.
	-Рабочая копия - текущее состояние файлов проекта, основанное на версии из хранилища.

1. Что представляют собой и чем отличаются централизованные и децентрализованные VCS? Приведите примеры VCS каждого вида. 
	-Централизованные: 
		* Простота использования. 
		* Вся история — всегда в едином общем хранилище. 
		* Нужно подключение к сети. 
		* Резервное копирование нужно только одному хранилищу. 
		* Удобство разделения прав доступа к хранилищу. 
		* Почти все изменения навсегда попадают в общее хранилище.

	-Распределенные:
		* Двухфазный commit:
			-запись в локальную историю; 
			-пересылка изменений другим. 
		* Подключение к сети не нужно.
		* Локальные хранилища могут служить резервными копиями. 
		* Локальное хранилище контролирует его владелец, 
		* но общее — администратор. 
		* Возможна правка локальной истории перед отправкой на сервер.

1. Опишите действия с VCS при единоличной работе с хранилищем. 

	-Сделать рабочую копию - ветку.
	-Внести изменения.
	-Слить с основным репозиторием – деревом.

1. Опишите порядок работы с общим хранилищем VCS. 

	-Сделать рабочую копию - ветку.
	-Внести изменения.
	-Слить с основным репозиторием – деревом.

1. Каковы основные задачи, решаемые инструментальным средством git?

	У Git две основных задачи: первая — хранить информацию о всех изменениях в вашем коде, начиная с самой первой строчки, а вторая — обеспечение удобства командной работы над кодом.

# Выводы

	Выполняя данную лабораторную работу, несколько разобрались с работой Git и Github в частности, создали свой репозиторий по образцу.


