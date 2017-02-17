-- The Amazing Sound Effect Addon
-- Inspired by the LeeroyHillCatsPower addon originally written by Barogio <Victory or Valhalla> of Thunderhorn with help from Moomin!
-- Benny sample from Benny Hill mod by Catalyst + Springbeard of Thunderhorn
-- Addon updated and expanded by Larenon <Order of Watchers> of Ragnaros-EU
-- Additional effects and further updates by Leirren <Order of Watchers> of Ragnaros-EU
-- Additional updates by Pio <Order of Watchers> of Ragnaros-EU

------- Initialize

LHCFTabs = {"fav", "oow", "wow", "games", "tv", "music", "misc"}

LHCFDefaultSettings = {
	["LHCFLanguage"] = "not set",
	["LHCFLanguages"] = {
		[1] = {"Magyar","huHU"},
		[2] = {"English","enUS"}
		},
	["shepard"] = true,
	["wilhelm"] = true,
	["neverdie"] = true,
	["utaljuk"] = {},
	["imadjuk"] = {}
}

LHCFSettingsDB = {
}

-- 1: button tooltip, 2: button text, 3: additional emote, 4: emote messages, 5: sound file, 6: command, 7: type, 8: oow spec?, 9: length in seconds

LHCFMaster = {}
LHCFMaster[1] = {"Who the fuck was that?\n".."|cff007a00Dives effekt","badpull","",{"asks who the f*** was that?"},"Interface\\AddOns\\LeeroyHillCatsPower\\badpull.mp3","badpull","normal","wow",2}
LHCFMaster[2] = {"Elkúrtuk, nem kicsit, nagyon!\n".."|cff007a00Gyurcsány Ferenc effekt","elkurtuk","",{"thinks the raid seriously screwed it up."},"Interface\\AddOns\\LeeroyHillCatsPower\\elkurtuk.mp3","elkurtuk","normal","misc",3}
LHCFMaster[3] = {"Gooooomba!\n".."|cff007a00OOW klántag Chidori effekt","gomba","",{"is very happy to find a mushroom!"},"Interface\\AddOns\\LeeroyHillCatsPower\\gomba.mp3","gomba","normal","oow",2}
LHCFMaster[4] = {"Hátszéééél?\n".."|cff007a00OOW klán Hátszél effekt","hatszel","",{"asks around for Hatszel."},"Interface\\AddOns\\LeeroyHillCatsPower\\hatszel.mp3","hatszel","normal","oow",1}
LHCFMaster[5] = {"Visszük a hullákat, hozzátok a halottakat!\n".."|cff007a00Gyalog Galopp effekt","hullak","",{"asks everyone to bring out their dead!"},"Interface\\AddOns\\LeeroyHillCatsPower\\hullak.mp3","hullak","normal","tv",7}
LHCFMaster[6] = {"Idióta!\n".."|cff007a00Jóbarátok effekt","idiota","",{"thinks there's an idiot somewhere around here!","thinks | is an idiot!"},"Interface\\AddOns\\LeeroyHillCatsPower\\idiota.mp3","idiota","targeted","tv",4}
LHCFMaster[7] = {"Jön a rézfaszú bagoly!\n".."|cff007a00Spatzen Jodler Sextett effekt","jonarez","",{"spotted an incoming Copper Dick Owl!"},"Interface\\AddOns\\LeeroyHillCatsPower\\jonarez.mp3","jonarez","normal","music",5}
LHCFMaster[8] = {"Kórhááááz?\n".."|cff007a00OOW klán Hátszél effekt","korhaz","",{"is not sure if this is the hospital."},"Interface\\AddOns\\LeeroyHillCatsPower\\korhaz.mp3","korhaz","normal","oow",1}
LHCFMaster[9] = {"Segítség lehugyoz a fa!\n".."|cff007a00Rémálomföld effekt","lehugyoza","",{"needs some help against a pissing tree! "},"Interface\\AddOns\\LeeroyHillCatsPower\\lehugyoza.mp3","lehugyoza","normal","misc",2}
LHCFMaster[10] = {"Ééértem?\n".."|cff007a00South Park Mackey bácsi effekt","mkay","",{"would like to know if everyone understood that clearly."},"Interface\\AddOns\\LeeroyHillCatsPower\\mkay.mp3","mkay","normal","tv",1}
LHCFMaster[11] = {"RwlRwlRwlRwl!\n".."|cff007a00I'm murloc effekt","murloc","",{"is a murloc! RwlRwlRwlRwl!"},"Interface\\AddOns\\LeeroyHillCatsPower\\murloc.mp3","murloc","normal","wow",1}
LHCFMaster[12] = {"Hey Gandalf, nice dress!\n".."|cff007a00Red Fang effekt","nicedress","",{"thinks that's a nice dress!","thinks | has a nice dress!"},"Interface\\AddOns\\LeeroyHillCatsPower\\nicedress.mp3","nicedress","targeted","music",5}
LHCFMaster[13] = {"Háááát peeersze!\n".."|cff007a00OOW klántag Chidori effekt","persze","",{"thinks someone is not being entirely honest!"},"Interface\\AddOns\\LeeroyHillCatsPower\\persze.mp3","persze","normal","oow",2}
LHCFMaster[14] = {"Pókmalac!\n".."|cff007a00The Simpsons család effekt","pokmalac","",{"saw a spiderpig!"},"Interface\\AddOns\\LeeroyHillCatsPower\\pokmalac.mp3","pokmalac","normal","tv",15}
LHCFMaster[15] = {"Trollololol!\n".."|cff007a00Eduard Khil effekt","trollololol","dance",{"gives it some trollololol"},"Interface\\AddOns\\LeeroyHillCatsPower\\trollololol.mp3","trollololol","normal","music",5}
LHCFMaster[16] = {"UFOPORNOOOO! JONKUN KOTONA!\n".."|cff007a00Ranuan Kummit effekt","ufo","",{"thinks the UFOs are having a party!"},"Interface\\AddOns\\LeeroyHillCatsPower\\ufo.mp3","ufo","normal","misc",5}
LHCFMaster[17] = {"Vissza menjél! Baszki!\n".."|cff007a00NacsaFon effekt","vissza","",{"tries to hold back Chewbacca with an umbrella!","tries to hold back | with an umbrella!"},"Interface\\AddOns\\LeeroyHillCatsPower\\vissza.mp3","vissza","targeted","misc",3}
LHCFMaster[18] = {"Badger! Badger! Mushroom! Mushroom!\n".."|cff007a00Badger dance effekt","badget","dance",{"does the badger dance.","does the badger dance with |."},"Interface\\AddOns\\LeeroyHillCatsPower\\badget.mp3","badget","targeted","misc",12}
LHCFMaster[19] = {"Boldog születésnapot!\n".."|cff007a00Halász Judit effekt","boldog","",{"wishes everyone a Happy birthday!","wishes | a Happy birthday!"},"Interface\\AddOns\\LeeroyHillCatsPower\\boldog.mp3","boldog","targeted","music",12}
LHCFMaster[20] = {"FCKG BLIIIZARD!\n".."|cff007a00WOW password change effekt","fckbliz","",{"thinks Blizzard really screwed it up this time."},"Interface\\AddOns\\LeeroyHillCatsPower\\fckbliz.mp3","fckbliz","normal","wow",6}
LHCFMaster[21] = {"Silence! I kill you!\n".."|cff007a00Ahmed the dead terrorist effekt","ikillyou","",{"asks everyone to be silent or else.","asks | to be silent or else."},"Interface\\AddOns\\LeeroyHillCatsPower\\ikillyou.mp3","ikillyou","targeted","misc",13}
LHCFMaster[22] = {"OMG they killed Kenny!\n".."|cff007a00South Park effekt","kenny","",{"saw that those bastards killed Kenny again."},"Interface\\AddOns\\LeeroyHillCatsPower\\kenny.mp3","kenny","normal","tv",7}
LHCFMaster[23] = {"Keyboard cat!\n".."|cff007a00Charlie Schmidt effekt","keycat","",{"gives it some keyboard cat!"},"Interface\\AddOns\\LeeroyHillCatsPower\\keycat.mp3","keycat","normal","misc",7}
LHCFMaster[24] = {"Ölj!\n".."|cff007a00Susogós mackók effekt","olj","",{"asks everyone to kill someone."},"Interface\\AddOns\\LeeroyHillCatsPower\\olj.mp3","olj","normal","tv",15}
LHCFMaster[25] = {"You are not Prepared!\n".."|cff007a00WOW Illidan effekt","prepared","",{"thinks nobody is prepared for this."},"Interface\\AddOns\\LeeroyHillCatsPower\\prepared.mp3","prepared","normal","wow",3}
LHCFMaster[26] = {"DAAAAAAAAAAAAH!\n".."|cff007a00Rayman raving rabbids effekt","rabbids","",{"yells DAAAAAAAAAAAAH!"},"Interface\\AddOns\\LeeroyHillCatsPower\\rabbids.mp3","rabbids","normal","games",12}
LHCFMaster[27] = {"Rick Astley - Never gonna give you up!\n".."|cff007a00Rick Astley effekt","rickastley","dance",{"has just rickrolled everyone!"},"Interface\\AddOns\\LeeroyHillCatsPower\\rickastley.mp3","rickastley","normal","music",18}
LHCFMaster[28] = {"Rouges do it from behind!\n".."|cff007a00L70ETC effekt","rouges","",{"likes to do it from behind!"},"Interface\\AddOns\\LeeroyHillCatsPower\\rouges.mp3","rouges","normal","wow",6}
LHCFMaster[29] = {"Swedishmeal!\n".."|cff007a00Swedish meal time effekt","swedishmeal","",{"cooks up a swedish meal."},"Interface\\AddOns\\LeeroyHillCatsPower\\swedishmeal.mp3","swedishmeal","normal","misc",6}
LHCFMaster[30] = {"Szőke cigány!\n".."|cff007a00Youtube effekt","szokecigany","",{"has spotted a blond gypsy!"},"Interface\\AddOns\\LeeroyHillCatsPower\\szokecigany.mp3","szokecigany","normal","misc",4}
LHCFMaster[31] = {"Tick-tack!\n".."|cff007a0024 effekt","ticktack","",{"thinks Jack Bauer is running out of time!"},"Interface\\AddOns\\LeeroyHillCatsPower\\ticktack.mp3","ticktack","normal","tv",4}
LHCFMaster[32] = {"Benny Hill theme\n".."|cff007a00Az eredeti LeeroyHillCatsPower addon effektje","bennyhill","dance",{"gives it some Benny Hill!"},"Interface\\AddOns\\LeeroyHillCatsPower\\bennyhill.mp3","bennyhill","normal","tv",40}
LHCFMaster[33] = {"Flawless Victory!\n".."|cff007a00Mortal Kombat effekt","flawless","",{"declares a Flawless Victory!"},"Interface\\AddOns\\LeeroyHillCatsPower\\flawless.mp3","flawless","normal","games",2}
LHCFMaster[34] = {"GOD LIKE!\n".."|cff007a00Unreal Tournament effekt","godlike","",{"is a GOD!"},"Interface\\AddOns\\LeeroyHillCatsPower\\godlike.mp3","godlike","normal","games",1}
LHCFMaster[35] = {"HOLY SHIT!\n".."|cff007a00Unreal Tournament effekt","hshit","",{"is really amazed."},"Interface\\AddOns\\LeeroyHillCatsPower\\hshit.mp3","hsit","normal","games",3}
LHCFMaster[36] = {"Headshot!\n".."|cff007a00Unreal Tournament effekt","hshot","",{"shot someone in the head! Ouch!","shot | in the head! Ouch!"},"Interface\\AddOns\\LeeroyHillCatsPower\\hshot.mp3","hshot","targeted","games",2}
LHCFMaster[37] = {"KILLING SPREE!\n".."|cff007a00Unreal Tournament effekt","killingspree","",{"is on a Killing Spree!"},"Interface\\AddOns\\LeeroyHillCatsPower\\killingspree.mp3","killingspree","normal","games",2}
LHCFMaster[38] = {"Leeeeeeeeeeroy Jenkins!\n".."|cff007a00Az eredeti addon effektje","leeroy","",{"invokes the power of Leeroy Jenkins!"},"Interface\\AddOns\\LeeroyHillCatsPower\\leeroy.mp3","leeroy","normal","wow",4}
LHCFMaster[39] = {"There is no spoon!\n".."|cff007a00The Matrix effekt","matrix","",{"dodges bullets."},"Interface\\AddOns\\LeeroyHillCatsPower\\matrix.mp3","matrix","normal","tv",18}
LHCFMaster[40] = {"MONSTER KILL!\n".."|cff007a00Unreal Tournament effekt","monsterkill","",{"is a monster!"},"Interface\\AddOns\\LeeroyHillCatsPower\\monsterkill.mp3","monsterkill","normal","games",4}
LHCFMaster[41] = {"I don't see enough DOTs! More DOTs now!\n".."|cff007a00Dives effekt","moredots1","",{"doesn't see enough DOTs!","orders | to apply more DOTs!"},"Interface\\AddOns\\LeeroyHillCatsPower\\moredots1.mp3","moredots1","targeted","wow",2}
LHCFMaster[42] = {"Throw more DOTs, more DOTs, more DOTs, come on more DOTs!\n".."|cff007a00Dives effekt","moredots2","",{"orders the raid to throw more DOTs!"," orders | to throw more DOTs!"},"Interface\\AddOns\\LeeroyHillCatsPower\\moredots2.mp3","moredots2","targeted","wow",4}
LHCFMaster[43] = {"Nem!\n".."|cff007a00Gábor a hegyröl effekt","nem","",{"clearly states: NO!"},"Interface\\AddOns\\LeeroyHillCatsPower\\nem.mp3","nem","normal","misc",1}
LHCFMaster[44] = {"RAMPAGE!\n".."|cff007a00Unreal Tournament effekt","rampage","",{"is on a RAMPAGE!"},"Interface\\AddOns\\LeeroyHillCatsPower\\rampage.mp3","rampage","normal","games",2}
LHCFMaster[45] = {"GOD LIKE! (sexy babe version)\n".."|cff007a00Unreal Tournament effekt","sgodlike","",{"thinks someone really feels good."},"Interface\\AddOns\\LeeroyHillCatsPower\\sgodlike.mp3","sgodlike","normal","games",2}
LHCFMaster[46] = {"Thundercats HO!\n".."|cff007a00Az eredeti LeeroyHillCatsPower addon effektje","thuncat","",{"screams Thundercats HO!"},"Interface\\AddOns\\LeeroyHillCatsPower\\thundercatsho.mp3","thuncat","normal","tv",6}
LHCFMaster[47] = {"ULTRA KILL!\n".."|cff007a00Unreal Tournament effekt","ultrakill","",{"has become invincible!"},"Interface\\AddOns\\LeeroyHillCatsPower\\ultrakill.mp3","ultrakill","normal","games",2}
LHCFMaster[48] = {"UNSTOPPABLE!\n".."|cff007a00Unreal Tournament effekt","unstoppable","",{"is unstoppable!"},"Interface\\AddOns\\LeeroyHillCatsPower\\unstoppable.mp3","unstoppable","normal","games",2}
LHCFMaster[49] = {"MULTI KILL!\n".."|cff007a00Unreal Tournament effekt","xkill","",{"is a mindless killer!"},"Interface\\AddOns\\LeeroyHillCatsPower\\xkill.mp3","xkill","normal","games",2}
LHCFMaster[50] = {"By the power of GREYSKULL!\n".."|cff007a00Az eredeti LeeroyHillCatsPower addon effektje","power","",{"screams BY THE POWER OF GREYSKULL!"},"Interface\\AddOns\\LeeroyHillCatsPower\\heman.mp3","power","normal","tv",10}
LHCFMaster[51] = {"That's a fucking fifty DKP minus!\n".."|cff007a00Dives effekt","50dkp","",{"hands out 50 DKP minus!"},"Interface\\AddOns\\LeeroyHillCatsPower\\50dkp.mp3","fifty","normal","wow",3}
LHCFMaster[52] = {"Puska kellett volna bazdmeg!\n".."|cff007a00Pulp Fiction effekt","puska","",{"thinks we should have shotguns for this kind of deal."},"Interface\\AddOns\\LeeroyHillCatsPower\\puska.mp3","puska","normal","tv",2}
LHCFMaster[53] = {"Now handle it!\n".."|cff007a00Dives effekt","handle","",{"orders the raid to handle it!","orders | to handle it!"},"Interface\\AddOns\\LeeroyHillCatsPower\\handleit.mp3","handle","targeted","wow",1}
LHCFMaster[54] = {"Now hit it very hard and very fast!\n".."|cff007a00Dives effekt","hithard","",{"orders the raid to hit it hard!","orders | to hit it hard!"},"Interface\\AddOns\\LeeroyHillCatsPower\\hithard.mp3","hithard","targeted","wow",2}
LHCFMaster[55] = {"Come on, more DPS ... hit it like you mean it!\n".."|cff007a00Dives effekt","hitit","",{"orders the raid DPS to stop slacking!","orders | to stop slacking and pewpew seriously!"},"Interface\\AddOns\\LeeroyHillCatsPower\\hitit.mp3","hitit","targeted","wow",3}
LHCFMaster[56] = {"Run to the center!\n".."|cff007a00Dives effekt","runto","",{"orders the raid to run to the center!","orders | to run to the center!"},"Interface\\AddOns\\LeeroyHillCatsPower\\runto.mp3","runto","targeted","wow",1}
LHCFMaster[57] = {"Most megvagy, a kurva anyád!\n".."|cff007a00South Park Al Gore effekt","megvagy","",{"has spotted the ManBearPig!"},"Interface\\AddOns\\LeeroyHillCatsPower\\megvagy.mp3","megvagy","normal","tv",3}
LHCFMaster[58] = {"Indítjuk az órát, emeljük a búrát... MOST!\n".."|cff007a00Telemázli effekt","inditjuk","",{"starts the clock."},"Interface\\AddOns\\LeeroyHillCatsPower\\inditjuk.mp3","inditjuk","normal","tv",2}
LHCFMaster[59] = {"","neverdie","",{"never dies!"},"Interface\\AddOns\\LeeroyHillCatsPower\\neverdie.mp3","","normal","hidden",2}

