public class revision_selectoption {

    public list<contact> con {set;get;}
    public list<SelectOption> options {set;get;}
    public string selected {set;get;}
    
    public revision_selectoption(){
        options = new list<SelectOption>();
        con = new list<contact>();
        list<string> source = new list<string>{'Web','Phone Inquiry','Public Relations','Word of mouth','Trade Show'};
            for(string n : source){
                SelectOption op = new SelectOption(n,n);
                options.add(op);
            }
        //system.debug(options);
    }
    public void main(){
    con =[select id , lastname , firstname, phone , leadsource from contact where leadsource=:selected];
        system.debug(con);
    }
    
}