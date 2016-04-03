trigger ObjectiveTrigger on Objective__c (after insert, after update) 
{	
	PartnerNetworkConnection connect = [SELECT Id, ConnectionStatus, ConnectionName 
									FROM PartnerNetworkConnection  
									WHERE ConnectionStatus = 'Accepted' AND ConnectionName = 'Fusion Genius'];						
	List<PartnerNetworkRecordConnection> recordsConnectionToInsert  = new List<PartnerNetworkRecordConnection>  ();
	for (Objective__c obj : Trigger.new)
	{
        PartnerNetworkRecordConnection newObj = new PartnerNetworkRecordConnection();
        newObj.ConnectionId = connect.Id;
        newObj.LocalRecordId = obj.id;  
        newObj.SendClosedTasks = false;
        newObj.SendOpenTasks = false;
        newObj.SendEmails = false;
        recordsConnectionToInsert.add(newObj);
    }
    if (recordsConnectionToInsert.size() > 0)
    {
        System.debug('Sharing ' + recordsConnectionToInsert.size() + ' records');
        insert recordsConnectionToInsert;
    }

}