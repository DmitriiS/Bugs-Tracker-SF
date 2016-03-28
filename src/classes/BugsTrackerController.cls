public with sharing class BugsTrackerController {

	public List<Objective__c> objectives{get;set;} 

	
	public void initLoading()
	{
		objectives = [SELECT Id, Name, Description__c, Objective_Status__c, Objective_Type__c,
							Start_Date__c, 	End_Date__c, Version__c 
						FROM Objective__c];

		System.debug('Init debug');
		System.debug('objectives date' + objectives[0].Start_Date__c);
	}

	public void deleteObjective()
	{
		System.debug('Delete button is pressed');
	}

	public void saveObjective()
	{
		System.debug('Save button is pressed');
	}

	public void editObjective()
	{
		System.debug('Edit button is pressed');
	}

	public void backupObjective()
	{
		System.debug('Backup button is pressed');
	}
	
	/*
	@RemoteAction
    public static String createObjective(string Name, string Description, string Objective_Status,
    									string Objective_Type, string Version, Date Start_Date, Date End_Date) {
       System.debug('createObjective starts');
       Objective__c obj = new Objective__c();
       obj.Name = Name;
       obj.Description__c = Description;
       obj.Objective_Status__c = Objective_Status;
       obj.Objective_Type__c = Objective_Type;
       obj.Version__c = Version;
       obj.Start_Date__c = Start_Date;
       obj.End_Date__c = End_Date;
       insert obj;
       System.debug('createObjective ends');  
       return obj.Id;             
    }
    */
	
}