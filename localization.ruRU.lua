if ( GetLocale() ~= "ruRU" ) then
	return
end

ShadowUFLocals = setmetatable({
	["%s frames"] = "%s фреймы",
	["(AFK)"] = "(ОТШЛ)",
	["(DND)"] = "(ЗНТ)",
	["2D"] = "2D",
	["3D"] = "3D",
	["Absolute current health value without any formating so 15000 is still shown as 15000."] = "Полное, текущее значение здоровья без какого-либо форматирования, если значение 15000 то оно и будет отображаться как 15000.",
	["Absolute current power value without any formating so 15000 is still shown as 15000."] = "Полное, текущее значение энергии без какого-либо форматирования, если значение 15000 то оно и будет отображаться как 15000.",
	["Absolute current/max health, without any formating so 17750 is still formatted as 17750."] = "Absolute current/max health, without any formating so 17750 is still formatted as 17750.",
	["Absolute current/max power, without any formating so 17750 is still formatted as 17750."] = "Absolute current/max power, without any formating so 17750 is still formatted as 17750.",
	["Absolute maximum health value without any formating so 15000 is still shown as 15000."] = "Полное, максимальное значение здоровья без какого-либо форматирования, если значение 15000 то оно и будет отображаться как 15000.",
	["Absolute maximum power value without any formating so 15000 is still shown as 15000."] = "Полное, максимальное значение энергии без какого-либо форматирования, если значение 15000 то оно и будет отображаться как 15000.",
	["Active specialization"] = "Active specialization",
	["Add"] = "Добавить",
	["Add new tag"] = "Добавить новый тег",
	["Add new text"] = "Добавить новый текст",
	["Add tags"] = "Добавить теги",
	["Adds %s to the list of units to be modified when you change values in this tab."] = "Добавляет рамку %s в список модифицируемых рамок, при изменении значения в данной закладке.",
	["Advanced"] = "Расширенные",
	["Alignment"] = "Выравнивание",
	["Alpha to use when the unit is inactive meaning, not in combat, have no target and mana is at 100%."] = "Использовать прозрачность для этой рамки когда вы не в бою, у вас нет цели и показатель маны равен 100%.",
	["Alpha to use when you are in combat for this unit."] = "Использовать прозрачность для этой рамки когда вы находитесь в бою.",
	["Ammo"] = "Боеприпасы",
	["Amount of health missing, if none is missing nothing is shown. Uses a short format, -18500 is shown as -18.5k, values below 10000 are formatted as is."] = "Значение убывания здоровья, если здоровье полное, ничего не отображается. Используется формат сокращения, -18500 отображается как -18.5k, значения ниже 10000 не форматируются.",
	["Amount of power missing,  if none is missing nothing is shown. Uses a short format, -13850 is shown as 13.8k, values below 10000 are formatted as is."] = "Значение убывания энергии, если энергия полна, ничего не отображается. Используется формат сокращения, -13850 отображается как 13.8k, значения ниже 10000 не форматируются.",
	["Anchor point"] = "Точка привязки",
	["Anchor to"] = "Привязка к",
	["Anchor to another frame"] = "Привязка к другой рамке",
	["Any bars that appear before or after the full size options will use the entire frames width.\n\nThe remaining bars that are between those two numbers are shown next to the portrait."] = "Any bars that appear before or after the full size options will use the entire frames width.\n\nThe remaining bars that are between those two numbers are shown next to the portrait.",
	--Любые полосы, которые появляются до или после полного размера, будут использовать всю ширину рамки.\n\n.Остальные полосы, которые находятся между этими двумя числами, отображаются рядом с портретом.
	["Are you really sure you want to delete this tag?"] = "Вы действительно хотите удалить этот тег?",
	["Are you sure you want to delete this text? All settings for it will be deleted."] = "Вы действительно хотите удалить этот текст? Все настройки будут удалены.",
	["Ascending"] = "Возрастающий",
	["Auras"] = "Ауры",
	["Background"] = "Фон",
	["Background color"] = "Цвет фона",
	["Background/border"] = "Фон/края",
	["Bar texture"] = "Текстура полосы",
	["Bars"] = "Полосы",
	["Border"] = "Края",
	["Border color"] = "Цвет краев",
	["Boss"] = "Босс",
	["Bottom"] = "Внизу",
	["Bottom Center"] = "Внизу по центру",
	["Bottom Left"] = "Внизу слева",
	["Bottom Right"] = "Внизу справа",
	["Buff icons"] = "Иконки баффа",
	["Buffs"] = "Баффы",
	["Cannot register tag, data should be passed as {help = \"help text\", events = \"EVENT_A EVENT_B\", funct = \"function(unit) return \"Foo\" end}"] = "Не удается зарегистрировать тег, данные нужно указать как {help = \"help text\", events = \"EVENT_A EVENT_B\", funct = \"function(unit) return \"Foo\" end}",
	["Cast bar"] = "Полоса применений",
	["Cast bars"] = "Полосы применений",
	["Cast name"] = "Название применения",
	["Cast time"] = "Время применения",
	["Center"] = "В центре",
	["Changed profile to %s as you are currently using your %s talent specialization."] = "Профиль сменён на %s так как вы используете вашу %s спецификацию талантов.",
	["Class"] = "Класс",
	["Class colors"] = "Цвета классов",
	["Class icon"] = "Иконка класса",
	["Class name, use [classcolor][class][close] if you want a colored class name."] = "Название класса, используйте [classcolor][class][close] если вы хотите окрасить название класса.",
	["Clip"] = "Cрезать",
	["Closes a color code, pretends colors from showing up on text that you do not want it to."] = "Закрывает код цвета, предотвращает окраску дальнейшего текста.",
	["Code"] = "Код",
	["Color by reaction"] = "Цвет по реакции",
	["Color code for the class, use [classcolor][class][close] if you want the class text to be colored by class"] = "Color code for the class, use [classcolor][class][close] if you want the class text to be colored by class",
	["Color health by"] = "Цвет здоровья по",
	["Color on aggro"] = "Цвет при угрозе",
	["Colored level by difficulty, no color used if you cannot attack the unit."] = "Окраска по уровню сложности, окраска не будет использоваться если не можете атаковать существо/игрока.",
	["Column growth"] = "Возрастание колонок",
	["Column spacing"] = "Промежуток колонок",
	["Combat alpha"] = "Прозрачность в бою",
	["Combat fader"] = "Затухание боя",
	["Combat text"] = "Текст боя",
	["Combo points"] = "Длина серии приемов",
	["Create type, for example, if you're targeting a Felguard then this will return Felguard."] = "Создание типа, например, если вы целитись в Стража Скверны то это будет возвращаться к Стражу Скверны.",
	["Current and maximum health, formatted as [curhp]/[maxhp], if the unit is dead or offline then that is shown instead."] = "Текущее и максимальное здоровье, используемые параметры [curhp]/[maxhp], также отображается когда игрок умер или вышел из сети.",
	["Current and maximum power, formatted as [curpp]/[maxpp]."] = "Текущая и максимальная энергия, используемые параметры [curpp]/[maxpp].",
	["Current health, uses a short format, 11500 is formatted as 11.5k, values below 10000 are formatted as is."] = "Текущее здоровье, используется формат сокращения, 11500 отображается как 11.5k, значения ниже 10000 не форматируются.",
	["Current power, uses a short format, 12750 is formatted as 12.7k, values below 10000 are formatted as is."] = "Текущая энергия, используется формат сокращения, 12750 отображается как 12.7k, значения ниже 10000 не форматируются.",
	["Dead"] = "Труп",
	["Debuffs"] = "Дебаффы",
	["Delete"] = "Удалить",
	["Delete text"] = "Удалить текст",
	["Descending"] = "Убывающий",
	["Disable event discovery"] = "Disable event discovery",
	["Disable vehicle swap"] = "Отключить смену на транспорт",
	["Disabled in %s"] = "Отключить в %s",
	["Disables the unit turning into a vehicle frame when the unit enters a vehicle."] = "Отключает смены рамки игрока на транспортное средство, когда игрок садится в транспортное средство.",
	["Documentation"] = "Документация",
	["Down"] = "Вниз",
	["Edge size"] = "Размер контура",
	["Edit tag"] = "Править тег",
	["Editing %s"] = "Правка %s",
	["Elite"] = "Элита",
	["Enable %s"] = "Включить %s",
	["Enable %s frames"] = "Включить фрейм %s",
	["Enable buffs"] = "Включить баффы",
	["Enable debuffs"] = "Включить дебаффы",
	["Enable indicator"] = "Включить индекатор",
	["Enable quick health"] = "Быстрое здоровье",
	["Enable quick power"] = "Быстроая энергия",
	["Enable units"] = "Включить рамки",
	["Enabled in %s"] = "Включить в %s",
	["Enabling advanced settings will allow you to further tweak settings. This is meant for people who want to tweak every single thing, and should not be enabled by default as it increases the options."] = "Включение дополнительных настроек позволяет вам дополнительно подстроить настройки. Это предназначено для тех людей, которые хотят настроить каждую вещь, и она не должна быть включена по умолчанию, поскольку она расширяет возможности.",
	["Energy"] = "Энергия",
	["Enlarge your auras"] = "Увеличить ваши ауры",
	["Events"] = "События",
	["Events that should be used to trigger an update of this tag. Separate each event with a single space."] = "События, которые должны использоваться, чтобы вызвать обновление этого тэга. Отделите каждое событие одиночным пробелом.",
	["Fades out units who you are not in range of, this only works on people who are in your group."] = "Затемнение рамок игроков, которые находятся в не досягаемости, это работает только на участников, которые находятся в вашей группе.",
	["Failed to save tag, error:\n %s"] = "Не удалось сохранить тег, ошибка:\n %s",
	["Female"] = "Жен.",
	["Filter out any aura that you cannot cure."] = "Отфильтровывает любые эффекты, которые вы не можете излечить.",
	["Filter out any auras that you cannot cast on another player, or yourself."] = "Отфильтровывает любые эффекты, которые вы не можете применить на другого игрока, или на себя.",
	["Filter out any auras that you did not cast yourself."] = "Отфильтровывает любые эффекты, которые вы не применяли самостоятельно.",
	["Focus"] = "Фокус",
	["Font"] = "Шрифт",
	["For players, it will return a class, for mobs than it will return their creature type."] = "For players, it will return a class, for mobs than it will return their creature type.",
	["Frame"] = "Рамка",
	["Frame growth"] = "Возрастание рамок",
	["Frames"] = "Рамки",
	["Friendly"] = "Дружелюбные",
	["Fuel"] = "Топливо",
	["Full size after"] = "Полный размер после",
	["Full size before"] = "полный размер до",
	["General"] = "Общее",
	["Ghost"] = "Призрак",
	["Global"] = "Основное",
	["Group %d"] = "Группа %d",
	["Group by"] = "Групировать по",
	["Group number"] = "Номер группы",
	["Groups"] = "Группы",
	["Growth"] = "Возрастание",
	["Half health"] = "Половина здоровья",
	["Happiness"] = "Настроение",
	["Health bar"] = "Полосы здоровья",
	["Health bar color for friendly units."] = "Цвет полосы здоровья дружелюбных существ/игроков.",
	["Health bar color for hostile units."] = "Цвет полосы здоровья враждебныых существ/игроков.",
	["Health bar color for neutral units."] = "Цвет полосы здоровья равнодушных существ/игроков.",
	["Health bar color to use for hostile units who you cannot attack, used for reaction coloring."] = "Используемый цвет полосы здоровья для враждебных существ/игроков которых вы не можете атаковать, используемое отображение окраски реакции цели.",
	["Health bar color to use to show how much healing someone is about to receive."] = "Дополнительный цвет(полоса) на полосе здоровья покажыт, входящее исцеление, т.е. на сколько будет исцелен объект.",
	["Health bar color used as the transitional color for 100% -> 0% on players, as well as when your pet is mildly unhappy."] = "Health bar color used as the transitional color for 100% -> 0% on players, as well as when your pet is mildly unhappy.",
	["Health bar color used as the transitional color for 100% -> 50% on players, as well as when your pet is happy."] = "Health bar color used as the transitional color for 100% -> 50% on players, as well as when your pet is happy.",
	["Health bar color used as the transitional color for 50% -> 0% on players, as well as when your pet is very unhappy."] = "Health bar color used as the transitional color for 50% -> 0% on players, as well as when your pet is very unhappy.",
	["Health color"] = "Цвет здоровья",
	["Health percent"] = "Процент здоровья",
	["Height"] = "Высота",
	["Help"] = "Справка",
	["Hide %s"] = "Скрыть %s",
	["Hide Blizzard"] = "Сокрытие Blizzard рамок",
	["Hide in 5-man raid"] = "Скрыть в 5-чел рейде",
	["Hide in any raid"] = "Скрыть в любом рейде",
	["Hide tooltips in combat"] = "Скрыть подсказки в бою",
	["Hides the cooldown ring for any auras that you did not cast."] = "Скрывает время восстановления для всех эффектов, которые вы не применяли.",
	["High health"] = "Много здоровья",
	["Highlight"] = "Допсветка",
	["Highlight aggro"] = "Допсветка при угрозе",
	["Highlight debuffed"] = "Допсветка зараженного",
	["Highlight mouseover"] = "Допсветка при наводе мыши",
	["Highlight target/focus"] = "Допсветка цели/фокуса",
	["Highlight units that are debuffed with something you can cure."] = "Подсвечивать игрока, который паражен отрицательным эффектом который вы можете излечить/рассеять.",
	["Highlight units that have aggro on any mob."] = "Подсвечивать игрока, на которому угрожает любое существо.",
	["Highlight units that you are targeting or have focused."] = "Подсвечивать игрока/существо, на которое вы нацелились или взяли в фокус.",
	["Highlight units when you mouse over them."] = "Подсвечивать игрока, когды вы наводите курсор мыши на него.",
	["Hostile"] = "Враждебные",
	["How close the frame should clip with the border."] = "Установка срезания от края рамки.",
	["How large the background should tile"] = "Изменение размера мазайки фона.",
	["How large the edges should be."] = "Изменение размера контура.",
	["How many auras per a column for example, entering two her will create two rows that are filled up to whatever per row is set as."] = "Сколько должно отображаться аура в колонке.",
	["How many auras to show in a single row."] = "Сколько показывать аур в одном ряду.",
	["How many rows total should be used, rows will be however long the per row value is set at."] = "Сколько должно использоваться рядов в общем количестве, все ряды будут одинаковой длины которая установлена в соответствующих опциях.",
	["How much of the frames total height this bar should get, this is a weighted value, the higher it is the more it gets."] = "Общая высота этой полосы в ремке, это взвешенное значение, чем больше значение тем больше она будет.",
	["How much weight this should use when figuring out the total text width."] = "Используемое значение, которое определяется от общей ширины текста.",
	["How the columns should grow when too many people are shown in a single group."] = "Установка возрастания колонок, когда слишком много людей отображаються в одной группе.",
	["How the frame should grow when new group members are added."] = "Установка возрастания рамок, при добавлении нового члены группы.",
	["How you want this aura to be anchored to the unit frame."] = "Установка расположения аур на рамке.",
	["If the unit is hostile, the reaction color will override any color health by options."] = "Если сужество/игрок является враждебный, цвет будет доминировать над любыми другими цветами здоровья.",
	["If you casted the aura, then the buff icon will be increased in size to make it more visible."] = "Если вы применили ауру, то её значок будет увеличен в размере, что сделает её более заметной.",
	["If you hide a frame, you will have to do a /console reloadui for them to show back up again."] = "Если вы скрыли рамки и для того чтобы они снова появились, вы должны ввести в чат команду /console reloadui.",
    ["In range alpha"] = "Прозрачность в досягаемости",
	["In this category you can configure all of the enabled units, both what features to enable as well as tweaking the layout. Advanced settings in the general category if you want to be able to get finer control on setting options, but it's not recommended for most people.\n\nHere's what each tab does\n\nGeneral - General settings, portrait settings, combat text, anything that doesn't fit the other categories.\n\nFrame - Frame settings, scale, height, width. You can set the frame to be anchored to another here.\n\nBars - Enabling bars (health/cast/etc) as well as setting how the health bar can be colored.\n\nWidget size - Widget sizing, ordering, height.\n\nAuras - What filters to use, where to place auras.\n\nText - Quickly add and remove tags to text, when advanced settings are enabled you can also change the width and positioning of text."] = "В этой категории Вы можете настроить все включенные рамки. Дополнительные настройки в общей категории, если вы хотите более тонкой настройки параметров, перейдите на другие вкладки, но это не рекомендуется для большинства пользователей..\n\nВот что находиться во вкладках:\n\nОбщее - Общие настройки, настройка портретов, текст боя, всё остальное, что не соответствует другим категориям..\n\nРамка- Настройки рамки, масштаб, высота, ширина. Тут вы можете привязать рамку к другой.\n\nПолосы - Включение полос (здоровья/применения/и т.д.) также установка окраски.\n\nРазмер виджета - Размер виджета, порядок, высота.\n\nАуры - Какой фильтр использовать, кде резместить ауры..\n\nТекст - Позволяет быстро изменить теги текста, если включен расширенный режим вы также сможете изменить размер и расположения текста.",
	["Inactive alpha"] = "Прозрачность в бездействии",
	["Incoming heal"] = "Входящее исцеление",
	["Incoming heals"] = "Входящие исцеления",
	["Indicators"] = "Индикаторы",
	["Inside"] = "Внутри",
	["Inside Center"] = "Внутри по центру",
	["Inside Center Left"] = "Внутри по центру слева",
	["Inside Center Right"] = "Внутри по центру справа",
	["Inside Top Left"] = "Внутри вверху слева",
	["Inside Top Right"] = "Внутри верху справа",
	["Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nSee the above example tabs for examples on basic tag creation.\n\nTags also support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything."] = "Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nSee the above example tabs for examples on basic tag creation.\n\nTags also support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything.",
	["Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nTags support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything."] = "Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nTags support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything.",
	["Left"] = "Слева",
	["Left Bottom"] = "Слева внизу",
	["Left Center"] = "Слева по центру",
	["Left Top"] = "Слева вверху",
	["Left text"] = "Текст слева",
	["Let's you modify the base font size to either make it larger or smaller."] = "Позволяет изменить базовый размер шрифта либо сделать его больше либо меньше.",
	["Level without any coloring."] = "Уровень без окраски.",
	["Lock frames"] = "Закрепить рамки",
	["Low health"] = "Мало здоровья",
	["Male"] = "Муж.",
	["Mana"] = "Мана",
	["Manual position"] = "Указать позицию",
	["Max columns"] = "Макс колонок",
	["Max health, uses a short format, 17750 is formatted as 17.7k, values below 10000 are formatted as is."] = "Макс здоровья, используется формат сокращения, 17750 отображается как 17.7k, значения ниже 10000 не форматируются.",
	["Max power, uses a short format, 16000 is formatted as 16k, values below 10000 are formatted as is."] = "Макс энергии, используется формат сокращения, 16000 отображается как 16k, vзначения ниже 10000 не форматируются.",
	["Max rows"] = "Макс рядов",
	["Neutral"] = "Равнодушные",
	["None"] = "Нету",
	["Offline"] = "Вышел из сети",
	["Offsets are saved using effective scaling, this is to prevent the frame from jumping around when you reload or login."] = "Смещение\позиция, сохраняется с помощью эффективного масштабирования, это предотвращает рамки от смещения при перезагрузке или пере-заходе.",
	["Or you can set a position manually"] = "Или же вы можете установить позицию вручную.",
	["Order"] = "Порядок",
	["Order to use for the portrait, this only applies if you have a full sized bar."] = "Порядок использования портрета, это применимо только если полосы установлены в натуральную величину.",
	["Out of range alpha"] = "Прозрачность в не досягаемости",
	["Party frames are hidden while in a raid group with more than 5 people inside."] = "Рамки группы будут скрыты, если в рейде больше 5 человек.",
	["Party frames are hidden while in any sort of raid no matter how many people."] = "Рамки группы будут скрыты, независимо от количества участников в рейде.",
	["Party member"] = "Номер группы",
	["Per column"] = "В колонке",
	["Per row"] = "В ряду",
	["Percentage of width the portrait should use."] = "Ширина портрета в процентах.",
	["Point"] = "Точка",
	["Portrait"] = "Портрет",
	["Portrait type"] = "Тип портрета",
	["Position"] = "Позиция",
	["Power bar"] = "Полоса энергии",
	["Power color"] = "Цвет энергии",
	["Primary talents"] = "первый набор талантов",
	["Prioritize buffs"] = "Приоритеты баффам",
	["Programming in Lua"] = "Программирование в Lua",
	["Rage"] = "Ярость",
	["Raid groups to show"] = "Показываемые рейд группы",
	["Range indicator"] = "Индикатор ярости",
	["Rare"] = "Редкий",
	["Rare Elite"] = "Редкий Элита",
	["Reaction color code, use [reactcolor][name][close] to color the units name by their reaction."] = "Код окраски реакции, используйте [reactcolor][name][close] для окраски имени игрока/существа в соответствии с его реакцией к вам.",
	["Relative point"] = "Относительно точке",
	["Resources"] = "Ресурсы",
	["Returns + if the unit is an elite or rare elite mob."] = "Returns + if the unit is an elite or rare elite mob.",
	["Returns Rare if the unit is a rare or rare elite mob."] = "Returns Rare if the unit is a rare or rare elite mob.",
	["Returns current health as a percentage, if the unit is dead or offline than that is shown instead."] = "Returns current health as a percentage, if the unit is dead or offline than that is shown instead.",
	["Returns current power as a percentage."] = "Returns current power as a percentage.",
	["Returns the units sex."] = "Returns the units sex.",
	["Right"] = "Справа",
	["Right Bottom"] = "Справа внизу",
	["Right Center"] = "Справа по центру",
	["Right Top"] = "Справа верху",
	["Right text"] = "Текст справа",
	["Row offset"] = "Смещение ряда",
	["Rune bar"] = "Полоса рун",
	["Runic Power"] = "Сила рун",
	["Same tag as %s, but this only shows up if the unit is in Bear or Cat form."] = "Тет же тег как и %s, но это будет отображаться только если игрок/существо находится в облике медведя или кошки.",
	["Scale"] = "Масштаб",
	["Screen"] = "Экран",
	["Search"] = "Поиск",
	["Search tags"] = "Поиск тегов",
	["Secondary talents"] = "Второй набор талантов",
	["See the documentation below for information and examples on creating tags, if you just want basic Lua or WoW API information than see the Programming in Lua and WoW Programming links."] = "See the documentation below for information and examples on creating tags, if you just want basic Lua or WoW API information than see the Programming in Lua and WoW Programming links.",
	["Select a text widget from the left side panel to set tags, you can use this page to change the truncate width and sizing."] = "Выберите текст виджета из панели с лева. Используйте эту страницу чтобы установить теги, изменить/сократить их ширину и размер.",
	["Select the units that you want to modify, any settings changed will change every unit you selected. If you want to anchor or change raid/party unit specific settings you will need to do that through their options.\n\nShift click a unit to select all/unselect all."] = "Выберите рамку которую вы хотите изменить, когда вы поменяете настройики в выбранных рамках, то они изменяться в их настройках. Если вы хотите привязать или изменить особые настройки рамок рейда/группы, то вам придется сделать это через их настройки.\n\nУдерживая Shift кликните мышкой, чтобы выбрать/отменить все.",
	["Sets if unit tooltips should be hidden while in combat."] = "Скрывает подсказки рамок в бою.",
	["Short classifications, R for Rare, R+ for Rare Elite, + for Elite, B for boss, nothing is shown if they aren't any of those."] = "Сокращение классификации, Редкий - R, Редкий Элита - R+, Элита - +, Босс - B, если у существа нету классификации, то ничего отображаться не будет.",
	["Show a background behind the bars with the same texture/color but faded out."] = "Показать фон за полосой с одинаковой текстурой/цветом, но постепенно исчезающий.",
	["Show background"] = "Показать фон",
	["Show buffs before debuffs when sharing the same anchor point."] = "Показать баффы раньше дебаффов, когда и те и другие используют одну и туже привязку (месторасположение).",
	["Show cast icon"] = "Показать иконку",
	["Show cast name"] = "Показать название",
	["Show cast time"] = "Показать время",
	["Show castable on other auras only"] = "Показывать только применяемые ауры другими",
	["Show curable only"] = "Показать только излечимые",
	["Show your auras only"] = "Показать только ваши ауры",
	["Shows AFK or DND flags if they are toggled."] = "Показывать метки \"Отсутствует\" или \"Не беспокоить\", если они включены.",
	["Shows example frames using the same sizing and position as the real ones do, these example frames can be repositioned.\n\nThis setting is not persistent and the option will be disabled once you log out."] = "Shows example frames using the same sizing and position as the real ones do, these example frames can be repositioned.\n\nThis setting is not persistent and the option will be disabled once you log out.",
	["Shows the current group number of the unit."] = "Показывает текущий номер группы игрока.",
	["Shows the units health as a percentage rounded to the first decimal, meaning 61 out of 110 health is shown as 55.4%."] = "Показывает здоровье в процентах с округлением до первого десятичного числа, то есть 61 из 110 здоровья будет показано как 55,4%.",
	["Size"] = "Размер",
	["Smart level, returns Boss for bosses, +50 for a level 50 elite mob, or just 80 for a level 80."] = "Smart level, returns Boss for bosses, +50 for a level 50 elite mob, or just 80 for a level 80.",
	["Smart number formating for [curmaxhp], numbers above 1,000,000 are left as is, numbers above 1,000,000 will use the short version such as 1m."] = "Smart number formating for [curmaxhp], numbers above 1,000,000 are left as is, numbers above 1,000,000 will use the short version such as 1m.",
	["Smart number formating for [curmaxpp], numbers above 1,000,000 are left as is, numbers above 1,000,000 will use the short version such as 1m."] = "Smart number formating for [curmaxpp], numbers above 1,000,000 are left as is, numbers above 1,000,000 will use the short version such as 1m.",
	["Sort order"] = "Порядок сортировки",
	["Spacing"] = "Промежуток",
	["Static"] = "Статический",
	["Tag list"] = "Список тегов",
	["Tag name"] = "Название тега",
	["Tag that you will use to access this code, do not wrap it in brackets or parenthesis it's automatically done. For example, you would enter \"foobar\" and then access it with [foobar]."] = "Tag that you will use to access this code, do not wrap it in brackets or parenthesis it's automatically done. For example, you would enter \"foobar\" and then access it with [foobar].",
	["Tags"] = "Теги",
	["Text"] = "Текст",
	["Text management"] = "Управление текстом",
	["Text name"] = "Название текста",
	["Text name that you can use to identify this text from others when configuring."] = "Названия текста, которые поможет идентифицировать его среди других во время настройки.",
	["Text parent"] = "Родитель текста",
	["The black boxes you see can be used to position different units in Shadowed Unit Frames.\n\nLocking the frames through the button below or in /shadoweduf (/suf) will hide them."] = "Черные блоки которые вы видите, можно перемещать тем самым настроить расположение рамок Shadowed Unit Frames.\n\nЧтобы скрыть эти блоки, нажмите на кнопку ниже, или в /shadoweduf (/suf).",
	["The tag \"%s\" already exists."] = "Тег \"%s\", уже существует.",
	["Thick outline"] = "Толстый контур",
	["Thin outline"] = "Тонкий контур",
	["This bar will automatically hide when you are at the level cap, or you do not have any reputations tracked."] = "Эта полоса автоматически скроется, когда вы достигнете максимального уровня или у вас не будет никакой отслеживаемой репутаций.",
	["This is a good guide on how to get started with programming in Lua, while you do not need to read the entire thing it is a helpful for understanding the basics of Lua syntax and API's."] = "This is a good guide on how to get started with programming in Lua, while you do not need to read the entire thing it is a helpful for understanding the basics of Lua syntax and API's.",
	["This will disable the automatic detection of what events this tag will need, you should leave this unchecked unless you know what you are doing."] = "This will disable the automatic detection of what events this tag will need, you should leave this unchecked unless you know what you are doing.",
	["This will enable fast updating of the health bar, giving you more slightly faster health bar information than you normally would get."] = "Это включает быстрое обновление полосы здоровья, что позволит слегка быстрее получать информацию о здоровье чем обычно.",
	["This will enable fast updating of the power bar, giving you more slightly faster power information than you normally would get."] = "Это включает быстрое обновление полосы энергии, что позволит слегка быстрее получать информацию о энергии чем обычно.",
	["Tile size"] = "Размер мазайки",
	["Timers for self auras only"] = "Таймеры только для ваших аур",
	["Top"] = "Сверху",
	["Top Center"] = "Сверху по центру",
	["Top Left"] = "Сверху слева",
	["Top Right"] = "Сверху справа",
	["Total number of combo points you have on your target."] = "Всего накопившихся приёмов в серии на текущей цели.",
	["Totem bar"] = "Полоса тотемов",
	["Unattackable hostile"] = "Неатакуемые враждебные",
	["Unit name"] = "Имя/название сещества/игрока",
	["Unit name colored by class."] = "Окраска названия/имени игрока/существа в соответствии с цветом его класса.",
	["Unit race, for a Blood Elf then Blood Elf is returned, for a Night Elf than Night Elf is returned and so on."] = "Unit race, for a Blood Elf then Blood Elf is returned, for a Night Elf than Night Elf is returned and so on.",
	["Units"] = "Рамки",
	["Units alignment, Thrall will return Horde, Magni Bronzebeard will return Alliance."] = "Units alignment, Thrall will return Horde, Magni Bronzebeard will return Alliance.",
	["Units classification, Rare, Rare Elite, Elite, Boss, nothing is shown if they aren't any of those."] = "Классификация игрока/существа, Редкий, Редкий Элита, Элита, Босс. Остаётся пустым, если существо не принадлежить какой-либо классификации.",
	["Units per column"] = "Рамок в колонке",
	["Units status, Dead, Ghost, Offline, nothing is shown if they aren't any of those."] = "Состояние игрока/существа, труп, призрак, вышел из сети. Остаётся пустым если нету активного состояния.",
	["Up"] = "Вверху",
	["Using unit settings"] = "Использование настроек рамок",
	["Vehicles"] = "Транспорт",
	["Visibility"] = "Отображение",
	["When the unit is mising health, the [missinghp] tag is shown, when they are at full health then the [name] tag is shown. This lets you see -1000 when they are missing 1000 HP, but their name when they are not missing any."] = "When the unit is mising health, the [missinghp] tag is shown, when they are at full health then the [name] tag is shown. This lets you see -1000 when they are missing 1000 HP, but their name when they are not missing any.",
	["Where inside the frame the text should be anchored to."] = "В каком месте, внутри рамки, должно быть расположен текст.",
	["Where to anchor the cast name text."] = "Установка расположение текста названия применения.",
	["Where to anchor the cast time text."] = "Установка расположение текста времени применения.",
	["Widget size"] = "Размер виджета",
	["Width"] = "Ширина",
	["Width percent"] = "Ширина в %",
	["Width weight"] = "Ширина",
	["WoW Programming"] = "WoW программирование",
	["WoW Programming is a good resource for finding out what difference API's do and how to call them."] = "WoW программирование - отличный ресурс, где можно узнать о различных функциях API.",
	["X Offset"] = "Смещение по X",
	["XP/Rep bar"] = "Индикатор опыта/реп.",
	["Y Offset"] = "Смещение по Y",
	["You can add additional text with tags enabled using this configuration, note that any additional text added (or removed) effects all units, removing text will resettheir settings as well.\n\nKeep in mind, you cannot delete the default text included with the units."] = "You can add additional text with tags enabled using this configuration, note that any additional text added (or removed) effects all units, removing text will resettheir settings as well.\n\nKeep in mind, you cannot delete the default text included with the units.",
	["You can add new custom tags through this page, if you're looking to change what tags are used in text look under the Text tab for an Units configuration."] = "На этой странице вы можете добавить новые пользовательские теги, а также изменить существующие.",
	["You can find more information on creating your own custom tags in the \"Help\" tab above."] = "Вы можете найти более подробную информацию о создании собственных пользовательских тегов в вкладке \"Справка \".",
	["You can find more information on creating your own custom tags in the \"Help\" tab above.\nSUF will attempt to automatically detect what events your tag will need, so you do not generally need to fill out the events field."] = "Вы можете найти более подробную информацию о создании собственных пользовательских тегов в вкладке \"Справка \".\nSUF попытается автоматически определить, какие события вашему тегу нужны, чтобы вам, как правило, не нужно былобы, заполнять поле событий.",
	["You can select a specific profile you want to use based off your primary or secondary talent specializations. Setting the talent profile to none will disable switching based off your current talents."] = "Вы можете выбрать конкретный профиль, который вы хотите использовать для первого набора талантов или же для второго.",
	["You can set different units to be enabled or disabled in different areas here.\nGold checked are enabled, Gray checked are disabled, Unchecked are ignored and use the current set value no matter the zone."] = "Здесь вы можете установить включение/отключение различных рамок в определённых зонах.\nЕсли помечено золотым - включено, помечено серый - отключены. Если вообще не отмечено, значит настройки будут игнорироваться и будут использоваться текущие установки вне зависимости от зоны.",
	["You cannot edit this tag because it is one of the default ones included in this mod. This function is here to provide an example for your own custom tags."] = "Вы не можете изменить этот тег, поскольку он является одним из входящих по умолчанию в состав кода данного аддона. Эта функция здесь, служить примером для вас, в создании пользовательских тегов.",
	["You cannot name a tag \"%s\", tag names should contain no brackets or parenthesis."] = "You cannot name a tag \"%s\", tag names should contain no brackets or parenthesis.",
	["You have to set the events to fire, you can only enter letters and underscores, \"FOO_BAR\" for example is valid, \"APPLE_5_ORANGE\" is not because it contains a number."] = "Вы должны установить события для срабатывания, вы можете ввести только буквы и символы подчёркивания. К примеру: \"FOO_BAR \" действителен, \"APPLE_5_ORANGE \" нет, потому что оно содержит число.",
	["You must enter a tag name."] = "Вы должны ввести название тега.",
	["You must wrap your code in a function."] = "Вы должны обернуть свой код в функцию.",
	["Your code must be wrapped in a function, for example, if you were to make a tag to return the units name you would do:\n\nfunction(unit, unitOwner)\nreturn UnitName(unit)\nend"] = "Your code must be wrapped in a function, for example, if you were to make a tag to return the units name you would do:\n\nfunction(unit, unitOwner)\nreturn UnitName(unit)\nend",
		
	["classes"] = {
		["DEATHKNIGHT"] = "Рыцарь смерти",
		["DRUID"] = "Друид",
		["HUNTER"] = "Охотник",
		["MAGE"] = "Маг",
		["PALADIN"] = "Паладин",
		["PET"] = "Питомец",
		["PRIEST"] = "Жрец",
		["ROGUE"] = "Разбойник",
		["SHAMAN"] = "Шаман",
		["VEHICLE"] = "Транспорт",
		["WARLOCK"] = "Чернокнижник",
		["WARRIOR"] = "Воин",
	},

	["indicators"] = {
		["happiness"] = "Настроение",
		["leader"] = "Лидер",
		["masterLoot"] = "Ответственный за добычу",
		["pvp"] = "Метка PvP",
		["raidTarget"] = "Цель рейда",
		["ready"] = "Статус готовности",
		["status"] = "Состояние",
	},

	["areas"] = {
		["arena"] = "Арены",
		["none"] = "Везде",
		["party"] = "Групповые подземелья",
		["pvp"] = "Поля боя",
		["raid"] = "Рейдовые подземелья",
	},

	["headers"] = {
		["party"] = "Группа #%d",
		["raid"] = "Рейд #%d",
	},

	["units"] = {
		["targettargettarget"] = "Цель цели вашей цели",
		["partytarget"] = "Цели группы",
		["focustarget"] = "Цель фокуса",
		["pet"] = "Питомец",
		["pettarget"] = "Цель питомца",
		["partypet"] = "Питомцы группы",
		["player"] = "Игрок",
		["focus"] = "Фокус",
		["target"] = "Цель",
		["raid"] = "Рейд",
		["targettarget"] = "Цель цели",
		["party"] = "Группа",
	},
}, {__index = ShadowUFLocals})