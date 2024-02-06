Class %ZENproxy.Test
{
ClassMethod Json() As %Status
{
	#Dim objectA As %ZENproxy.Object
	Set objectA=##class(%ZENproxy.Object).%New()
	Set objetoB=##class(%ZENproxy.Object).%New()
	Set objetoB.phone2=961365378
	Set objetoB.name="Dani"
	Set objectA.objetoB=objetoB
	Set objectA.phone=964121214
	u 0 w "NORMAL",!
	
	Do objectA.%ToJSON()
	
	U 0 W !!
	
	u 0 w "WITH PARAMETER",!
	Do objectA.%ToJSON(,"aelotwux")
	
	U 0 W !!
	
	u 0 w "WITH PARAMETRO AND EXCLUDED",!
	Do objectA.excludeStringformat.Insert("phone")
	Do objectA.%ToJSON(,"aelotwux")
	
	U 0 W !,!
	
	u 0 w "WITH FORCED LIST",!
	Do objectA.forceStringFormat.Insert("phone")
	Do objectA.%ToJSON()
}

}