for i,v in ipairs(LHCFMaster) do
	LHCFDefaultSettings.utaljuk[v[2]] = false
	LHCFDefaultSettings.imadjuk[v[2]] = false
end

function BH_OnLoad(self)
self:RegisterEvent("ADDON_LOADED");
self:RegisterEvent("CHAT_MSG_EMOTE");
self:RegisterEvent("MERCHANT_SHOW");
self:RegisterEvent("PLAYER_DEAD");
self:RegisterEvent("RESURRECT_REQUEST");
tinsert(UISpecialFrames,"BH_Core");

items = {}
end

function LHCF_CreateButtons()
	for i = 1, 60 do
		local item = CreateFrame("Button", "BH_Core_Button" .. i, BH_Core, "LHCFButtonTemplate")
		item:SetID(i)
		item:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	end
end

function LHCF_AddOptionMT(options, defaults)
	setmetatable(options, {__index = defaults})
	for i,v in pairs(options) do
		if type(v) == "table" and not getmetatable(v) then
			LHCF_AddOptionMT(v, defaults[i])
		end
	end
end

function LHCFButtonHandler(...)
	local self, button = select(1, ...)
	if button == "LeftButton" then
		local parancs = LHCFMaster[LHCFIndex[self:GetText()]][6]
		DispatchCommand(parancs, lhcfCommandTable)
	else
		local name = self:GetName()
		DropDownToggledBy = self:GetText()
		ToggleDropDownMenu(1, nil, LHCF_DropDown1, name, 0, 0)
		LHCF_SetButtonVisibility(DropDownToggledBy, self:GetID())
	end
