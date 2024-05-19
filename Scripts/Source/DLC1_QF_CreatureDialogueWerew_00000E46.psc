;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 83
Scriptname DLC1_QF_CreatureDialogueWerew_00000E46 Extends Quest Hidden

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
; Player picks terrible roar 2 perk

Game.IncrementStat("NumWerewolfPerks")

WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(0, Game.GetPlayer().GetLevel() * 1.15)
WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(1, Game.GetPlayer().GetLevel() * 1.15)

WO_HowlTerribleRoarChargesCount.Value = 2

Game.GetPlayer().AddShout(WO_HowlWerewolfTerribleRoar2)
if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfTerribleRoar1
	Game.GetPlayer().EquipShout(WO_HowlWerewolfTerribleRoar2)
endif
Game.GetPlayer().RemoveShout(WO_HowlWerewolfTerribleRoar1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_77
Function Fragment_77()
;BEGIN CODE
; Player picks sovereign's voice 2 perk

Game.IncrementStat("NumWerewolfPerks")

WO_SovereignsVoiceCreaturesMaxCount.Value = 6

Game.GetPlayer().AddShout(WO_HowlWerewolfSovereignsVoice2)
if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfSovereignsVoice1
	Game.GetPlayer().EquipShout(WO_HowlWerewolfSovereignsVoice2)
endif
Game.GetPlayer().RemoveShout(WO_HowlWerewolfSovereignsVoice1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
; Player picks vampires hunter perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_55
Function Fragment_55()
;BEGIN CODE
; Player picks lacerations 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
; Player picks unrelenting roar 2 perk

Game.IncrementStat("NumWerewolfPerks")

int playerLevel = Game.GetPlayer().GetLevel()
WO_HowlWerewolfUnrelentingRoarSpell2.SetNthEffectMagnitude(1, playerLevel * 1.15)

WO_HowlUnrelentingRoarChargesCount.Value = 2

if !Game.GetPlayer().HasSpell(WO_HowlWerewolfUnrelentingRoar1)
	UnrelentingRoarCooldownHandler.HandlePerkGain(WO_HowlWerewolfUnrelentingRoar2)
else
	Game.GetPlayer().AddShout(WO_HowlWerewolfUnrelentingRoar2)
	if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfUnrelentingRoar1
		Game.GetPlayer().EquipShout(WO_HowlWerewolfUnrelentingRoar2)
	endif
	Game.GetPlayer().RemoveShout(WO_HowlWerewolfUnrelentingRoar1)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_57
Function Fragment_57()
;BEGIN CODE
; Player picks razor claws 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
; Player picks victory cry 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_40
Function Fragment_40()
;BEGIN CODE
; Player picks beast spirit 3 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().RemoveSpell(WO_PerkBeastSpirit2)
Game.GetPlayer().AddSpell(WO_PerkBeastSpirit3, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_75
Function Fragment_75()
;BEGIN CODE
; Player picks scent of blood perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_43
Function Fragment_43()
;BEGIN CODE
; Player picks moonlight 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_PerkMoonlight1, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_46
Function Fragment_46()
;BEGIN CODE
; Player picks impenetrable skin 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_51
Function Fragment_51()
;BEGIN CODE
; Player picks acrobat 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().Addspell(WO_PerkAcrobat1, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_52
Function Fragment_52()
;BEGIN CODE
; Player picks acrobat 2 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().RemoveSpell(WO_PerkAcrobat1)
Game.GetPlayer().AddSpell(WO_PerkAcrobat2, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_44
Function Fragment_44()
;BEGIN CODE
; Player picks moonlight 2 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_PerkMoonlight2, false)
Game.GetPlayer().RemoveSpell(WO_PerkMoonlight1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_48
Function Fragment_48()
;BEGIN CODE
; Player picks impenetrable skin 4 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_49
Function Fragment_49()
;BEGIN CODE
; Player picks equanimity 1 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_64
Function Fragment_64()
;BEGIN CODE
; Player picks detect all creatures perk

Game.IncrementStat("NumWerewolfPerks")

PlayerWerewolfChangeScript PlayerWerewolfQuestScript = PlayerWerewolfQuest as PlayerWerewolfChangeScript
Spell DLNV_WO_WerewolfDetectLife = Game.GetFormFromFile(0x478C65, "Detect Life & Night Vision Overhaul.esp") as spell

if DLNV_WO_WerewolfDetectLife 
	WO_SpellsPowers.AddForm(DLNV_WO_WerewolfDetectLife)
	PlayerWerewolfQuestScript.WerewolfDetectLife = DLNV_WO_WerewolfDetectLife
else
	PlayerWerewolfQuestScript.WerewolfDetectLife = WO_WerewolfDetectLife
	WO_SpellsPowers.AddForm(WO_WerewolfDetectLife)
endif

Game.GetPlayer().AddSpell(PlayerWerewolfQuestScript.WerewolfDetectLife)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_79
Function Fragment_79()
;BEGIN CODE
; Player picks cloak of shadows 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.UnlockWord(WO_HowlCloakOfShadows)
Game.GetPlayer().AddShout(WO_HowlWerewolfCloakOfShadows)

WO_CloakOfShadowsGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_47
Function Fragment_47()
;BEGIN CODE
; Player picks impenetrable skin 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
; Player picks animal vigor 2 perk

Game.IncrementStat("NumWerewolfPerks")

(PlayerWerewolfQuest as PlayerWerewolfChangeScript).MaxHealthStaminaBonus += 100

Game.GetPlayer().ModAV("health", 100)
Game.GetPlayer().ModAV("stamina", 100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
; Player picks beastial strength 100 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_50
Function Fragment_50()
;BEGIN CODE
; Player picks equanimity 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
; Player picks beast spirit 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_PerkBeastSpirit1, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
; Player picks terrible roar 1 perk

Game.IncrementStat("NumWerewolfPerks")

WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(0, Game.GetPlayer().GetLevel() * 1.0)
WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(1, Game.GetPlayer().GetLevel() * 1.0)

WO_HowlTerribleRoarChargesCount.Value = 1

Game.UnlockWord(WO_HowlTerribleRoar)
Game.GetPlayer().AddShout(WO_HowlWerewolfTerribleRoar1)

WO_TerribleRoarGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_59
Function Fragment_59()
;BEGIN CODE
; Player picks severe injuries 1 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
; Player picks cursed flame 2 perk

Game.IncrementStat("NumWerewolfPerks")

if !Game.GetPlayer().HasSpell(WO_HowlWerewolfCursedFlame1)
	CursedFlameCooldownHandler.HandlePerkGain(WO_HowlWerewolfCursedFlame2)
else
	Game.GetPlayer().AddShout(WO_HowlWerewolfCursedFlame2)
	if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfCursedFlame1
		Game.GetPlayer().EquipShout(WO_HowlWerewolfCursedFlame2)
	endif
	Game.GetPlayer().RemoveShout(WO_HowlWerewolfCursedFlame1)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_60
Function Fragment_60()
;BEGIN CODE
; Player picks severe injuries 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
; Player picks unrelenting roar 3 perk

Game.IncrementStat("NumWerewolfPerks")

int playerLevel = Game.GetPlayer().GetLevel()
WO_HowlWerewolfUnrelentingRoarSpell3.SetNthEffectMagnitude(1, playerLevel * 1.30)

WO_HowlUnrelentingRoarChargesCount.Value = 3

if !Game.GetPlayer().HasSpell(WO_HowlWerewolfUnrelentingRoar2)
	UnrelentingRoarCooldownHandler.HandlePerkGain(WO_HowlWerewolfUnrelentingRoar3)
else
	Game.GetPlayer().AddShout(WO_HowlWerewolfUnrelentingRoar3)
	if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfUnrelentingRoar2
		Game.GetPlayer().EquipShout(WO_HowlWerewolfUnrelentingRoar3)
	endif
	Game.GetPlayer().RemoveShout(WO_HowlWerewolfUnrelentingRoar2)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN CODE
; Player picks Hircines blessing perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
; Player picks cursed flame 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.UnlockWord(WO_HowlCursedFlame)
Game.GetPlayer().AddShout(WO_HowlWerewolfCursedFlame1)

WO_CursedFlameGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
; Player picks cursed flame 3 perk

Game.IncrementStat("NumWerewolfPerks")

if !Game.GetPlayer().HasSpell(WO_HowlWerewolfCursedFlame2)
	CursedFlameCooldownHandler.HandlePerkGain(WO_HowlWerewolfCursedFlame3)
else
	Game.GetPlayer().AddShout(WO_HowlWerewolfCursedFlame3)
	if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfCursedFlame2
		Game.GetPlayer().EquipShout(WO_HowlWerewolfCursedFlame3)
	endif
	Game.GetPlayer().RemoveShout(WO_HowlWerewolfCursedFlame2)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_74
Function Fragment_74()
;BEGIN CODE
; Player picks pack perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
; Player picks rage howl 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_54
Function Fragment_54()
;BEGIN CODE
; Player picks lacerations 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_80
Function Fragment_80()
;BEGIN CODE
; Player picks cloak of shadows 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
; Player picks beast spirit 2 perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().RemoveSpell(WO_PerkBeastSpirit1)
Game.GetPlayer().AddSpell(WO_PerkBeastSpirit2, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
; Player picks animal vigor 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_68
Function Fragment_68()
;BEGIN CODE
; Player picks accelerated metabolism perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_AcceleratedMetabolism)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
; Player picks call of the pack 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
; Player picks animal vigor 1 perk

Game.IncrementStat("NumWerewolfPerks")

(PlayerWerewolfQuest as PlayerWerewolfChangeScript).MaxHealthStaminaBonus += 100

Game.GetPlayer().ModAV("health", 100)
Game.GetPlayer().ModAV("stamina", 100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_78
Function Fragment_78()
;BEGIN CODE
; Player picks sovereign's voice 3 perk

Game.IncrementStat("NumWerewolfPerks")

WO_SovereignsVoiceCreaturesMaxCount.Value = 10

Game.GetPlayer().AddShout(WO_HowlWerewolfSovereignsVoice3)
if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfSovereignsVoice2
	Game.GetPlayer().EquipShout(WO_HowlWerewolfSovereignsVoice3)
endif
Game.GetPlayer().RemoveShout(WO_HowlWerewolfSovereignsVoice2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
; Player picks terrible roar 3 perk

Game.IncrementStat("NumWerewolfPerks")

WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(0, Game.GetPlayer().GetLevel() * 1.30)
WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(1, Game.GetPlayer().GetLevel() * 1.30)

WO_HowlTerribleRoarChargesCount.Value = 3

Game.GetPlayer().AddShout(WO_HowlWerewolfTerribleRoar3)
if Game.GetPlayer().GetEquippedShout() == WO_HowlWerewolfTerribleRoar2
	Game.GetPlayer().EquipShout(WO_HowlWerewolfTerribleRoar3)
endif
Game.GetPlayer().RemoveShout(WO_HowlWerewolfTerribleRoar2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
; Player picks victory cry 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.UnlockWord(WO_HowlVictoryCry)
Game.GetPlayer().AddShout(WO_HowlWerewolfVictoryCry)

WO_VictoryCryGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
; Player picks call of the pack 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.UnlockWord(WO_HowlCallOfThePack)

Game.GetPlayer().AddShout(WO_HowlWerewolfCallOfThePack)

WO_CallOfThePackGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_82
Function Fragment_82()
;BEGIN CODE
; Player picks werewolves hunter perk

WO_WerewolfHunterPerk.Value = 0
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
; Player picks gorging perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_63
Function Fragment_63()
;BEGIN CODE
; Player picks adrenaline perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_PerkAdrenaline)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_76
Function Fragment_76()
;BEGIN CODE
; Player picks sovereign's voice 1 perk

Game.IncrementStat("NumWerewolfPerks")

WO_SovereignsVoiceCreaturesMaxCount.Value = 3

Game.UnlockWord(WO_HowlSovereignsVoice)
Game.GetPlayer().AddShout(WO_HowlWerewolfSovereignsVoice1)

WO_SovereignsVoiceGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
; Player picks maniac perk

Game.IncrementStat("NumWerewolfPerks")
int counter

while WO_FeedingCounter.Value >= 50
	WO_FeedingCounter.Value -= 50

	Game.GetPlayer().ModAV("health", 5)
	Game.GetPlayer().ModAV("stamina", 5)
	counter += 1
endwhile

if counter > 0
	SendModEvent("MaxHealthChange")
	WO_Maniac50VictimsMessage.Show()
endif

Game.GetPlayer().AddSpell(WO_PerkManiac, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
; Player picks beastial strength 50 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
; Player picks rage howl 2 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_81
Function Fragment_81()
;BEGIN CODE
; Player picks cloak of shadows 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_58
Function Fragment_58()
;BEGIN CODE
; Player picks razor claws 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
; Player picks savage feeding perk

Game.IncrementStat("NumWerewolfPerks")

if Game.GetPlayer().HasSpell(WO_DetectCorpses)
	Game.GetPlayer().AddSpell(WO_DetectCorpsesSavageFeeding)
	if Game.GetPlayer().GetEquippedSpell(2) == WO_DetectCorpses
		Game.GetPlayer().EquipSpell(WO_DetectCorpsesSavageFeeding, 2)
	endif
	Game.GetPlayer().RemoveSpell(WO_DetectCorpses)
endif

if WO_DetectCorpsesIsActive.Value
	Game.GetPlayer().DispelSpell(WO_DetectCorpses)
	WO_DetectCorpsesIsActive.Value = 0
	WO_DetectCorpsesSavageFeeding.Cast(Game.GetPlayer())
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_56
Function Fragment_56()
;BEGIN CODE
; Player picks razor claws 1 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_53
Function Fragment_53()
;BEGIN CODE
; Player picks lacerations 1 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN CODE
; Player picks call of the pack 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_62
Function Fragment_62()
;BEGIN CODE
; Player picks slaughter perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_61
Function Fragment_61()
;BEGIN CODE
; Player picks severe injuries 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
; Player picks rage howl 1 perk

Game.IncrementStat("NumWerewolfPerks")

Game.UnlockWord(WO_HowlFuriousHowl)
Game.GetPlayer().AddShout(WO_HowlWerewolfFuriousHowl)

WO_FuriousHowlGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
; Player picks victory cry 3 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
; Player picks beastial strength 25 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
; Player picks unrelenting roar 1 perk

Game.IncrementStat("NumWerewolfPerks")

int playerLevel = Game.GetPlayer().GetLevel()
WO_HowlWerewolfUnrelentingRoarSpell1.SetNthEffectMagnitude(1, playerLevel * 1.0)

WO_HowlUnrelentingRoarChargesCount.Value = 1

Game.UnlockWord(WO_HowlUnrelentingRoar)
Game.GetPlayer().AddShout(WO_HowlWerewolfUnrelentingRoar1)

WO_UnrelentingRoarGainMessage.Show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_70
Function Fragment_70()
;BEGIN CODE
; Player picks supernatural reflexes perk

Game.IncrementStat("NumWerewolfPerks")

Game.GetPlayer().AddSpell(WO_SupernaturalReflexes)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
; Player picks beastial strength 75 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_45
Function Fragment_45()
;BEGIN CODE
; Player picks impenetrable skin 1 perk

Game.IncrementStat("NumWerewolfPerks")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property PlayerWerewolfQuest Auto

Spell Property WO_WerewolfDetectLife Auto


Spell Property WO_DetectCorpses Auto
Perk Property DLC1SavageFeedingPerk Auto
Spell Property WO_DetectCorpsesSavageFeeding Auto
GlobalVariable Property WO_DetectCorpsesIsActive Auto

Spell Property WO_AcceleratedMetabolism Auto

WO_SupernaturalReflexesMaintenance Property SupernaturalReflexesMaintenance Auto
Spell Property WO_SupernaturalReflexesSlowTime Auto
Spell Property WO_SupernaturalReflexes Auto
GlobalVariable Property WO_SupernaturalReflexesMaxUsedCharges Auto

WordOfPower Property WO_HowlTerribleRoar Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell1 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell2 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell3 Auto
Shout Property WO_HowlWerewolfTerribleRoar1 Auto
Shout Property WO_HowlWerewolfTerribleRoar2 Auto
Shout Property WO_HowlWerewolfTerribleRoar3 Auto
Message Property WO_TerribleRoarGainMessage Auto
GlobalVariable Property WO_HowlTerribleRoarChargesCount Auto

Shout Property WO_HowlWerewolfVictoryCry Auto
WordOfPower Property WO_HowlVictoryCry Auto
Message Property WO_VictoryCryGainMessage Auto

Shout Property WO_HowlWerewolfCallOfThePack Auto
WordOfPower Property WO_HowlCallOfThePack Auto
Message Property WO_CallOfThePackGainMessage Auto

GlobalVariable Property WO_SovereignsVoiceCreaturesMaxCount Auto
Shout Property WO_HowlWerewolfSovereignsVoice1 Auto
Shout Property WO_HowlWerewolfSovereignsVoice2 Auto
Shout Property WO_HowlWerewolfSovereignsVoice3 Auto
WordOfPower Property WO_HowlSovereignsVoice Auto
Message Property WO_SovereignsVoiceGainMessage Auto

Shout Property WO_HowlWerewolfUnrelentingRoar1 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar2 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar3 Auto
WordOfPower Property WO_HowlUnrelentingRoar Auto
Message Property WO_UnrelentingRoarGainMessage Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell1 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell2 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell3 Auto
GlobalVariable Property WO_HowlUnrelentingRoarChargesCount Auto

Shout Property WO_HowlWerewolfCursedFlame1 Auto
Shout Property WO_HowlWerewolfCursedFlame2 Auto
Shout Property WO_HowlWerewolfCursedFlame3 Auto
WordOfPower Property WO_HowlCursedFlame Auto
Message Property WO_CursedFlameGainMessage Auto

Shout Property WO_HowlWerewolfFuriousHowl Auto
WordOfPower Property WO_HowlFuriousHowl Auto
Message Property WO_FuriousHowlGainMessage Auto

Shout Property WO_HowlWerewolfCloakOfShadows Auto
WordOfPower Property WO_HowlCloakOfShadows Auto
Message Property WO_CloakOfShadowsGainMessage Auto

FormList Property WO_SpellsPowers  Auto

Spell Property WO_PerkAdrenaline Auto

Spell Property WO_PerkAcrobat1 Auto
Spell Property WO_PerkAcrobat2 Auto

GlobalVariable Property WO_FeedingCounter Auto
Spell Property WO_PerkManiac Auto
Message Property WO_Maniac50VictimsMessage Auto

Spell Property WO_PerkBeastSpirit1 Auto
Spell Property WO_PerkBeastSpirit2 Auto
Spell Property WO_PerkBeastSpirit3 Auto

Spell Property WO_PerkMoonlight1 Auto
Spell Property WO_PerkMoonlight2 Auto

WO_HowlCoolDownHandler Property UnrelentingRoarCooldownHandler Auto
WO_HowlCoolDownHandler Property CursedFlameCooldownHandler Auto

GlobalVariable Property WO_WerewolfHunterPerk Auto
