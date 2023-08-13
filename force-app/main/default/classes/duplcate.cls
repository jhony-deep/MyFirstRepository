global class duplcate {
    
    global static list<contact> main(string myid){
        list<contact> con =[select id , lastname , firstname,accountid from contact where id=:myid];
        system.debug(con);
        return con;
        
    }

}