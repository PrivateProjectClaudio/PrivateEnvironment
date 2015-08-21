global with sharing class TestController {
	public static Account account{get;set;}

	@remoteAction
	global static Account getAccount(String accountName){
	   account = [select id, Name from Account where Name =: accountName];
	   return account;
	}

	@remoteAction
	global static void insertAccount(Account AccountParam){
		account = AccountParam;
		insert account;
	}
}