﻿#language: ru

@tree

Функционал: Тестирование функционала Расчеты по кредитам и займам

Как Тестировщик я хочу
Провести Тестирование функционала Расчеты по кредитам и займам 
чтобы провести тестирование процесса «Расчеты по кредитам и займам» в части объектов:
1.	Договор кредитов и депозитов.
2.	Варианты графиков кредитов и депозитов. 
3.	Начисления по кредитам и депозитам.
  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание элемента документа Начисления по кредитам и депозитам в 1С:ERP ГНПХ
	И я закрываю все окна клиентского приложения
* Создание нового элемента справочника
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.НачисленияКредитовИДепозитов"
	И в таблице 'Список' я нажимаю на кнопку с именем 'Создать___НачисленияПоКредитам___НачисленияКредитовИДепозитов'
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "Газпром ГНП холдинг (ранее Газпром активы СПГ)"
	И в поле с именем 'Комментарий' я ввожу текст "тестирование для VA"
	И в таблице 'Начисления' я нажимаю на кнопку с именем 'НачисленияЗаполнить'
	Тогда открылось окно "Заполнить начисления:"
	И я нажимаю кнопку выбора у поля с именем 'Партнер'
	Тогда открылось окно "Контрагенты"
	И в таблице 'Список' я перехожу к строке:
		| "Дата регистрации" | "Комментарий"                   | "Наименование" |
		| "18.09.2024"       | "смена юр. адреса с 03.08.2021" | "Газпром ПАО"  |
	И в таблице 'Список' я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем 'ДоговорКредитаДепозита'
	Тогда открылось окно "Договоры кредитов и депозитов"
	И в таблице 'Список' я перехожу к строке:
		| "Валюта" | "Дата"       | "Номер"     | "Оплата в иностранной валюте" | "Организация"                                    | "Ответственный"                | "Рабочее наименование"                       | "Статус"    |
		| "RUB"    | "03.03.2022" | "3-643-1-1" | "Нет"                         | "Газпром ГНП холдинг (ранее Газпром активы СПГ)" | "Васильева О.Ю. (бухгалтерия)" | "Договор займа № 3-643-1-1 от 03.03.2022 г." | "Действует" |
	И в таблице 'Список' я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем 'Ответственный'
	Тогда открылось окно "Выбор пользователя"
	И в таблице 'ПользователиСписок' я перехожу к строке:
		| "Полное имя"    |
		| "Администратор" |
	И в таблице 'ПользователиСписок' я выбираю текущую строку
	И я нажимаю на кнопку с именем 'Заполнить'
	И в таблице 'Начисления' я нажимаю на кнопку с именем 'НачисленияДобавить'
	И в таблице 'Начисления' в поле с именем 'ДатаПлатежа' я ввожу текст "30.09.2024"
	И я перехожу к следующему реквизиту
	И в таблице 'Начисления' я нажимаю кнопку выбора у реквизита с именем 'ТипСуммыГрафика'
	И в таблице 'Начисления' я активизирую поле с именем 'Партнер'
	И в таблице 'Начисления' из выпадающего списка с именем 'Партнер' я выбираю точное значение "Газпром ПАО"
	И в таблице 'Начисления' я активизирую поле с именем 'Договор'
	И в таблице 'Начисления' я нажимаю кнопку выбора у реквизита с именем 'Договор'
	И в таблице 'Список' я перехожу к строке:
		| "Валюта" | "Дата"       | "Номер"     | "Оплата в иностранной валюте" | "Организация"                                    | "Ответственный"                | "Рабочее наименование"                       | "Статус"    |
		| "RUB"    | "03.03.2022" | "3-643-1-1" | "Нет"                         | "Газпром ГНП холдинг (ранее Газпром активы СПГ)" | "Васильева О.Ю. (бухгалтерия)" | "Договор займа № 3-643-1-1 от 03.03.2022 г." | "Действует" |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Начисления' я активизирую поле с именем 'Сумма'
	И в таблице 'Начисления' в поле с именем 'Сумма' я ввожу текст "50 000,00"
	И в таблице 'Начисления' я активизирую поле с именем 'Подразделение'
	И в таблице 'Начисления' я нажимаю кнопку выбора у реквизита с именем 'Подразделение'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"              |
		| "000002158" | "Структурные подразделения" |
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"                       |
		| "000000016" | "Финансово-экономическое управление" |
	И в таблице 'Список' я выбираю текущую строку
	
	//И у поля "Статья начисления" я нажимаю гиперссылку 'e1cib/data/ПланВидовХарактеристик.СтатьиРасходов?ref=938f0050569c000611e0e8d1febe751b'

	И в таблице 'Начисления' я нажимаю кнопку выбора у реквизита с именем 'СтатьяДоходовРасходов'
	Тогда открылось окно "Выбор статьи"
	И я меняю значение переключателя с именем 'РежимВыбора' на "Статьи расходов"
			


		
