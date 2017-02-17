function LHCF_GetLocalizationTable(lang)
	if not LHCFLocalization then
		LHCFLocalization = {}
	end
	if lang =="huHU" then
		LHCFLocalization["LHCF_CORE_TITLE"] = "Az OOW klán imba hangeffekt addonja"
		LHCFLocalization["LHCF_HELP_TITLE"] = "|cffff9933" .. "SÚGÓ"
		LHCFLocalization["LHCF_HELP_TEXT"] = "|cffff9933" .. "Súgó az OOW imba hangeffekt addonjához:\n  |cffffff00/lhcf|cffff9933 - Kék ablak megjelenítése\n  |cffffff00/lhcf help|cffff9933 - Ennek a súgónak a megjelenítése\n  |cffffff00/lhcf <szín>|cffff9933 - <szín> szerinti ablak megjelenítése\n    <szín> lehet: fekete, kek, rozsaszin, piros, zold, sarga, feher\n  |cffffff00/lhcf <effekt>|cffff9933 - <effekt> lejátszása\n    Az <effekt> lehet: bennyhill, leeroy, thuncat, power, fifty, handle, hithard, hitit, moredots1, moredots2, runto, hullak, hshot, flawless, puska, godlike, killingspree, monsterkill, rampage, ultrakill, unstoppable, xkill, badpull, matrix, sgodlike, hsit, elkurtuk, nem, mkay, ufo, vissza, gomba, persze, hatszel, idiota, jonarez, korhaz, lehugyoza, murloc, nicedress, pokmalac, trollololol, badget, boldog, fckbliz, ikillyou, kenny, keycat, olj, prepared, rabbids, rickastley, rouges, swedishmeal, szokecigany, ticktack, matrix, sgodlike, unstoppable, xkill, megvagy, inditjuk"
		LHCFLocalization["LHCF_DROPDOWN_HATED"] = "Ezt utálom"
		LHCFLocalization["LHCF_DROPDOWN_FAV"] = "Kedvenc"
	end
	if lang =="enUS" then
		LHCFLocalization["LHCF_SETLANGUAGE_TITLE"] = "BEÁLLÍTÁSOK\n\nÚgy látszik most használod először a \nLeeroyHillCatsPower addont, ezért légyszi \nállítsd be az addon nyelvét.\n\nIt looks like you are using \nthe LeeroyHillCatsPower addon for the first time,\n so please set your preferred language.\n\nEz a különféle menük és feliratok nyelvét szabályozza.\n\nThis setting controls the language of the menus and texts."
		LHCFLocalization["LHCF_CORE_TITLE"] = "The Amazing Sound Effect Addon"
		LHCFLocalization["LHCF_HELP_TITLE"] = "|cffff9933" .. "HELP"
		LHCFLocalization["LHCF_HELP_TEXT"] = "|cffff9933" .. "Help for the Amazing Sound Effect Addon:\n  |cffffff00/lhcf|cffff9933 - show / hide addon window with blue background\n  |cffffff00/lhcf help|cffff9933 - Show this help text\n  |cffffff00/lhcf <color>|cffff9933 - show the addon window with a <color> background\n    <color> can be: black, blue, pink, red, green, yellow, white\n  |cffffff00/lhcf <effect>|cffff9933 - play <effect>\n    where <effect> can be: bennyhill, leeroy, thuncat, power, fifty, handle, hithard, hitit, moredots1, moredots2, runto, hullak, hshot, flawless, puska, godlike, killingspree, monsterkill, rampage, ultrakill, unstoppable, xkill, badpull, matrix, sgodlike, hsit, elkurtuk, nem, mkay, ufo, vissza, gomba, persze, hatszel, idiota, jonarez, korhaz, lehugyoza, murloc, nicedress, pokmalac, trollololol, badget, boldog, fckbliz, ikillyou, kenny, keycat, olj, prepared, rabbids, rickastley, rouges, swedishmeal, szokecigany, ticktack, matrix, sgodlike, unstoppable, xkill, megvagy, inditjuk"
		LHCFLocalization["LHCF_DROPDOWN_HATED"] = "I hate this"
		LHCFLocalization["LHCF_DROPDOWN_FAV"] = "Favorite"
	end
	return LHCFLocalization
end