Scriptname DLC1WerewolfFeedPointsScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

GlobalVariable Property DLC1WerewolfFeedPoints  Auto  
GlobalVariable Property DLC1WerewolfNextPerk  Auto  
GlobalVariable Property DLC1WerewolfPerkPoints  Auto  

Message Property DLC1FeedPointsMsg  Auto  
Message Property WO_CursedFlameFeedPointsMsg  Auto  

Message Property DLC1WerewolfPerkEarned  Auto  

GlobalVariable Property DLC1WerewolfMaxPerks  Auto  

GlobalVariable Property DLC1WerewolfTotalPerksEarned  Auto  

Quest Property PlayerWerewolfQuest  Auto  

MagicEffect Property FXBleedMagicMedium  Auto  

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;-----------------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	DLC1WerewolfFeedPoints.Value += 1

	If DLC1WerewolfTotalPerksEarned.Value < DLC1WerewolfMaxPerks.Value
		if akTarget.GetAV("WerewolfPerks") == 0		; NPC does't using this AV, so it's save to use for us
			DLC1FeedPointsMsg.Show()
		else
			WO_CursedFlameFeedPointsMsg.Show()
			(PlayerWerewolfQuest as PlayerWerewolfChangeScript).CursedFlameFeed(akTarget)
		endif

		if DLC1WerewolfFeedPoints.Value >= DLC1WerewolfNextPerk.Value
			DLC1WerewolfFeedPoints.Value -= DLC1WerewolfNextPerk.Value
			DLC1WerewolfPerkPoints.Value += 1

			DLC1WerewolfTotalPerksEarned.Value += 1
			DLC1WerewolfNextPerk.Value = DLC1WerewolfNextPerk.Value + 2

			DLC1WerewolfPerkEarned.Show()
		endif
	endif

	Game.GetPlayer().SetActorValue("WerewolfPerks", DLC1WerewolfFeedPoints.Value / DLC1WerewolfNextPerk.Value * 100)

EndEvent


;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
