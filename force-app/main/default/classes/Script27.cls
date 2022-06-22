public class Script27 {
    public  static integer accEmpAsiaNa(){
        List<account>accList = [select name,numberofemployees from account where working__c includes('ASIA','NA')];
        Integer totalEmployees=0;
        for(Account acc:accList)
        {
            totalEmployees+=acc.NumberofEmployees;
        }
        return totalEmployees;
    }
}