end

-- CSEKKOLJUK AHOL kids[] kódot használunk, mert a gombok már nem a tabok gyerekei!!! Hanem a BH_Core-é... lehet a kids-ek helyett inkább direktben a gombokon kell végigmenni.
-- Át kell alakítani az addont úgy, hogy le legyen generálva 12 x 5 gomb és akkor csak a settext propertyket állítgatjuk megjelenítésnél (végigmegyünk mindig a childokon a kids megoldással)
-- A tab megjelenítéseknél először elrejtjük az összes gombot (végigmegyünk a childokon), aztán végigmegyünk a Masteren és egy segédtáblába beolvassuk az aktuális tab kategóriájának megfelelő effekteket.
-- Majd végigmegyünk a segédtábla összes elemén (ipairs k, v) és a kids tábla [k] elemének állítjuk a settextjét és megjelenítjük (Show())
-- segédtáblába érdemes lenne egyből az LHCFIndexet berakni értéknek, hogy egyből hívhassuk a Mastert

function LHCF_SetButtonVisibility(melyiket, hanyadik)
			if LHCFSettingsDB.utaljuk[melyiket] == true then
				_G["BH_Core_Button" .. hanyadik].Left:SetTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
				_G["BH_Core_Button" .. hanyadik].Middle:SetTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
				_G["BH_Core_Button" .. hanyadik].Right:SetTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
				_G["BH_Core_Button" .. hanyadik]:RegisterForClicks("RightButtonUp")
			else
				_G["BH_Core_Button" .. hanyadik].Left:SetTexture("Interface\\Buttons\\UI-Panel-Button-Up")
				_G["BH_Core_Button" .. hanyadik].Middle:SetTexture("Interface\\Buttons\\UI-Panel-Button-Up")
				_G["BH_Core_Button" .. hanyadik].Right:SetTexture("Interface\\Buttons\\UI-Panel-Button-Up")
				_G["BH_Core_Button" .. hanyadik]:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			end
