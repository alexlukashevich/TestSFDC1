/**
 * Auto Generated and Deployed by Fast Prefill - Formstack
 **/
trigger FFPrefill_Trigger9D0F8 on Account
    (after insert)
{
 if  (trigger.isAfter  &&  trigger.isInsert) { 
List<Account>  newlyInsertedItems =  [SELECT  Id ,  linkToUpdate__c FROM  Account WHERE  Id  IN :trigger.new] ; 
List<string> ids = new List<string>();
 for ( Account e  : newlyInsertedItems) { 
ids.add(e.id); 
} 
 VisualAntidote.FastFormsUtilities.DoUpdateRecords( 'Account' ,  'linkToUpdate__c' ,  'a1A1N000005bFqKUAU' ,  ids,null );  
 update newlyInsertedItems;}
}