//	И я меняю значение переключателя с именем 'РежимВыбора' на "Статьи расходов"
	И в таблице 'СтатьиРасходов' я активизирую дополнение формы с именем 'СтатьиРасходовСтрокаПоиска'
	И в таблице 'СтатьиРасходов' в дополнение формы с именем 'СтатьиРасходовСтрокаПоиска' я ввожу текст "Проценты к уплате по кредитам и займам полученным (внутри группы ПАО)"
	И в таблице 'СтатьиРасходов' я активизирую поле с именем 'СтатьиРасходовНаименование'
	И в таблице 'СтатьиРасходов' я перехожу к строке:
		| "Аналитика"                  | "Код"          | "Наименование"                                                                                                                                                                                                                                                                                                                                             | "Описание"                                                                                                                                                   | "Распределить в регл.учете"                                                                                                 | "Распределить в упр.учете"                                                                                                  |
		| "Договор кредита (депозита)" | "3002010000  " | "<b><colorstyle -46>Проценты</></> <b><colorstyle -46>к</></> <b><colorstyle -46>уплате</></> <b><colorstyle -46>по</></> <b><colorstyle -46>кредитам</></> <b><colorstyle -46>и</></> <b><colorstyle -46>займам</></> <b><colorstyle -46>полученным</></> <b><colorstyle -46>(внутри</></> <b><colorstyle -46>группы</></> <b><colorstyle -46>ПАО)</></>" | "<b><colorstyle -46>Проценты</></> <b><colorstyle -46>к</></> <b><colorstyle -46>по</></>лучен<b><colorstyle -46>и</></>ю (<b><colorstyle -46>уплате</></>)" | "На ф<b><colorstyle -46>и</></>нансовый результат (расходы те<b><colorstyle -46>к</></>. пер<b><colorstyle -46>и</></>ода)" | "На ф<b><colorstyle -46>и</></>нансовый результат (расходы те<b><colorstyle -46>к</></>. пер<b><colorstyle -46>и</></>ода)" |
	И в таблице 'СтатьиРасходов' я выбираю текущую строку
//	Тогда открылось окно "Начисления по кредитам и депозитам (создание) *"
	И в таблице 'Начисления' я активизирую поле с именем 'НачисленияАналитикаРасходов'
	И в таблице 'Начисления' я нажимаю кнопку выбора у реквизита с именем 'НачисленияАналитикаРасходов'
	Тогда открылось окно "Договоры кредитов и депозитов"
	И в таблице 'Список' я перехожу к строке:
		| "Валюта" | "Дата"       | "Номер"    | "Оплата в иностранной валюте" | "Организация"                                    | "Ответственный" | "Рабочее наименование"      | "Статус"        |
		| "RUB"    | "19.09.2024" | "Тест VA1" | "Нет"                         | "Газпром ГНП холдинг (ранее Газпром активы СПГ)" | "KravchenkoOA"  | "Тестовый договор для VA_1" | "Не согласован" |
	И в таблице 'Список' я выбираю текущую строку
	

	И в таблице 'Начисления' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
		
	
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я нажимаю на кнопку с именем 'ФормаОбработкаОтражениеДокументовВРеглУчетеПроводкиРеглУчета'
	И я нажимаю на кнопку с именем 'ФормаОтразитьДокументВРеглУчете'
	И я жду доступности элемента "Проводки регламентированного учета" в течение 30 секунд
