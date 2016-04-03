Link for install package:	https://login.salesforce.com/packaging/installPackage.apexp?p0=04t58000000QSpL

Список улучшений для Bugs Tracker:<br>
1)	Продумать реализацию большой таблицы (больше 100 объектов – лимит для Remote Objects) + визуальное восприятие (скроллинг или страницы)<br>
2)	Назначить дефолтную сортировку таблицы (по желанию заказчика)<br>
3)	Добавить возможность сортировки по колонкам<br>
4)	Изменить Datapicker style с jQuery UI на Salesforce Lightning Design System (есть готовый фреймворк http://aljs.appiphony.com/#!/datepickers) <br>
5)	Исправить баг с типом полей даты (на данный момент эти поля типа “text”), после решения этой проблемы – написать правила валидации для данных полей<br>
6)	Необходимые скрипты залить в Static Resourses (сейчас используется CDN)<br>
7)	Придумать удобную реализацию/отображения поля “description”, с учётом возможности писать длинные descriptions<br>
8)	Для случая, когда не создано ещё ни одной записи, сделать заглушку из  Salesforce Lightning Design System (https://www.lightningdesignsystem.com/components/cards/#empty)<br>
9)	Сделать выделение записей в статусе “Closed” (например, цветной бекграунд)<br>
10)	Добавить Salesforce Lightning Design System к сообщениям об ошибках при валидации полей<br>
11)	Сделать popup окно при наведении на неактивную кнопку “Delete”, с пояснением, что удалять можно записи только в статусе “Delete”<br>
12)	Добавить модальное окно с запросом подтверждения удаления записи
