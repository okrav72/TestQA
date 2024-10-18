﻿#language: ru

@tree

Функционал: Заказ покупателя

Как Обучающийся я хочу
протестировать заполнение полей документа Заказ покупателя 
чтобы выполнить задание модуля 4   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _1001 подготовительный сценарий (заказ поставщику)
	Когда экспорт основных данных

Сценарий: _1002 Проверка заполнения полей документа Заказ покупателя
* Заполнение документа заказ покупателя
	И я закрываю все окна клиентского приложения
//		И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
//		Тогда открылось окно "Заказы покупателей"
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	Тогда элемент формы с именем 'Partner' стал равен ""
* Проверка блокировки поля контрагент - в случае, если не выбран Партнер
//	И элемент формы "LegalName" присутствует на форме
	И элемент "LegalName" не доступен для редактирования Тогда
//	И элемент формы "LegalName" существует и невидим на форме	
//	И элемент формы "LegalName" отсутствует на форме	
//	
	Когда Проверяю шаги на Исключение:
		|'И элемент формы "LegalName" присутствует на форме'|

	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
	| "Код" | "Наименование"            |
	| "1"   | "Клиент 1 (1 соглашение)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И я нажимаю на кнопку с именем 'FormChoose'
* Проверка заполнения поля контрагент - в случае, если выбран Партнер
	Тогда элемент формы с именем 'Partner' стал равен "Клиент 1 (1 соглашение)"
	Тогда элемент формы с именем 'LegalName' стал равен "Клиент 1"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
	
	И я нажимаю на кнопку с именем 'FormWrite'
* Номер
	И я запоминаю значение поля "Номер" как "Номер"
* Закрытие документа
	И Я закрываю окно "Заказ покупателя * от *"
* Проверка создания
	И таблица "List" содержит строки:
	| 'Номер'   |
	| '$Номер$' |
		