* Проверка Проводки в регламентированном учете
	Тогда элемент формы с именем 'ВыбраннаяОрганизация' стал равен "Газпром ГНП холдинг (ранее Газпром активы СПГ)"
	И элемент формы с именем 'КартинкаВнимание' стал равен "Картинка внимание"
	И элемент формы с именем 'КомментарийАвтоматическогоОтражения' стал равен ""
	И элемент формы с именем 'КомментарийРучногоОтражения' стал равен "добавить"
	И таблица 'НаборЗаписей' стала равной:
		| 'Дата'               | 'Направление Дт' | 'N' | 'Счет Дт' | 'Субконто Дт'                                                           | 'Количество Дт' | 'Направление Кт' | 'Подразделение Кт, Направление Кт' | 'Субконто3 Дт'                       | 'Субконто2 Кт'                               | 'Организация'                                    | 'Сумма ВР Дт' | 'Сумма Кт (RUB)' | 'Валюта Дт' | 'Субконто2 Дт'         | 'Субконто Кт' | 'Подразделение Дт, Направление Дт'   | 'Субконто3 Кт' | 'Сумма ВР Кт' | 'Валюта Кт' | 'Вал. сумма Кт' | 'Вал. сумма Дт' | 'Количество Кт' | 'Счет Кт' | 'Сумма БУ (RUB)' | 'Сумма Дт (RUB)' | 'Содержание'                                  | 'НУ, ПР, ВР' |
		| '30.09.2024 0:00:00' | ''               | '1' | '91.02'   | 'Проценты к уплате по кредитам и займам полученным (внутри группы ПАО)' | ''              | ''               | ''                                 | '<Варианты налогообложения прибыли>' | 'Договор займа № 3-643-1-1 от 03.03.2022 г.' | 'Газпром ГНП холдинг (ранее Газпром активы СПГ)' | ''            | '50 000,00'      | ''          | '<Реализуемые активы>' | 'Газпром ПАО' | 'Финансово-экономическое управление' | ''             | ''            | ''          | ''              | ''              | ''              | '66.04'   | '50 000,00'      | '50 000,00'      | 'Начисление процентов по кредитам полученным' | ''           |
	
	И элемент формы с именем 'ОбъектРучнаяКорректировкаПроводок' стал равен "Нет"
	И элемент формы с именем 'РучнаяКорректировкаДекорация' стал равен "  Ручная корректировка:"
	И элемент формы с именем 'РучнаяКорректировкаЖурналаСФ' стал равен "Нет"
	И элемент формы с именем 'РучнаяКорректировкаПроводок' стал равен "Нет"
	И элемент формы с именем 'Состояние' стал равен "Отражен в учете"
	И элемент формы с именем 'ТекстКорректировки' стал равен "Открыть список введенных корректировок (0)"
	И элемент формы с именем 'УточнениеСостояния' стал равен ""
		
	
	И я нажимаю на кнопку с именем 'СнятьОтражениеВУчете'
	И я нажимаю на кнопку с именем 'ФормаОбновить'
	И Я закрываю окно "Проводки регламентированного учета"

* Запоминаем Номер
	И я запоминаю значение поля "Номер" как "Номер"
			
* Проверка заполнения
	Тогда элемент формы с именем 'Автор' стал равен "KravchenkoOA"
	И элемент формы с именем 'ДатаНачала' стал равен "01.09.2024"
	И элемент формы с именем 'ДатаОкончания' стал равен "30.09.2024"
	И элемент формы с именем 'Комментарий' стал равен "тестирование для VA"
	И элемент формы с именем 'Менеджер' стал равен "KravchenkoOA"
	И таблица 'Начисления' стала равной:
		| 'N' | 'Дата'       | 'Тип суммы' | 'Кредитор'    | 'Договор'                                    | 'Сумма'     | 'Валюта' | 'Подразделение'                      | 'Направление деятельности' | 'Статья начисления'                                                     | 'Аналитика активов/пассивов' | 'Аналитика доходов' | 'Аналитика расходов'        | 'Счет учета'                      |
		| '1' | '30.09.2024' | 'Проценты'  | 'Газпром ПАО' | 'Договор займа № 3-643-1-1 от 03.03.2022 г.' | '50 000,00' | 'RUB'    | 'Финансово-экономическое управление' | ''                         | 'Проценты к уплате по кредитам и займам полученным (внутри группы ПАО)' | ''                           | ''                  | 'Тестовый договор для VA_1' | '<определяется статьей расходов>' |
	
	И элемент формы с именем 'Организация' стал равен "Газпром ГНП холдинг (ранее Газпром активы СПГ)"
	И элемент формы с именем 'СтрокаИсправление' стал равен ""
	И элемент формы с именем 'ХозяйственнаяОперация' стал равен 'Начисления по кредитам и займам полученным'
				
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Начисления по кредитам и депозитам * от *" в течение 20 секунд

* Проверка 	Созданный элемент отображается в форме списка справочника «Договоры кредитов и депозитов».
	И таблица "Список" содержит строки:
		| 'Номер' | 
		| '$Номер$' | 	