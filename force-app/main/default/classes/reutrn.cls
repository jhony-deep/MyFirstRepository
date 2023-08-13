public class reutrn {

    public string likename {get;set;}
        public string ekword {get;set;}
    public list<account>acc {set;get;}
    public  list<account> main(){
       
        acc=[select id , name , phone from account where name like :likename];
        return acc;
    }
}