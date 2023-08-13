public class name{
   
    public static void main(){
    list<account>acc=[select id from account where name like 'united%'];
        list<contact>contacts= new list<contact>();
        for(account  a : acc){
            contact con  = new contact();
            con.LastName='this is new';
            con.AccountId=a.id;
            contacts.add(con);
        }
        insert contacts;
    }
}