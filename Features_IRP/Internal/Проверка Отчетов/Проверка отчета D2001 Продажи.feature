﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отчетов

Как Обучающийся я хочу
протестировать отчет D2001 Продажи
чтобы проверить, что у пользователя не возникнет проблем   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _1101 подготовительный сценарий (тестирование отчетов)
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных
	Когда экспорт документов закупок

	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesReturn"
	И в таблице 'List' я выделяю все строки
	И в таблице 'List' я нажимаю на кнопку с именем 'ListContextMenuPost'
	
Сценарий: _1102 проверка отчета D2001
* Проверка отображения возвратов в отчете Продажи
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
	Тогда открылось окно "D2001 Продажи"
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R13C4" в течение 20 секунд
	Дано Табличный документ "Result" равен макету "отчет D2001" по шаблону
	И в табличном документе "Result" ячейка с адресом "R13C4" равна "-691,67"
