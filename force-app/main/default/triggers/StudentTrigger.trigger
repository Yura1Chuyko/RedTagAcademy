trigger StudentTrigger on Student__c (before insert) {
	StudentTriggerHandler.commentField(Trigger.new);
}