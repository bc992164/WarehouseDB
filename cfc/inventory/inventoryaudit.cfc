<cfcomponent>
	<!--- INIT constructor function --->
	
<!--- method that gets containers inbound and Data --->
<!--- ************************************* --->
<cffunction name="getInboundData" access="remote" output="false" returntype="any" hint="Gets Data from Inbound Spreadsheets">
	<cfargument name="returnAs" default="query">

<!--- Scope variables  --->
<cfset var qInboundData = "">
<!--- cfquery =name "qInboundData" datasource="db10" - Doesn't need datasource as it's defined in application --->
<cfquery name="qInboundData">

       SELECT SKU, description, containerno, sum(Quantity) as qty, ContainerRegDate 
       FROM Inbound_D8TA
       group by containerno, SKU, description, ContainerRegDate 
     </cfquery>

<cfreturn qInboundData>


</cffunction>

<!--- method that gets distinct containers Name inbound --->
<cffunction name="getDistinctInbound" access="remote" output="false" returntype="any" hint="Gets Distinct Container">
  <cfargument name="returnAs" default="query">
  <!--- Scope variables  --->
<cfset var qInboundDistinct = "">
<cfquery name="qInboundDistinct">
       SELECT  containerno, CONTAINERREGDATE
       FROM Inbound_D8TA
       group by containerno, CONTAINERREGDATE
       ORDER BY CONTAINERREGDATE DESC
     </cfquery>


<cfreturn qInboundDistinct>
 </cffunction>


<!--- method that gets Audit scan Data  --->
<cffunction name="getAuditData" access="remote" output="false" returntype="any" hint="Gets Data from Audit Scan">
  <cfargument name="returnAs" default="query">
    <!--- Scope variables  --->
<cfset var qAuditD8TA = "">
<cfquery name="qAuditD8TA">
       SELECT  SKU,  MaxDescription, containerno, inbQty, audQty, DateRcvd
       FROM Audit_D8TA_Qry
        ORDER BY DateRcvd DESC
     </cfquery>


<cfreturn qAuditD8TA>
 </cffunction>



<!--- method that gets Audit scan Data  --->
<cffunction name="getDistinctAudit" access="remote" output="false" returntype="any" hint="Gets Distinct Audit Date">
  <cfargument name="returnAs" default="query">
 <!--- Scope variables  --->
<cfset var qAuditDistinct= "">
<cfquery name="qAuditDistinct">
       SELECT  DateRcvd
       FROM Audit_D8TA_Qry
       group by DateRcvd
     </cfquery>


<cfreturn qAuditDistinct>
 </cffunction>






</cfcomponent>