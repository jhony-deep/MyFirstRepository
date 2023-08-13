<aura:application extends="force:slds">
   <div style="border:2px solid red;margin:10px">
    <lightning:layout multipleRows="true">
       <lightning:layoutItem size="12" padding="around-medium" >
      <lightning:card title="Account" iconName="standard:opportunity">
          <aura:set attribute="title">ACCOUNT DETAILS</aura:set>
           <aura:set attribute ="actions">
          <lightning:button label="save" variant="success" iconName="utility:edit"></lightning:button>
                     <lightning:button label="cancel" variant="standard" iconName="utility:edit"></lightning:button>
          </aura:set>
          
           </lightning:card>
        </lightning:layoutItem>
         <lightning:layoutItem size="6" padding="around-medium" flexibility="auto">
        
        <lightning:card>
          <lightning:recordViewForm objectApiName="contact" recordId="0035i00000DSuAI">
              <lightning:outputField fieldName="LastName"/>
              <lightning:outputField fieldName="FirstName"/>
                <lightning:outputField fieldName="Phone"/>
            </lightning:recordViewForm>
           </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size="" padding="around-medium" flexibility="auto">
        
        <lightning:card>
       <lightning:recordEditForm objectApiName="Account" recordId="0015i00000Oy0oL">
           <lightning:outputField fieldName="Name"/>
            <lightning:inputField fieldName="Name"/>
            
        <lightning:button class="slds-m-top_small" type="submit" label="Create new" />
    </lightning:recordEditForm>
            
           </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size="12" padding="around-medium" flexibility="auto">
        <lightning:card>
             <aura:set attribute="footer">ACCOUNT DETAILS</aura:set>
           <aura:set attribute ="actions">
          <lightning:button label="save" variant="success" iconName="utility:edit"></lightning:button>
                     <lightning:button label="cancel" variant="standard" iconName="utility:edit"></lightning:button>
          </aura:set>
          
           </lightning:card>
        </lightning:layoutItem>
       </lightning:layout>
    </div>
</aura:application>