﻿#language: ru

@tree
@IgnoreOnCIMainBuild

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Переменные:
ЗаголовокФормыСпискаПоступления = '{!MetaData.Documents.PurchaseInvoice.ListPresentation}' 
ЗаголовокПодсистемыЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

*ПеременныеЗначения
		| 'Имя'                       | 'Представление'               | 'Значение' |
		| 'СуммаДокументаПоступления' | 'Сумма Документа Поступления' | '900,00'   |
	
ИтоговаяСуммаОтчетаЗакупки =	'R21C3'
// Сообщение = '{NStr("en=""Barcode %1 not found.""; ru=""Штрихкод %1 не найден.""")}'

СообщениеШтрихкодНеНайден = '{!R().S_019}'
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
