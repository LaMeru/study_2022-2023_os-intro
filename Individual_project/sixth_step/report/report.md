---
## Front matter
title: "Отчет по индивидуальному проекту ч.6"
subtitle: "Добавить к сайту данные о себе"
author: "Чигладзе Майя Владиславовна"

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

# **Порядок выполнения индивидуальной работы**

## Задание 1

Разместила фотографию владельца сайта (рис. 1 и рис. 2).

![Фото](image/1.png){#fig:001 width=70%}

![Фото в mc](image/2.png){#fig:002 width=70%}

## Задание 2

Разместила краткое описание владельца сайта (Biography), добавить информацию об интересах (Interests), добавить информацию от образовании (Education).(рис. 3, рис. 4, рис. 5)

![Информация ч. 1](image/3.png){#fig:003 width=70%}

![Информация ч. 2](image/4.png){#fig:004 width=70%}

![Информация ч. 3](image/5.png){#fig:005 width=70%}

## Задание 3

Сделать пост по прошедшей неделе. (рис. 6, рис. 7, рис. 8)

![Код](image/6.png){#fig:006 width=70%}

![Пост](image/7.png){#fig:007 width=70%}

![Пост вид 2](image/8.png){#fig:008 width=70%}

## Задание 4

Добавим пост на тему по выбору: Управление версиями. Git. (рис. 9, рис. 10).

![Сайт](image/9.png){#fig:009 width=70%}

![Код](image/10.png){#fig:010 width=70%}

# **Выводы**

В ходе работы над индивидуальным проектом, я добавила к сайту данные о себе.

# Список литературы{.unnumbered}

::: {#refs}
:::


