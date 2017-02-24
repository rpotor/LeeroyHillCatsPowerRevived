function LHCF_GetLocalizationTable(lang)
	if not LHCFLocalization then
		LHCFLocalization = {}
	end
	if lang =="huHU" then
		LHCFLocalization["LHCF_CORE_TITLE"] = "Az OOW klán imba hangeffekt addonja"
		LHCFLocalization["LHCF_HELP_TITLE"] = "|cffff9933" .. "SÚGÓ"
		LHCFLocalization["LHCF_SETTINGS_TITLE"] = "|cffff9933" .. "BEÁLLÍTÁSOK"
		LHCFLocalization["LHCF_HELP_TEXT"] = "|cffff9933" .. "Súgó az OOW imba hangeffekt addonjához:\n  |cffffff00/lhcf|cffff9933 - Kék ablak megjelenítése\n  |cffffff00/lhcf help|cffff9933 - Ennek a súgónak a megjelenítése\n  |cffffff00/lhcf <szín>|cffff9933 - <szín> szerinti ablak megjelenítése\n    <szín> lehet: fekete, kek, rozsaszin, piros, zold, sarga, feher\n  |cffffff00/lhcf <effekt>|cffff9933 - <effekt> lejátszása\n    Az <effekt> lehet: bennyhill, leeroy, thuncat, power, fifty, handle, hithard, hitit, moredots1, moredots2, runto, hullak, hshot, flawless, puska, godlike, killingspree, monsterkill, rampage, ultrakill, unstoppable, xkill, badpull, matrix, sgodlike, hsit, elkurtuk, nem, mkay, ufo, vissza, gomba, persze, hatszel, idiota, jonarez, korhaz, lehugyoza, murloc, nicedress, pokmalac, trollololol, badget, boldog, fckbliz, ikillyou, kenny, keycat, olj, prepared, rabbids, rickastley, rouges, swedishmeal, szokecigany, ticktack, matrix, sgodlike, unstoppable, xkill, megvagy, inditjuk"
		LHCFLocalization["LHCF_HELP_TEXT_PG2"] = "|cffff9933 batman, chopper, cookie, dontetlen, illusion, leviosa, niceday, notright, nyugodjanak, rightround, squish, konodio, roadroll, brodelol, falcon, touchy, over9000, doomed, skovald, fussatok, knock, heisenberg, curb, ezvan, lotr, science"
		LHCFLocalization["LHCF_DROPDOWN_HATED"] = "Ezt utálom"
		LHCFLocalization["LHCF_DROPDOWN_FAV"] = "Kedvenc"
		LHCFLocalization["LHCF_SETTINGS_LANG"] = "Az addon nyelve:"
		LHCFLocalization["LHCF_SETTINGS_COLOR"] = "Az addon fő ablakának háttérszíne:"
		LHCFLocalization["black"] = "Fekete"
		LHCFLocalization["blue"] = "Kék"
		LHCFLocalization["pink"] = "Rózsaszín"
		LHCFLocalization["red"] = "Piros"
		LHCFLocalization["green"] = "Zöld"
		LHCFLocalization["yellow"] = "Sárga"
		LHCFLocalization["white"] = "Fehér"
		LHCFLocalization["LHCF_SETTINGS_SPEC"] = "Speckó effektek:"
		LHCFLocalization["shepard"] = "Ha ez a gomb ki van pipálva, akkor időnként amikor megnyitunk a világban egy vendort, Commander Shepard kijelenti, hogy ő a kedvenc kereskedője."
		LHCFLocalization["wilhelm"] = "Ha ez a gomb ki van pipálva, akkor időnként amikor a karakterünk meghal, vagy a Wilhelm Scream vagy pedig a Dark Souls játékban történő elhalálozás hangeffektjével távozik az élők sorából."
		LHCFLocalization["neverdie"] = "Ha ez a gomb ki van pipálva, akkor időnként amikor a karakterünket egy másik játékos akarja feléleszteni, a tér-idő kontinuum furcsa anomáliája miatt az Overwatch univerzumból áthallatszik, hogy HEROES NEVER DIE!"
		LHCFLocalization["tranq"] = "Ha ez a gomb ki van pipálva, akkor ha a közeledben valaki elnyom egy Tranquilityt, akkor a tér-idő kontinuum furcsa anomáliája miatt az Overwatch univerzumból áthallatszik, hogy Experience Tranquility!"
	end
	if lang =="enUS" then
		LHCFLocalization["LHCF_SETLANGUAGE_TITLE"] = "BEÁLLÍTÁSOK\n\nÚgy látszik most használod először a \nLeeroyHillCatsPower addont, ezért légyszi \nállítsd be az addon nyelvét.\n\nIt looks like you are using \nthe LeeroyHillCatsPower addon for the first time,\n so please set your preferred language.\n\nEz a különféle menük és feliratok nyelvét szabályozza.\n\nThis setting controls the language of the menus and texts."
		LHCFLocalization["LHCF_CORE_TITLE"] = "The Amazing Sound Effect Addon"
		LHCFLocalization["LHCF_HELP_TITLE"] = "|cffff9933" .. "HELP"
		LHCFLocalization["LHCF_SETTINGS_TITLE"] = "|cffff9933" .. "SETTINGS"
		LHCFLocalization["LHCF_HELP_TEXT"] = "|cffff9933" .. "Help for the Amazing Sound Effect Addon:\n  |cffffff00/lhcf|cffff9933 - show / hide addon window with blue background\n  |cffffff00/lhcf help|cffff9933 - Show this help text\n  |cffffff00/lhcf <color>|cffff9933 - show the addon window with a <color> background\n    <color> can be: black, blue, pink, red, green, yellow, white\n  |cffffff00/lhcf <effect>|cffff9933 - play <effect>\n    where <effect> can be: bennyhill, leeroy, thuncat, power, fifty, handle, hithard, hitit, moredots1, moredots2, runto, hullak, hshot, flawless, puska, godlike, killingspree, monsterkill, rampage, ultrakill, unstoppable, xkill, badpull, matrix, sgodlike, hsit, elkurtuk, nem, mkay, ufo, vissza, gomba, persze, hatszel, idiota, jonarez, korhaz, lehugyoza, murloc, nicedress, pokmalac, trollololol, badget, boldog, fckbliz, ikillyou, kenny, keycat, olj, prepared, rabbids, rickastley, rouges, swedishmeal, szokecigany, ticktack, matrix, sgodlike, unstoppable, xkill, megvagy, inditjuk"
		LHCFLocalization["LHCF_HELP_TEXT_PG2"] = "|cffff9933 batman, chopper, cookie, dontetlen, illusion, leviosa, niceday, notright, nyugodjanak, rightround, squish, konodio, roadroll, brodelol, falcon, touchy, over9000, doomed, skovald, fussatok, knock, heisenberg, curb, ezvan, lotr, science"
		LHCFLocalization["LHCF_DROPDOWN_HATED"] = "I hate this"
		LHCFLocalization["LHCF_DROPDOWN_FAV"] = "Favorite"
		LHCFLocalization["LHCF_SETTINGS_LANG"] = "Addon language:"
		LHCFLocalization["LHCF_SETTINGS_COLOR"] = "Addon main window background color:"
		LHCFLocalization["black"] = "Black"
		LHCFLocalization["blue"] = "Blue"
		LHCFLocalization["pink"] = "Pink"
		LHCFLocalization["red"] = "Red"
		LHCFLocalization["green"] = "Green"
		LHCFLocalization["yellow"] = "Yellow"
		LHCFLocalization["white"] = "White"
		LHCFLocalization["LHCF_SETTINGS_SPEC"] = "Special effects:"
		LHCFLocalization["shepard"] = "If this button is checked, then sometimes when you open the merchant frame of a vendor in the world, Commander Shepard declares that it's his favorite store."
		LHCFLocalization["wilhelm"] = "If this button is checked, then sometimes when your character dies, it leaves the world of the living with a Wilhelm Scream or the dying sound effect of the Dark Souls game."
		LHCFLocalization["neverdie"] = "If this button is checked, then sometimes when your character is offered to be resurrected by another player, someone can be heard yelling HEROES NEVER DIE! from the Overwatch universe, due to a strange space-time continuum anomaly."
		LHCFLocalization["tranq"] = "If this button is checked, then whenever someone near you casts Tranquility, someone can be heard saying Experience Tranquility! from the Overwatch universe, due to a strange space-time continuum anomaly."
	end
	return LHCFLocalization
end