end

function LHCF_VanFav()
	if LHCFSettingsDB.imadjuk then
		for i, v in pairs(LHCFSettingsDB.imadjuk) do
			if LHCFSettingsDB.imadjuk[i] == true then return true end
		end
	end
	return false
end

function LHCF_InitializeDropDown(self, level)
	if self:GetName() == "LHCF_DropDown1" then
		local info = UIDropDownMenu_CreateInfo()
		info = UIDropDownMenu_CreateInfo()
		info.text = LHCFLocalization["LHCF_DROPDOWN_HATED"]
			if rawget(LHCFSettingsDB, "utaljuk") == nil then
				rawset(LHCFSettingsDB, "utaljuk", {})
			end
		info.checked = LHCFSettingsDB.utaljuk[DropDownToggledBy]
		function info.func(button, arg1, arg2)
			rawset(LHCFSettingsDB.utaljuk, DropDownToggledBy, not LHCFSettingsDB.utaljuk[DropDownToggledBy])
			LHCF_SetButtonVisibility(DropDownToggledBy, LHCFIndex[DropDownToggledBy])
			LHCFTabButtonHandler(PanelTemplates_GetSelectedTab(BH_Core))
		end
		UIDropDownMenu_AddButton(info)
		
		info = UIDropDownMenu_CreateInfo()
		info.text = LHCFLocalization["LHCF_DROPDOWN_FAV"]
			if rawget(LHCFSettingsDB, "imadjuk") == nil then
				rawset(LHCFSettingsDB, "imadjuk", {})
			end
		info.checked = LHCFSettingsDB.imadjuk[DropDownToggledBy]
		function info.func(button, arg1, arg2)
			rawset(LHCFSettingsDB.imadjuk, DropDownToggledBy, not LHCFSettingsDB.imadjuk[DropDownToggledBy])
			if LHCFSettingsDB.imadjuk[DropDownToggledBy] == false and PanelTemplates_GetSelectedTab(BH_Core) == 1 then
				if LHCF_VanFav() then LHCFTabButtonHandler(1)
				else
					PanelTemplates_DisableTab(BH_Core, 1)
					LHCFTabButtonHandler(2)
				end
			elseif LHCFSettingsDB.imadjuk[DropDownToggledBy] == true and BH_CoreTab1.isDisabled then
				PanelTemplates_EnableTab(BH_Core, 1)
			end
			LHCF_SetButtonVisibility(DropDownToggledBy, LHCFIndex[DropDownToggledBy])
		end
		UIDropDownMenu_AddButton(info)
	end
