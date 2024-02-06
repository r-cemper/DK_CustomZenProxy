# CustomZenProxy
Customization of ZenProxy Intersystems to be enable to send numeric attributes in String format.

Just download an import files of src folder.
or use
```
zpm "install custom-zen-proxy"
```
## EXAMPLE:
### CODE:
```
ClassMethod testJson() As %Status
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
```
### RESULT:

#### NORMAL
{
        "objetoB": {
                "name":"Dani",
                "phone2":961365378
        },
        "phone":964121214
}
 
#### WITH PARAMETER
{
        "objetoB": {
                "name":"Dani",
                "phone2":"961365378"
        },
        "phone":"964121214"
}
 
#### WITH PARAMETER AND EXCLUDED
{
        "objetoB": {
                "name":"Dani",
                "phone2":"961365378"
        },
        "phone":964121214
   }
 
#### WITH FORCED LIST
{
        "objetoB": {
                "name":"Dani",
                "phone2":961365378
        },
        "phone":"964121214"
}

## Docker Support
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/intersystems-community/objectscript-docker-template.git
```
Open the terminal in this directory and run:
```
$ docker-compose build
```
Run the IRIS container with your project:
```
$ docker-compose up -d
```
​
