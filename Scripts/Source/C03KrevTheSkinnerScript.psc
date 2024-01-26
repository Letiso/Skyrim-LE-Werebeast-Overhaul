Scriptname C03KrevTheSkinnerScript extends ReferenceAlias  

ReferenceAlias Property Aela auto
Armor Property WO_ArmorSilverHandHelmetCapedHeavy auto
Armor Property WO_ArmorSilverPlateHelmet auto

actor _actorRef


Event OnLoad()
	_actorRef = GetActorRef()

	if _actorRef.GetItemCount(WO_ArmorSilverHandHelmetCapedHeavy) < 1
		_actorRef.RemoveItem(WO_ArmorSilverPlateHelmet)
		_actorRef.AddItem(WO_ArmorSilverHandHelmetCapedHeavy)
	endif
	
	_actorRef.EquipItem(WO_ArmorSilverHandHelmetCapedHeavy)

EndEvent


Event OnDeath(Actor akKiller)
	GetOwningQuest().SetObjectiveCompleted(30)
	GetOwningQuest().SetObjectiveDisplayed(31)
	(GetOwningQuest() as C03QuestScript).AelaShouldForceGreet = True
	Aela.GetActorReference().EvaluatePackage()

EndEvent
