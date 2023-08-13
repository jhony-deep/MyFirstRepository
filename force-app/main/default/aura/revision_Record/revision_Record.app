<aura:application extends="force:slds" >
    <aura:attribute name="recordid" type="string"/>
	<lightning:layout class="box" multipleRows="true">
        <lightning:layoutItem size="12" flexibility="auto">
        <lightning:card class="ox">
            <aura:set attribute="title">
        <lightning:avatar fallbackIconName="standard:contact"></lightning:avatar>
              ICICI APPLICATION  </aura:set>
             <aura:set attribute="actions">
        <lightning:buttonGroup>
                 <lightning:button label="save" variant="toogle"></lightning:button>
            <lightning:button label="download" iconName="utility:download"/>
                 </lightning:buttonGroup>
              </aura:set>
            </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size="4" flexibility="auto" padding="around-medium">
        <lightning:card class="ox">
               <lightning:recordEditForm objectApiName="Account" recordId="0015i00000Oy0oB">
                   <lightning:inputField fieldName="Name"/>
                    <lightning:inputField fieldName="Phone"/>
                    <lightning:inputField fieldName="Industry"/>
                    <lightning:inputField fieldName="Rating"/>
            </lightning:recordEditForm>
            </lightning:card>
        </lightning:layoutItem>
         <lightning:layoutItem size="5" flexibility="auto" padding="around-medium">
        <lightning:card class="ox">
            <lightning:recordViewForm objectApiName="Account" recordId="0015i00000Oy0oB">
                   <lightning:outputField fieldName="Name"/>
                    <lightning:outputField fieldName="Phone"/>
                    <lightning:outputField fieldName="Industry"/>
                    <lightning:outputField fieldName="Rating"/>
                 <lightning:outputField fieldName="Type"/>
            </lightning:recordViewForm>
            </lightning:card>
        </lightning:layoutItem>
         <lightning:layoutItem size="3" flexibility="auto" padding="around-medium">
        <lightning:card class="ox">
              <lightning:recordEditForm objectApiName="Account" recordId="0015i00000Oy0oB">
                   <lightning:inputField fieldName="Name"/>
                    <lightning:inputField fieldName="Phone"/>
                    <lightning:inputField fieldName="Industry"/>
                  
            </lightning:recordEditForm>
             <aura:set attribute="footer">
            <lightning:button label="click" iconName="utility:save"/>
        </aura:set>
            </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size="12" flexibility="auto">
        <lightning:card class="ox">
            <aura:set attribute="title">
        <lightning:avatar fallbackIconName="standard:contact"></lightning:avatar>
              ICICI APPLICATION  </aura:set>
             <aura:set attribute="actions">
        <lightning:buttonGroup>
                 <lightning:button label="save" variant="toogle"></lightning:button>
            <lightning:button label="download" iconName="utility:download"/>
                 </lightning:buttonGroup>
              </aura:set>
            </lightning:card>
        </lightning:layoutItem>
    </lightning:layout>
</aura:application>