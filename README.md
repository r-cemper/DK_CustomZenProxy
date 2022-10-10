# CustomZenProxy
Customization of ZenProxy Intersystems to be enable to send numeric attributes in String format.

Just donwload an import XML files of src folder.

#EXAMPLE:

#CODE:

ClassMethod testJson() As %Status
{
	#Dim objectA As %ZEN.proxyObject
	Set objectA=##class(%ZEN.proxyObject).%New()
	
	Set objetoB=##class(%ZEN.proxyObject).%New()
	Set objetoB.phone2=961365378
	Set objetoB.name="Dani"
	Set objectA.objetoB=objetoB
	Set objectA.phone=964121214
	u 0 w "NORMAL",!
	
	Do objectA.%ToJSON()
	
	U 0 W "",!,!
	
	u 0 w "WITH PARAMETER",!
	Do objectA.%ToJSON(,"aelotwux")
	
	U 0 W "",!,!
	
	u 0 w "WITH PARAMETRO AND EXCLUDED",!
	Do objectA.excludeStringformat.Insert("phone")
	Do objectA.%ToJSON(,"aelotwux")
	
	U 0 W "",!,!
	
	u 0 w "WITH FORCED LIST",!
	Do objectA.forceStringFormat.Insert("phone")
	Do objectA.%ToJSON()
}

 

#RESULT:

NORMAL
{
        "objetoB": {
                "name":"Dani",
                "phone2":961365378
        },
        "phone":964121214
}
 
WITH PARAMETER
{
        "objetoB": {
                "name":"Dani",
                "phone2":"961365378"
        },
        "phone":"964121214"
}
 
WITH PARAMETRO AND EXCLUDED
{
        "objetoB": {
                "name":"Dani",
                "phone2":"961365378"
        },
        "phone":964121214
}
 
WITH FORCED LIST
{
        "objetoB": {
                "name":"Dani",
                "phone2":961365378
        },
        "phone":"964121214"
}



​