end

function LHCFTabButtonHandler(index)
PanelTemplates_SetTab(BH_Core, index)
	local melyiktab = LHCFTabs[index]
	local gombok = {}
	for i, v in ipairs(LHCFMaster) do
		if v[8] == melyiktab then gombok[#gombok + 1] = v[2] end
	end
	for i = 1, 60 do
		_G["BH_Core_Button" .. i]:Hide()
	end
	if melyiktab == "fav" and LHCFSettingsDB.imadjuk then
		for i, v in pairs(LHCFSettingsDB.imadjuk) do
			if LHCFSettingsDB.imadjuk[i] == true then gombok[#gombok + 1] = i end
		end
	end
	for i = 1, #LHCFTabs do
		local tab = _G["LHCFTabPage_" .. LHCFTabs[i]]
		if i == index then
			-- ha valaha is 60 gombnál több lesz egy kategóriában akkor itt valamit ki kell majd találni, mert ugye csak 60 gombunk van...
			-- elvileg ABC sorba rendező ▼▼▼
			sortedgombok = {}
			for n, m in pairs(gombok) do table.insert(sortedgombok, m) end
			table.sort(sortedgombok)
			for j, v in ipairs(sortedgombok) do
--			for j, v in ipairs(gombok) do
				_G["BH_Core_Button" .. j]:SetText(v)
				_G["BH_Core_Button" .. j]:Show()
				LHCF_SetButtonVisibility(v, j)
				if j == 1 then
					_G["BH_Core_Button" .. j]:SetPoint("TOPLEFT", 22, -32)
				elseif math.fmod(j-1, 5) == 0 then
					_G["BH_Core_Button" .. j]:SetPoint("TOPLEFT", _G["BH_Core_Button" .. j-5], "BOTTOMLEFT")
				else
					_G["BH_Core_Button" .. j]:SetPoint("TOPLEFT", _G["BH_Core_Button" .. j-1], "TOPRIGHT")
				end
			end
			tab:Show()
			else 
			tab:Hide()
		end
	end
end

BH_TimeTilNext = time();

LHCFIndex = {}

for i,v in ipairs(LHCFMaster) do
	LHCFIndex[v[2]] = i
end

function BH_Button_OnEnter(self, motion)
melyikeffekt = self:GetText()
GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
effektindex = LHCFIndex[melyikeffekt]
GameTooltip:SetText(LHCFMaster[effektindex][1])
GameTooltip:Show()
end

function BH_Button_OnLeave(self, motion)
GameTooltip:Hide()
end

function DispatchCommand(message, commandTable)
    local command, parameters = string.split(" ", message)
	local entry = commandTable[command:lower()]
    local which = type(entry)
    if which == "function" then
        entry(parameters)
    elseif which == "table" then
        DispatchCommand(parameters or "", entry)
    elseif which == "string" then
        print(entry)
    elseif message == "" then
        DispatchCommand("show", commandTable)
    elseif message ~= "help" then
        DispatchCommand("help", commandTable)
    end
end

lhcfCommandTable = {}

for i,v in ipairs(LHCFMaster) do
	if v[6] ~= "" then
	lhcfCommandTable[v[6]] = function()
			if v[7] == "targeted" then
				name, realm = UnitName("target");
				if (name == nil) then
					SendChatMessage(v[4][1], "EMOTE");
				else
					local emoteuzi = {string.split("|", v[4][2])}
					SendChatMessage(emoteuzi[1]..name..emoteuzi[2], "EMOTE");
				end
			else
					SendChatMessage(v[4][1], "EMOTE");
			end
		end
	end
end

lhcfCommandTable["help"] = function()
		lhhelp_command()
	end
lhcfCommandTable["fekete"] = function()
		lhcf_command(0,0,0,0.8);
	end
lhcfCommandTable["kek"] = function()
		lhcf_command(0,0,1,0.6);
	end
lhcfCommandTable["rozsaszin"] = function()
		lhcf_command(1,0,1,0.6);
	end
lhcfCommandTable["piros"] = function()
		lhcf_command(1,0,0,0.6);
	end
lhcfCommandTable["zold"] = function()
		lhcf_command(0,1,0,0.6);
	end
lhcfCommandTable["sarga"] = function()
		lhcf_command(1,1,0,0.6);
	end
lhcfCommandTable["feher"] = function()
		lhcf_command(1,1,1,0.6);
	end
lhcfCommandTable["black"] = function()
		lhcf_command(0,0,0,0.8);
	end
lhcfCommandTable["blue"] = function()
		lhcf_command(0,0,1,0.6);
	end
lhcfCommandTable["pink"] = function()
		lhcf_command(1,0,1,0.6);
	end
lhcfCommandTable["red"] = function()
		lhcf_command(1,0,0,0.6);
	end
lhcfCommandTable["green"] = function()
		lhcf_command(0,1,0,0.6);
	end
lhcfCommandTable["yellow"] = function()
		lhcf_command(1,1,0,0.6);
	end
lhcfCommandTable["white"] = function()
		lhcf_command(1,1,1,0.6);
	end
lhcfCommandTable[""] = function()
		lhcf_command();
	end

SLASH_LHCF1 = "/lhcf"
SlashCmdList["LHCF"] = function(message)
	DispatchCommand(message, lhcfCommandTable)
end

DEFAULT_CHAT_FRAME:AddMessage("Power of LeeroyHillCats enabled! (/lhcf help - to show help, /lhcf - to show addon window)",0,1,0);

------- Event handling

function LHCF_FirstRun()
	if not LHCF_DropDown2 then
		CreateFrame("Frame", "LHCF_DropDown2", LHCF_SetLanguage,"UIDropDownMenuTemplate")
	end

	LHCF_DropDown2:ClearAllPoints()
	LHCF_DropDown2:SetPoint("CENTER", 0, -10)
	LHCF_DropDown2:Show()

	local function OnClick(self)
		UIDropDownMenu_SetSelectedID(LHCF_DropDown2, self:GetID())
		key = "LHCFLanguage"
		rawset(LHCFSettingsDB, key, LHCFSettingsDB["LHCFLanguages"][UIDropDownMenu_GetSelectedID(LHCF_DropDown2)][2])
		LHCF_GetLocalizationTable(LHCFSettingsDB["LHCFLanguages"][UIDropDownMenu_GetSelectedID(LHCF_DropDown2)][2])
	end

	local function initialize(self, level)
		local info = UIDropDownMenu_CreateInfo()
		for k, v in pairs(LHCFSettingsDB["LHCFLanguages"]) do
			info = UIDropDownMenu_CreateInfo()
			info.text = v[1]
			info.value = v[2]
			info.func = OnClick
			UIDropDownMenu_AddButton(info, level)
		end
	end

UIDropDownMenu_Initialize(LHCF_DropDown2, initialize)
UIDropDownMenu_SetWidth(LHCF_DropDown2, 100);
UIDropDownMenu_SetButtonWidth(LHCF_DropDown2, 124)
UIDropDownMenu_JustifyText(LHCF_DropDown2, "LEFT")
end

function BH_OnEvent(self, event, ...)

	if (event == "ADDON_LOADED") then
		addon = select(1, ...)
		if addon == "LeeroyHillCatsPower" then
			print("Loaded " .. addon)
			LHCF_AddOptionMT(LHCFSettingsDB, LHCFDefaultSettings)
			if LHCFSettingsDB["LHCFLanguage"] == "not set" then
				LHCF_GetLocalizationTable("enUS")
				LHCF_FirstRun()
				local Path, Size, Flags = LHCF_SetLanguage_TitleText:GetFont()
				LHCF_SetLanguage_TitleText:SetText(LHCFLocalization["LHCF_SETLANGUAGE_TITLE"])
				LHCF_SetLanguage_TitleText:SetFont("Interface\\AddOns\\LeeroyHillCatsPower\\AbhayaLibre-Regular.ttf",13,Flags)
				LHCF_SetLanguage:Show()
			end
		if not LHCF_GetLocalizationTable(LHCFSettingsDB["LHCFLanguage"]) then LHCF_GetLocalizationTable("enUS") end
		UIDropDownMenu_Initialize(LHCF_DropDown1, LHCF_InitializeDropDown)
		LHCF_CreateButtons()
		end
	end

	if (event == "MERCHANT_SHOW") then
		isshepardhere = random(1, 100);
		if (isshepardhere <= 10) then
		   PlaySoundFile("Interface\\AddOns\\LeeroyHillCatsPower\\shepard.mp3", "master");
		end
	end

	if (event == "PLAYER_DEAD") then
		iswilhelm = random(1, 100);
		if (iswilhelm <= 10) then
		   PlaySoundFile("Interface\\AddOns\\LeeroyHillCatsPower\\wilhelm.mp3", "master");
		end
	end

	if (event == "RESURRECT_REQUEST") then
		doheroesdie = random(1, 100);
		if (doheroesdie <= 50) then
		   SendChatMessage("never dies!", "EMOTE");
		end
	end
	
	if (event == "CHAT_MSG_EMOTE") then
	uzenet, kimondta = ...
	for i,v in ipairs(LHCFMaster) do
			megvan = false
			if string.find(uzenet, v[4][1]) ~= nil then megvan = true
			elseif v[4][2] ~= nil then
				bontas = {string.split("|", v[4][2])}
				if string.find(uzenet, bontas[1]) and string.find(uzenet, bontas[2]) then megvan = true
				else megvan = false
				end
			else megvan = false
			end
			
			if megvan then
				if (time() >= BH_TimeTilNext) then
					if LHCFSettingsDB.utaljuk[v[2]] == false or #LHCFSettingsDB.utaljuk == 0 then PlaySoundFile(v[5], "master") end
					if (v[3] ~= "") then
						DoEmote(v[3])
					end
					if (v[9] ~= "") then
						BH_TimeTilNext = time() + v[9]
					end
				end
			end
	end
	end
end

------- Slash command handling

function lhhelp_command()
	LHCF_HelpFrame_TitleText:SetText(LHCFLocalization["LHCF_HELP_TITLE"])
	LHCF_HelpFrame_Text:SetText(LHCFLocalization["LHCF_HELP_TEXT"])
	local Path, Size, Flags = LHCF_HelpFrame_TitleText:GetFont()
	LHCF_HelpFrame_TitleText:SetFont("Interface\\AddOns\\LeeroyHillCatsPower\\AbhayaLibre-Regular.ttf",13,Flags)
	Path, Size, Flags = LHCF_HelpFrame_Text:GetFont()
	LHCF_HelpFrame_Text:SetFont("Interface\\AddOns\\LeeroyHillCatsPower\\AbhayaLibre-Regular.ttf",15,Flags)
	LHCF_HelpFrame_Text:SetJustifyH("LEFT")
	LHCF_HelpFrame_Text:SetSize(400, 350)
	LHCF_HelpFrame:Show()
	CreateFrame("Button", "LHCF_HelpFrame_Button1", LHCF_HelpFrame, "UIPanelButtonTemplate")
	LHCF_HelpFrame_Button1:SetSize(100, 24)
	LHCF_HelpFrame_Button1:SetPoint("BOTTOM", 0, 15)
	LHCF_HelpFrame_Button1:SetText("OK")
	LHCF_HelpFrame_Button1:SetScript("OnClick", function(self, button)
		self:GetParent():Hide()
	end
	)
end

function lhcf_command(...)
	if (BH_Core) then
		local args = {...}
		if (BH_Core:IsVisible()) then
			BH_Core:Hide();
		elseif (args[1] ~= nil) then
			BH_Core:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
									edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
									tile = true, tileSize = 16, edgeSize = 16, 
									insets = { left = 4, right = 4, top = 4, bottom = 4 }});
			BH_Core:SetBackdropColor(args[1],args[2],args[3],args[4]);
			LHCF_TitleText:SetText(LHCFLocalization["LHCF_CORE_TITLE"])
			BH_Core:Show();
		else
			BH_Core:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
									edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
									tile = true, tileSize = 16, edgeSize = 16, 
									insets = { left = 4, right = 4, top = 4, bottom = 4 }});
			BH_Core:SetBackdropColor(0,0,1,0.6);
			LHCF_TitleText:SetText(LHCFLocalization["LHCF_CORE_TITLE"])
			BH_Core:Show();
		end
   end
end