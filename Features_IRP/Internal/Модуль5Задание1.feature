#language: ru

@tree

Функционал: Создание элементов справочника Номенклатура

Как Тестировщик я хочу
С помощью цикла создать 10 элементов справочника Номенклатура 
чтобы выполнить задание 1 Модуль 5   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: 	создание большого объема данных (справочник Номенклатура)
	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $Шаг$' в переменную "Номенклатура"

		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f687a' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | ''       | ''            | ''               | ''                 | '$Номенклатура$' | ''               |          |          |          |          |         |

	И я перезаполняю для объекта табличную часть "AddAttributes":
		| 'Ref'                                                           | 'Property'                                                                                           | 'Value'                                                                                 |
		| '{"e1cib/data/Catalog.Units?ref=" + StrReplace(New UUID, "-", "")}' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2760' |

			
					
								
				
	
