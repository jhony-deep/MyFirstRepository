public class accountinputpickvisual {
    public string name {set;get;}
    public string industry {set;get;}
    public list<Account> accounts {set;get;}
    public string query {set;get;}
    
    public void search1(){
         query = 'select name , id , phone , rating, industry from Account';
        if(name!=' '&&industry!=''){
            query= query + 'where name = \''+name+'\' and industry = \''+industry+'\'';
        }
        else{
            if(name!=''){
                   query= query + 'where name = \''+name+'\'' ;
                       }
            else{
                if(industry!=''){
                       query= query + 'where name = \''+industry+'\'' ;
                }
            }
                    
                }
            }
        }