-- 第三方语言库支持由Pathfinder_FUFU提供

if (SERVER) then return end

local KVLangLib = {
	["en"] = { -- English
		-- Skins
		["KV_LangLib_Skin.Category"] = "Skins",
		-- Barrels
		["KV_LangLib_Barrel.Category"] = "Barrels",
		-- Grips
		["KV_LangLib_Grip.Category"] = "Grips",
		-- Stocks
		["KV_LangLib_Stock.Category"] = "Stocks",
		-- Magazines
		["KV_LangLib_Magazines.Category"] = "Magazines",
		-- Muzzle Devices
		["KV_LangLib_Muzzle_Devices.Category"] = "Muzzle Devices",
		-- Lasers
		["KV_LangLib_Laser.Category"] = "Lasers",
		-- Gadgets
		["KV_LangLib_Gadgets.Category"] = "Gadgets",
		["KV_LangLib_Gadgets.Name"] = "MW2 Heartbeat Sensor",
		-- Sights
		["KV_LangLib_Sight.Category"] = "Sights",
		-- Fire Mode
		["KV_LangLib_FireMode.Full_Auto"] = "Full Auto",
		["KV_LangLib_FireMode.Semi_Auto"] = "Semi Auto",
		["KV_LangLib_FireMode.2Round_Burst"] = "2-Round Burst",
		-- Perks
		["KV_LangLib_Perk.Category"] = "Perks",
		["KV_LangLib_Perk.SOH"] = "Sleight of Hand",
		["KV_LangLib_Perk.FMJ"] = "FMJ",
		["KV_LangLib_Perk.Ricochet"] = "Ricochet",
		["KV_LangLib_Perk.ROF"] = "Short-stroke",
		-- Ammo
		["KV_LangLib_Ammo.Category"] = "Ammo",
		-- Animations
		["KV_LangLib_Animations.Category"] = "Animations"
	},
	["zh-CN"] = { -- Simplified Chinese
		-- Skins
		["KV_LangLib_Skin.Category"] = "皮肤",
		-- Barrels
		["KV_LangLib_Barrel.Category"] = "枪管",
		-- Grip
		["KV_LangLib_Grip.Category"] = "握把",
		-- Stocks
		["KV_LangLib_Stock.Category"] = "枪托",
		-- Magazines
		["KV_LangLib_Magazines.Category"] = "弹匣",
		-- Muzzle Devices
		["KV_LangLib_Muzzle_Devices.Category"] = "枪口",
		-- Lasers
		["KV_LangLib_Laser.Category"] = "镭射器",
		-- Gadgets
		["KV_LangLib_Gadgets.Category"] = "特殊附件",
		["KV_LangLib_Gadgets.Name"] = "心跳传感器",
		-- Sights
		["KV_LangLib_Sight.Category"] = "瞄准镜",
		-- Fire Mode
		["KV_LangLib_FireMode.Full_Auto"] = "全自动",
		["KV_LangLib_FireMode.Semi_Auto"] = "半自动",
		["KV_LangLib_FireMode.2Round_Burst"] = "二连发",
		-- Perks
		["KV_LangLib_Perk.Category"] = "特长",
		["KV_LangLib_Perk.SOH"] = "快手",
		["KV_LangLib_Perk.FMJ"] = "全金属被甲弹",
		["KV_LangLib_Perk.Ricochet"] = "跳弹",
		["KV_LangLib_Perk.ROF"] = "短冲程",
		-- Ammo
		["KV_LangLib_Ammo.Category"] = "弹药",
		-- Animations
		["KV_LangLib_Animations.Category"] = "动画"
	},
	["zh-TW"] = { -- Traditional Chinese
		-- Skins
		["KV_LangLib_Skin.Category"] = "造型",
		-- Barrels
		["KV_LangLib_Barrel.Category"] = "槍管",
		-- Grip
		["KV_LangLib_Grip.Category"] = "握把",
		-- Stocks
		["KV_LangLib_Stock.Category"] = "槍托",
		-- Magazines
		["KV_LangLib_Magazines.Category"] = "彈匣",
		-- Muzzle Devices
		["KV_LangLib_Muzzle_Devices.Category"] = "槍口",
		-- Lasers
		["KV_LangLib_Laser.Category"] = "雷射",
		-- Gadgets
		["KV_LangLib_Gadgets.Category"] = "特殊配件",
		["KV_LangLib_Gadgets.Name"] = "心跳感應器",
		-- Sights
		["KV_LangLib_Sight.Category"] = "瞄準鏡",
		-- Fire Mode
		["KV_LangLib_FireMode.Full_Auto"] = "全自動",
		["KV_LangLib_FireMode.Semi_Auto"] = "半自動",
		["KV_LangLib_FireMode.2Round_Burst"] = "二連發",
		-- Perks
		["KV_LangLib_Perk.Category"] = "特長",
		["KV_LangLib_Perk.SOH"] = "快手",
		["KV_LangLib_Perk.FMJ"] = "全金屬被甲彈",
		["KV_LangLib_Perk.Ricochet"] = "跳彈",
		["KV_LangLib_Perk.ROF"] = "短沖程",
		-- Ammo
		["KV_LangLib_Ammo.Category"] = "彈藥",
		-- Animations
		["KV_LangLib_Animations.Category"] = "動畫"
	},
	["ru"] = { -- Russian
		-- Skins
		["KV_LangLib_Skin.Category"] = "Стиль",
		-- Barrels
		["KV_LangLib_Barrel.Category"] = "Ствол",
		-- Grip
		["KV_LangLib_Grip.Category"] = "рукоять",
		-- Stocks
		["KV_LangLib_Stock.Category"] = "Приклад",
		-- Magazines
		["KV_LangLib_Magazines.Category"] = "Магазин",
		-- Muzzle Devices
		["KV_LangLib_Muzzle_Devices.Category"] = "Дуло",
		-- Lasers
		["KV_LangLib_Laser.Category"] = "Лазер",
		-- Gadgets
		["KV_LangLib_Gadgets.Category"] = "Приспособление",
		["KV_LangLib_Gadgets.Name"] = "Датчик сердцебиения",
		-- Sights
		["KV_LangLib_Sight.Category"] = "Прицел",
		-- Fire Mode
		["KV_LangLib_FireMode.Full_Auto"] = "Автоматич.",
		["KV_LangLib_FireMode.Semi_Auto"] = "Полуавтомат.",
		["KV_LangLib_FireMode.2Round_Burst"] = "Отсечка по 2 выстрела",
		-- Perks
		["KV_LangLib_Perk.Category"] = "Перк",
		["KV_LangLib_Perk.SOH"] = "Ловкость рук",
		["KV_LangLib_Perk.FMJ"] = "Оболочечная пуля",
		["KV_LangLib_Perk.Ricochet"] = "Рикошет",
		["KV_LangLib_Perk.ROF"] = "Короткоходный",
		-- Ammo
		["KV_LangLib_Ammo.Category"] = "боеприпа́сы",
		-- Animations
		["KV_LangLib_Animations.Category"] = "Анимация"
	},
	["sv-SE"] = { -- Swedish
		-- Skins
		["KV_LangLib_Skin.Category"] = "Lackeringar",
		-- Barrels
		["KV_LangLib_Barrel.Category"] = "Pipor",
		-- Grip
		["KV_LangLib_Grip.Category"] = "grepp",
		-- Stocks
		["KV_LangLib_Stock.Category"] = "Kolv",
		-- Magazines
		["KV_LangLib_Magazines.Category"] = "Magasin",
		-- Muzzle Devices
		["KV_LangLib_Muzzle_Devices.Category"] = "Mynningsenheter",
		-- Lasers
		["KV_LangLib_Laser.Category"] = "Laser",
		-- Gadgets
		["KV_LangLib_Gadgets.Category"] = "Tillbehör",
		["KV_LangLib_Gadgets.Name"] = "Hjärtslagssensor",
		-- Sights
		["KV_LangLib_Sight.Category"] = "Sikten",
		-- Fire Mode
		["KV_LangLib_FireMode.Full_Auto"] = "Helautomat",
		["KV_LangLib_FireMode.Semi_Auto"] = "Halvautomat",
		["KV_LangLib_FireMode.2Round_Burst"] = "två kulor i taget avfyras",
		-- Perks
		["KV_LangLib_Perk.Category"] = "Färdigheter",
		["KV_LangLib_Perk.SOH"] = "Fingerfärdighet",
		["KV_LangLib_Perk.FMJ"] = "Helmantlad Ammo",
		["KV_LangLib_Perk.Ricochet"] = "Rikoschett",
		["KV_LangLib_Perk.ROF"] = "Kort slaglängd",
		-- Ammo
		["KV_LangLib_Ammo.Category"] = "Ammunition",
		-- Animations
		["KV_LangLib_Animations.Category"] = "Animerad"
	},
}

local userlang = GetConVar("gmod_language"):GetString() local lang = "en"
if userlang != nil and istable(KVLangLib[userlang]) then lang = GetConVar("gmod_language"):GetString() end
for holder, text in pairs(KVLangLib[lang]) do language.Add(holder, text) end