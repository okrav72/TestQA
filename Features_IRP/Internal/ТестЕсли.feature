﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
* Проверка видимости элемента
	Если элемент формы с именем "Company" отсутствует на форме Тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
	И я нажимаю кнопку выбора у поля "Вид цены"
* Проверка макетов отчетов
	Если Табличный документ "Result" равен макету "Закупки2" Тогда
	ИначеЕсли Табличный документ "Result" равен макету "Закупки1" Тогда
	Иначе
		и я вызываю исключение "Макет не совпадает с эталоном"
//Тогда Табличный документ "Result" равен макету "Закупки1" 
//Тогда Табличный документ "Result" равен макету "Закупки2"
* Стабилизация тестов
	Если появилось окно с заголовком "Соглашение (создание)" в течение 10 секунд Тогда
		И я закрываю окно "Соглашение (создание)"
		
* При создании первоначальных настроек
	Если в таблице "List" нет строки Тогда
		| 'Контрагент'  |
		| 'Контрагент1' |
		И я нажимаю на кнопку "Создать"
		
	