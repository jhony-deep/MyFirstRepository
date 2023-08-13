public class child_event {

    @auraenabled
    public static list<contact> main(string leadsource){
        list<contact>con = [select id , Lastname, firstname , phone, leadsource from contact where leadsource=:leadsource ];
        return con;
    }
}