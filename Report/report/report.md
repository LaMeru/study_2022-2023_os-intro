---
## Front matter
title: "Доклад на тему"
subtitle: "Использование rsync для резервного копирования данных"
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

# Вводная часть


## Актуальность
Использование rsync является актуальным и эффективным способом для резервного копирования данных, особенно при работе с большими объемами информации или при необходимости синхронизации файлов между удаленными системами. Rsync позволяет копировать только измененные блоки файлов, что значительно снижает затраты на передачу данных и ускоряет процесс резервного копирования. 

![Актуальность](./image/aktual.jpg){#fig:001 width=30%}

## Объект и предмет исследования

 - Объект исследования: Процесс резервного копирования данных с использованием rsync
 
 - Предмет исследования: Эффективность и актуальность использования rsync для резервного копирования, а также его возможности и ограничения.
 
![Объект и предмет](./image/object.jpg){#fig:002 width=30%}

## Научная новизна

Научная новизна данного доклада заключается в исследовании эффективности и актуальности использования rsync для резервного копирования данных в современных условиях, а также в анализе возможностей и ограничений данного инструмента.

![Научная новизна](./image/praktical.jpg){#fig:003 width=40%}

## Практическая значимость работы

Практическая значимость данной работы заключается в возможности использования полученных результатов для оптимизации процессов резервного копирования данных с помощью rsync, что позволит повысить эффективность работы с информацией и обеспечить надежность хранения данных.

![Практическая значимость](./image/prak.jpg){#fig:004 width=30%}

## Цель, гипотеза, задачи

- Цель: Исследовать эффективность и актуальность использования rsync для резервного копирования данных.

- Гипотеза: Использование rsync повышает эффективность резервного копирования данных и обеспечивает надежность их хранения.

- Задачи:
1. Изучить возможности и ограничения использования rsync для резервного копирования данных.
2. Исследовать влияние использования rsync на надежность хранения данных. 
3. Разработать рекомендации по использованию rsync для оптимального резервного копирования данных.
 
# Глава 1. Теоретическая часть

## Резервное копирование данных

Резервное копирование данных - важная часть как индивидуальной, так и корпоративной инфраструктуры. Машины с операционной системой Linux могут использовать rsync и ssh для облегчения процесса.

Rsync - это утилита командной строки, которая позволяет передавать файлы в локальные и удаленные места. Rsync удобен в использовании, поскольку он по умолчанию входит в состав большинства дистрибутивов Linux. Вы можете настроить инструмент, используя многие из доступных опций.

![Резервное копирование данных](./image/reserv.jpg){#fig:005 width=20%}

## Автор

Rsync — инструмент для быстрой синхронизации файлов и каталогов с минимальным трафиком, который пришёл на замену rcp и scp. В нём используется алгоритм со скользящим хешем, разработанный австралийским учёным, программистом и хакером Эндрю Триджеллом по кличке Тридж 

![Эндрю Триджелл](./image/avtor.jpg){#fig:006 width=40%}

## Принцип работы

Получатель А разделяет файл на куски фиксированного размера S, для каждого вычисляет MD4-хеш и скользящий хеш (rolling hash). Хеши отправляются Б.

На своей стороне отправитель Б вычисляет хеши для всех перекрывающихся кусков файла, начиная с первого байта. Если хеш какого-то фрагмента совпал с хешем на стороне А, то этот кусок является кандидатом на исключение из синхронизации. Таким образом, вычисляются фрагменты файла для передачи.

Эффективность алгоритма обеспечивается особым свойством скользящего хеша, который использует предыдущие значение, поэтому вычисление является крайне дешёвым.

![Скользящий ХЭШ](./image/howworks.png){#fig:007 width=55%}

# Глава 2. Как использовать rsync для резервного копирования данных

## Базовый синтаксис Rsync для локальной и внешней передачи

Синтаксис использования инструмента rsync отличается для локальной и удаленной передачи.
```code
rsync options SOURCE DESTINATION
```
```code
rsync options SOURCE user@IP_or_hostname:DESTINATION
```
В обоих случаях источником и местом назначения являются каталог или путь к файлу.

## Ремарки

Для лучшего понимания того, что делает rsync, буду использовать подробный ключ -v. Кроме того, поскольку я буду создавать резервные копии данных в каталогах, то буду использовать режим архива -a для рекурсивной синхронизации. 

![RSYNC](./image/peng.jpg){#fig:008 width=45%}

## Меры предосторожности

Утилита rsync позволяет вам по-разному манипулировать вашими данными. Так что будьте осторожны при резервном копировании файлов. Если вы используете неправильный вариант или неправильный пункт назначения, вы можете смешать свои данные. Хуже того, вы можете случайно перезаписать или удалить файлы.

По этой причине используйте параметр --dry-run, чтобы убедиться, что инструмент делает то, что вы хотите. Для простых передач вам может не понадобиться использовать --dry-run, но когда речь идет о большем наборе данных рекомендуется это сделать.

```code
rsync options --dry-run SOURCE DESTINATION
```

## Rsync для локального резервного копирования данных

Начнем с резервного копирования каталога на той же машине Linux. Путь может быть любым - другой раздел, жесткий диск, внешнее хранилище и так далее.

Например, чтобы создать резервную копию Dir1 из документов в /media/hdd2/rscync_backup, используйте команду rsync в этой форме:

```code
rsync -av /home/test/Documents/Dir1 /media/hdd2/rsync_backup
```

![Локальное резервное копирование данных](./image/resut1.png){#fig:009 width=35%}

На выходе отображается список переданных файлов и каталогов, а также другие сведения о передаче.

Примечание. Чтобы создать новый каталог в месте назначения и создать в нем резервную копию файлов, добавьте в конец пути к месту назначения косую черту /

## Rsync для резервного копирования данных по сети

Для безопасного резервного копирования данных по сети rsync использует SSH для передачи. Ваш сервер должен быть настроен на разрешение SSH-соединения.

Чтобы сэкономить место, вы можете сжать свои данные перед их переносом в другое место. Вы можете использовать встроенную опцию rsync для сжатия данных или можете использовать другой инструмент для этого перед запуском rsync.

Например, чтобы создать резервную копию Dir1 для резервного копирования на другой машине по сети, введите:
```code
rsync -av /home/test/Documents/Dir1 test@192.168.56.101:/home/test/backup
```

![Rsync для резервного копирования данных по сети](./image/result2.png){#fig:010 width=35%}

В выводе перечислены каталоги и файлы, перенесенные rsync на другой компьютер.
Если вы подключаетесь в первый раз, вам нужно будет ввести свой пароль и подтвердить его, когда вы получите запрос. Нет необходимости вводить имя пользователя для удаленных передач, если вы хотите подключиться как текущий пользователь.

## Сжать данные при резервном копировании с помощью Rsync

1. Чтобы сжать данные во время передачи, используйте параметр -z с командой rsync.
```code
rsync -avz /home/test/Documents/Dir1 test@192.168.56.101:/home/test/backup
```

2. Другой вариант - использовать команду zip, чтобы заархивировать ваши файлы или каталог, а затем запустить rsync. В нашем случае мы заархивируем Dir1 в Dir.zip:
```code
zip /home/test/Documents/Dir1.zip /home/test/Documents/Dir1
```

Затем перенесите этот файл в другое место:
```code
rsync -avz /home/test/Documents/Dir1.zip test@192.168.56.101:/home/test/backup
```

Теперь у вас есть заархивированная копия вашего каталога на удаленном сервере. Вы также можете сделать это для локальных передач, если хотите иметь резервную копию на другом диске или разделе.

# Результаты

В заключении можно сказать, что использование rsync для резервного копирования данных является актуальным и эффективным решением. Этот инструмент позволяет оптимизировать процессы резервного копирования за счет экономии времени и ресурсов, связанных с передачей и хранением данных. Эффективность использования rsync была подтверждена в ходе данного исследования, а также благодаря положительным отзывам специалистов в области информационных технологий. В ходе исследования были представлены рекомендации как создавать резервные копии данных с помощью rsync как локально, так и по сети. Будьте осторожны при использовании этого инструмента и обязательно выполните пробный запуск, если вы не уверены в параметрах rsync, которые хотите использовать.


![Вывод](./image/rcy.png){#fig:011 width=55%}

# Список литературы{.unnumbered}

::: {#refs}
:::

