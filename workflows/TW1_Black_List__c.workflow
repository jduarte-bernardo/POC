<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Atualiza_SGL</fullName>
        <field>SGL__c</field>
        <formula>TW1_Promocao__r.TW1_Shopping__r.TW1_SGL_Empreendimento__c</formula>
        <name>Atualiza SGL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>TW1_WF_BlackList_PreencheSGL</fullName>
        <actions>
            <name>Atualiza_SGL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Preenche campo SGL para regra de compartilhamento.</description>
        <formula>ISNEW() || ISCHANGED(TW1_Promocao__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
