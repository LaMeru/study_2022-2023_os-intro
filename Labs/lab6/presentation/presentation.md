---
## Front matter
lang: ru-RU
title: Лабораторная работа 6
subtitle: Основы интерфейса взаимодействия пользователя с системой Unix на уровне командной строки
author:
  - Чигладзе М.В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 29 мая 2003

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
 ## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
---

# Информация


## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Чигладзе Майя Владиславовна
  * студент РУДН направления Прикладная информатика
  * заместитель ОСК профсоюза РУДН
  * волонтер университета и Москвы
  * [1132239399@pfur.ru]
  * <https://github.com/LaMeru>

:::
::: {.column width="30%"}

![](./image/IMG_20240129_120520_416.jpg)

:::
::::::::::::::

# Вводная часть


## Актуальность
 - Изучение интерфейса командной строки особенно актуально для системных администраторов, разработчиков программного обеспечения и других специалистов, работающих с Unix-системами. Кроме того, навыки работы с командной строкой могут быть полезны для обычных пользователей, которые хотят лучше понимать, как работает их операционная система и как можно управлять ею.

## Объект и предмет исследования
 - Объект исследования: интерфейс взаимодействия пользователя с системой Unix на уровне командной строки.
 - Предмет исследования: основные команды и инструменты командной строки, а также принципы и методы их использования для выполнения различных задач в Unix-системах.

## Цели и задачи
 - Цель работы: изучить основы интерфейса взаимодействия пользователя с системой Unix на уровне командной строки и получить практические навыки работы с основными командами и инструментами командной строки.
Задачи работы:
 - Изучить основные команды и принципы работы в командной строке.
 - Освоить работу с файлами и каталогами.
 - Получить навыки выполнения основных операций с использованием командной строки (создание, копирование, перемещение, удаление файлов и каталогов).
 - Изучить возможности использования командной строки для автоматизации задач.
 - Получить практические навыки решения наиболее распространенных задач с использованием командной строки.

## Материалы и методы

Материалы и методы:
 - Теоретические материалы: Документация и руководства по командной строке Unix
 - Практические материалы: Операционная система Unix с установленной командной строкой
 - Методы исследования: Изучение и анализ теоретических материалов; Выполнение практических заданий на компьютере; Анализ и обобщение результатов.
 
# Выполнение лабораторной работы

##1

В ходе лабораторной работы, мы научились понимать в какой директории находимся с помощью команды
```
pwd
```

##2

Мы узнали множество опций и неоднократно применяли команду
```
ls
```

##3

Узнали как создавать каталог, один и несколько, а также как их удалять (пустыми или полными)
```
mkdir
rmdir
rm -r
```

##4

Научились пользоваться командой 
```
man
```

# Результаты

Результатами лабораторной работы 6 являются:
 - Изучение основных команды Unix и принципы работы с ними.
 - Овладение навыками работы с файлами и каталогами в командной строке.
 - Получение навыков выполнения различных операций (создание, копирование, перемещение, удаление) с использованием командной строки.
 - Изучение возможности автоматизации задач с использованием сценариев командной строки.
 - Приобретение практические навыков решения различных задач с использованием командного интерфейса.