public class Custom_cmp {
    public list<account>acc {set;get;}
    public list<string> fields {set;get;}
    
    public Custom_cmp(){
        acc=[select name , phone , id , industry from account limit 6 ];
        fields=new list<string>{'name' , 'phone' , 'id' , 'industry'};
    }
    

}