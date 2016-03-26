public with sharing class BugsTrackerController {

	public List<Objective__c> objectives{get;set;} 

	public BugsTrackerController() {
		
	}

	public void initLoading()
	{
		objectives = [SELECT Id, Name, Description__c, Objective_Status__c, Objective_Type__c,
							Start_Date__c, 	End_Date__c, Version__c 
						FROM Objective__c];

		System.debug('Init debug');
	}

	public void deleteObjective()
	{
		System.debug('Delete button is pressed');
	}
	
}