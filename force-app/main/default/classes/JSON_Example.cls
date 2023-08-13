public class JSON_Example {
    public string integervalue {set;get;}
     public integer integervalue1 {set;get;}
     public string decimalvalue {set;get;}
    public Account accvalue {set;get;}
     public string accountvalue {set;get;}
     public string studentvalue {set;get;}
      public string studentvaluenew {set;get;}
    public string studentvaluenewsupress {set;get;}
       public string integervaluepretty {set;get;}
     public string decimalvaluepretty {set;get;}
     public string accountvaluepretty {set;get;}
     public string studentvaluepretty {set;get;}
    public JSON_Example(){
        integervalue=JSON.serialize(10);
        decimalvalue=JSON.serialize(10.256);
        account acc = new account(name='kunal',phone='858585');
        accountvalue=JSON.serialize(acc);
        student stu = new student('satish','hyd','986589');
studentvalue=JSON.serialize(stu);
        integervaluepretty=JSON.serializePretty(10);
        decimalvaluepretty=JSON.serializePretty(10.258);
        accountvaluepretty=JSON.serializePretty(acc);
        studentvalue=JSON.serializePretty(stu);
        student st1 = new student();
        st1.name='kunal';
        st1.phone='787878';
         studentvaluenew=JSON.serializePretty(st1);
        studentvaluenewsupress=JSON.serialize(st1, true);
        integervalue1=(integer)json.deserialize('10', integer.class);
        string str ='{"Name":"kunal","Phone":"858585","industry":"Banking"}';
        accvalue = (Account)JSON.deserializeStrict(str,Account.class);
    }
}