local L = ShadowUFLocals
-- **WARNING**
--[[
	If you are making a layout using RegisterLayout and tables, not through exporting in-game
	you must include the id, name, author, description fields.
]]--

function ShadowUF:LoadDefaultLayout()
	ShadowUF:RegisterLayout("default", {
		id = "default",
		name = "Default",
		author = "Shadowed",
		description = "Default layout provided with Shadowed Unit Frames.",
		layout = {
			bars = {
				texture = "Minimalist",
				spacing = -1.25,
				alpha = 1.0,
				backgroundAlpha = 0.20,
			},
			backdrop = {
				tileSize = 1,
				edgeSize = 5,
				clip = 1,
				inset = 3,
				backgroundTexture = "Chat Frame",
				backgroundColor = {r = 0, g = 0, b = 0, a = 0.80},
				borderTexture = "None",
				borderColor = {r = 0.30, g = 0.30, b = 0.50, a = 1},
			},
			font = {
				name = "Myriad Condensed Web",
				size = 11,
				shadowColor = {r = 0, g = 0, b = 0, a = 1.0},
				shadowX = 0.80,
				shadowY = -0.80,
			},
			classColors = {
				HUNTER = {r = 0.67, g = 0.83, b = 0.45},
				WARLOCK = {r = 0.58, g = 0.51, b = 0.79},
				PRIEST = {r = 1.0, g = 1.0, b = 1.0},
				PALADIN = {r = 0.96, g = 0.55, b = 0.73},
				MAGE = {r = 0.41, g = 0.8, b = 0.94},
				ROGUE = {r = 1.0, g = 0.96, b = 0.41},
				DRUID = {r = 1.0, g = 0.49, b = 0.04},
				SHAMAN = {r = 0.14, g = 0.35, b = 1.0},
				WARRIOR = {r = 0.78, g = 0.61, b = 0.43},
				DEATHKNIGHT = {r = 0.77, g = 0.12 , b = 0.23},
				PET = {r = 0.20, g = 0.90, b = 0.20},
				VEHICLE = {r = 0.40, g = 0.85, b = 0.48}
			},
			powerColors = {
				MANA = {r = 0.30, g = 0.50, b = 0.85}, 
				RAGE = {r = 0.90, g = 0.20, b = 0.30},
				FOCUS = {r = 1.0, g = 0.85, b = 0}, 
				ENERGY = {r = 1.0, g = 0.85, b = 0.10}, 
				HAPPINESS = {r = 0.50, g = 0.90, b = 0.70},
				RUNES = {r = 0.50, g = 0.50, b = 0.50}, 
				RUNIC_POWER = {b = 0.60, g = 0.45, r = 0.35},
				AMMOSLOT = {r = 0.85, g = 0.60, b = 0.55},
				FUEL = {r = 0.85, g = 0.47, b = 0.36},
			},
			healthColors = {
				tapped = {r = 0.5, g = 0.5, b = 0.5},
				red = {r = 0.90, g = 0.0, b = 0.0},
				green = {r = 0.20, g = 0.90, b = 0.20},
				yellow = {r = 0.93, g = 0.93, b = 0.0},
				inc = {r = 0, g = 0.35, b = 0.23},
				enemyUnattack = {r = 0.60, g = 0.20, b = 0.20},
			},
			xpColors = {
				normal = {r = 0.58, g = 0.0, b = 0.55},
				rested = {r = 0.0, g = 0.39, b = 0.88, a = 0.80},
			},
			-- Default unit options
			portrait = {
				enabled = false,
				alignment = "LEFT",
				width = 0.22,
				order = 15,
			},
			auras = {
				buffs = {enabled = false, anchorPoint = "BOTTOM", size = 16, x = 0, y = 0},
				debuffs = {enabled = false, anchorPoint = "BOTTOM", size = 16, x = 0, y = 0},
			},
			text = {
				{width = 0.40, anchorTo = "$healthBar", anchorPoint = "ICL", x = 3, y = 0},
				{width = 0.60, anchorTo = "$healthBar", anchorPoint = "ICR", x = -3, y = 0},

				{width = 0.40, anchorTo = "$powerBar", anchorPoint = "ICL", x = 3, y = 0},
				{width = 0.60, anchorTo = "$powerBar", anchorPoint = "ICR", x = -3, y = 0},
			},
			indicators = {
				raidTarget = {anchorTo = "$parent", anchorPoint = "TC", size = 20, x = 0, y = -14},
				masterLoot = {anchorTo = "$parent", anchorPoint = "TL", size = 12, x = 35, y = 3},
				leader = {anchorTo = "$parent", anchorPoint = "TL", size = 14, x = 2, y = 4},
				pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 40, y = 11},
				ready = {anchorTo = "$parent", anchorPoint = "LC", size = 24, x = 16, y = 0},
			},
			healthBar = {
				background = true,
				fullSize = true,
				height = 1.20,
				width = 1.0,
				order = 10,
			},
			powerBar = {
				background = true,
				height = 1.0,
				width = 1.0,
				order = 20,
			},
			xpBar = {
				background = true,
				height = 0.25,
				width = 1.0,
				order = 30,
			},
			castBar = {
				background = true,
				height = 0.60,
				width = 1.0,
				order = 40,
			},
			runeBar = {
				background = false,
				height = 0.40,
				width = 1.0,
				order = 50,
			},
			totemBar = {
				background = false,
				height = 0.40,
				width = 1.0,
				order = 50,
			},
			positions = {
				targettargettarget = {anchorPoint = "RC", anchorTo = "#SUFUnittargettarget", x = 0, y = 0}, 
				targettarget = {anchorPoint = "TL", anchorTo = "#SUFUnittarget", x = 0, y = 25}, 
				focustarget = {anchorPoint = "TL", anchorTo = "#SUFUnitfocus", x = 0, y = 25},
				party = {anchorPoint = "BL", anchorTo = "#SUFUnitplayer", x = 0, y = -30}, 
				focus = {anchorPoint = "RB", anchorTo = "#SUFUnittarget", x = 40, y = 0}, 
				target = {anchorPoint = "RC", anchorTo = "#SUFUnitplayer", x = 50, y = 0}, 
				player = {point = "TOPLEFT", anchorTo = "UIParent", relativePoint = "TOPLEFT", y = -25, x = 20}, 
				pet = {anchorPoint = "TL", anchorTo = "#SUFUnitplayer", x = 0, y = 25}, 
				partypet = {anchorPoint = "RB", anchorTo = "#SUFHeaderparty", x = 0, y = 0},
				partytarget = {anchorPoint = "RT", anchorTo = "#SUFHeaderparty", x = 0, y = 0},
				raid = {anchorPoint = "C", anchorTo = "UIParent", x = 0, y = 0},
			},
			-- Units
			raid = {
				width = 100,
				height = 30,
				scale = 0.85,
				unitsPerColumn = 8,
				maxColumns = 8,
				columnSpacing = -5,
				attribPoint = "TOP",
				attribAnchorPoint = "RIGHT",
				powerBar = {height = 0.60},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[group( )][afk( )][name]"},
					{text = "[curhp]"},
					{text = ""},
					{text = "[curpp]"},
				},
			},
			player = {
				width = 190,
				height = 55,
				scale = 1.0,
				portrait = {enabled = true},
				auras = {
					buffs = {enabled = true},
					debuffs = {enabled = true},
				},
				indicators = {
					status = {anchorTo = "$parent", anchorPoint = "LB", size = 16, x = 12, y = -2},
				},
				text = {
					{text = "[afk( )][name][( ()group())]"},
					{text = "[curmaxhp]"},
					{text = "[perpp]"},
					{text = "[curmaxpp]"},
				},
			},
			party = {
				width = 190,
				height = 50,
				scale = 1.0,
				attribPoint = "TOP",
				attribAnchorPoint = "LEFT",
				yOffset = -20,
				auras = {
					buffs = {enabled = true},
					debuffs = {enabled = true},
				},
				portrait = {enabled = true},
			},
			partypet = {
				width = 90,
				height = 25,
				scale = 1.0,
				powerBar = {height = 0.60},
				text = {
					{text = "[name]"},
					{text = "[curhp]"},
					{text = ""},
					{text = ""},
				},
			},
			partytarget = {
				width = 90,
				height = 25,
				scale = 1.0,
				powerBar = {height = 0.60},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[afk( )][name]"},
					{text = "[curhp]"},
					{text = ""},
					{text = ""},
				},
			},
			target = {
				width = 190,
				height = 55,
				scale = 1.0,
				portrait = {enabled = true},
				comboPoints = {anchorTo = "$parent", anchorPoint = "BR", x = -3, y = 8, size = 14, spacing = -4, growth = "UP"},
				indicators = {
					raidTarget = {anchorTo = "$parent", anchorPoint = "TC", size = 20, y = -15},
					masterLoot = {anchorTo = "$parent", anchorPoint = "TR", size = 12, x = -37, y = -9},
					leader = {anchorTo = "$parent", anchorPoint = "TR", size = 14, x = -2, y = -10},
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = -3, y = 11},
				},
				auras = {
					buffs = {enabled = true},
					debuffs = {enabled = true},
				},
				text = {
					{text = "[afk( )][name]", anchorTo = "$healthBar"},
					{text = "[curmaxhp]", anchorTo = "$healthBar"},
					
					{text = "[level( )][perpp]", anchorTo = "$powerBar"},
					{text = "[curmaxpp]", anchorTo = "$powerBar"},
				},
			},
			pet = {
				width = 190,
				height = 30,
				scale = 1.0,
				powerBar = {height = 0.70},
				indicators = {
					status = {anchorTo = "$parent", anchorPoint = "LB", size = 16, y = -2, x = 12},
					happiness = {anchorTo = "$parent", anchorPoint = "BR", x = 0, y = 0},
				},
				text = {
					{text = "[name]"},
					{text = "[curmaxhp]"},
					{text = "[perpp]"},
					{text = "[curmaxpp]"},
				},
			},
			focus = {
				width = 120,
				height = 30,
				scale = 1.0,
				powerBar = {height = 0.70},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[afk( )][name]"},
					{text = "[curhp]"},
					{text = "[perpp]"},
					{text = "[curpp]"},
				},
			},
			focustarget = {
				width = 120,
				height = 30,
				scale = 1.0,
				powerBar = {height = 0.60},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[afk( )][name]"},
					{text = "[maxhp]"},
					{text = ""},
					{text = ""},
				},
			},
			targettarget = {
				width = 110,
				height = 30,
				scale = 1.0,
				powerBar = {height = 0.70},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[name]"},
					{text = "[curhp]"},
					{text = "[perpp]"},
					{text = "[curpp]"},
				},
			},
			targettargettarget = {
				width = 80,
				height = 30,
				scale = 1.0,
				powerBar = {height = 0.60},
				indicators = {
					pvp = {anchorTo = "$parent", anchorPoint = "BL", size = 22, x = 0, y = 11},
				},
				text = {
					{text = "[name]", width = 1.0},
					{text = ""},
					{text = ""},
					{text = ""},
				},
			},
		},
	})
end