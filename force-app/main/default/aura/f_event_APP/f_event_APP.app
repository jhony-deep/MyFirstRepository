<aura:application  extends="force:slds" >
   
    <aura:attribute name="fields" type="String[]" default="['NAME__c','Donor_Class__c','Primary_Email__c','Alternate_Email__c','Primary_Country_Code__c','Primary_Phone__c']" />
  <lightning:card title="This is title" iconName="standard:account">
    <lightning:recordForm
        aura:id="myRecordForm"
        objectApiName="My_NGO_MAIN__c"
        fields="{!v.fields}"
        columns="2"
      
         />
    </lightning:card>
                    
</aura:application>