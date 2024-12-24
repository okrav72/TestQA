﻿#language: ru

@tree

Функционал: Финальное практическое задание №2

Как Тестировщик я хочу
В конфигурацию добавили отчет для вывода остатков товаров (отчет Остатки) 
чтобы выполнить Финальное практическое задание №2  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: В конфигурацию добавили отчет для вывода остатков товаров (отчет Остатки товаров)
* Формирование отчета "Остатки товаров"
	И В командном интерфейсе я выбираю "Товарные запасы" "Остатки товаров"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	И в таблице 'СписокНастроек' я перехожу к строке:
		| "Представление" |
		| "Основной"      |
	И я нажимаю на кнопку с именем 'Загрузить'
	Тогда открылось окно "Остатки товаров"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду когда в табличном документе "Результат" заполнится ячейка "R28C6" в течение 5 секунд
	И в табличном документе "Результат" ячейка с адресом "R28C6" равна "*" по шаблону
	Дано Табличный документ "Результат" равен макету "ОтчетОстаткиТоваров" по шаблону
