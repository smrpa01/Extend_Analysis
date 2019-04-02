library("xml2")
library("XML")
library("methods")
file.name <- "basic.xml"
input.xml <- xmlInternalTreeParse(file.name)
nodes.xml <- getNodeSet(input.xml , "//pecan")
sensitivity.xml <- xmlNode("sensitivity.analysis" )
newNode = newXMLNode("quantiles ",newXMLNode("sigma" , -2) , newXMLNode("sigma" , -1) ,
                     newXMLNode("sigma" , 1) , newXMLNode("sigma" , 2))
top = newXMLNode("sensitivity.analysis", newNode)
nodes.xml[[1]] = addChildren(nodes.xml[[1]] , top)
