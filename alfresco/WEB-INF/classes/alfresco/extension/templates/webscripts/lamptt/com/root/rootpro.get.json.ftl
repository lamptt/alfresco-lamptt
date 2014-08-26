<#assign datetimeformat="EEE, dd MMM yyyy HH:mm:ss zzz">
{	
	"f1": "<#if f.properties["sla:f1"]?exists>${f.properties["sla:f1"]}<#else>0</#if>",
	"f2": "<#if f.properties["sla:f2"]?exists>${f.properties["sla:f2"]}<#else>0</#if>",
	"f3": "<#if f.properties["sla:f3"]?exists>${f.properties["sla:f3"]}<#else>0</#if>",
	"f4": "<#if f.properties["sla:f4"]?exists>${f.properties["sla:f4"]}<#else>0</#if>",
	"f5": "<#if f.properties["sla:f5"]?exists>${f.properties["sla:f5"]}<#else>0</#if>",
	"f6": "<#if f.properties["sla:f6"]?exists>${f.properties["sla:f6"]}<#else>0</#if>",
	"f7": "<#if f.properties["sla:f7"]?exists>${f.properties["sla:f7"]}<#else>0</#if>",
	"f name": "${f.properties.name}",
	"length1": ${n1},
	 <#list whitepapers1 as child1>
		"c10_0": "<#if child1.whitepaper1.properties["sla:c10"]?exists>${child1.whitepaper1.properties["sla:c10"]}<#else>0</#if>"
		"c11_0": "<#if child1.whitepaper1.properties["sla:c11"]?exists>${child1.whitepaper1.properties["sla:c11"]}<#else>0</#if>"
		"c12_0": "<#if child1.whitepaper1.properties["sla:c12"]?exists>${child1.whitepaper1.properties["sla:c12"]}<#else>0</#if>"
		"c13_0": "<#if child1.whitepaper1.properties["sla:c13"]?exists>${child1.whitepaper1.properties["sla:c13"]}<#else>0</#if>"
		"c14_0": "<#if child1.whitepaper1.properties["sla:c14"]?exists>${child1.whitepaper1.properties["sla:c14"]}<#else>0</#if>"
		"c15_0": "<#if child1.whitepaper1.properties["sla:c15"]?exists>${child1.whitepaper1.properties["sla:c15"]}<#else>0</#if>"
		"c16_0": "<#if child1.whitepaper1.properties["sla:c16"]?exists>${child1.whitepaper1.properties["sla:c16"]}<#else>0</#if>"
		"c17_0": "<#if child1.whitepaper1.properties["sla:c17"]?exists>${child1.whitepaper1.properties["sla:c17"]}<#else>0</#if>"
		<#list whitepapers as child>
			{
				"c20_0": "<#if child.whitepaper.properties["sla:c20"]?exists>${child.whitepaper.properties["sla:c20"]}<#else>0</#if>"
				"c21_0": "<#if child.whitepaper.properties["sla:c21"]?exists>${child.whitepaper.properties["sla:c21"]}<#else>0</#if>"
				"c22_0": "<#if child.whitepaper.properties["sla:c22"]?exists>${child.whitepaper.properties["sla:c22"]}<#else>0</#if>"
				"c23_0": "<#if child.whitepaper.properties["sla:c23"]?exists>${child.whitepaper.properties["sla:c23"]}<#else>0</#if>"
				"c24_0": "<#if child.whitepaper.properties["sla:c24"]?exists>${child.whitepaper.properties["sla:c24"]}<#else>0</#if>"
				"c25_0": "<#if child.whitepaper.properties["sla:c25"]?exists>${child.whitepaper.properties["sla:c25"]}<#else>0</#if>"
				"c26_0": "<#if child.whitepaper.properties["sla:c26"]?exists>${child.whitepaper.properties["sla:c26"]}<#else>0</#if>"
				"c27_0": "<#if child.whitepaper.properties["sla:c27"]?exists>${child.whitepaper.properties["sla:c27"]}<#else>0</#if>"
			}
			<#if !(child.whitepaper == whitepapers?last.whitepaper)>,</#if>
		</#list>
	</#list>
	"Date-----------": "-------------Date"
	"d1": "<#if f.properties["sla:d1"]?exists>${f.properties["sla:d1"]}<#else>0</#if>",
	"f name": "${f.properties.name}",
	 <#list Years as childYears>
	 	"y0": "<#if childYears.year.properties["sla:dc1p0"]?exists>${childYears.year.properties["sla:dc1p0"]}<#else>0</#if>",
		"y1": "<#if childYears.year.properties["sla:dc1p1"]?exists>${childYears.year.properties["sla:dc1p1"]}<#else>0</#if>"
		<#list Months as childMonths>
			{
				"m0": "<#if childMonths.month.properties["sla:dc2p0"]?exists>${childMonths.month.properties["sla:dc2p0"]}<#else>0</#if>",
				"m1": "<#if childMonths.month.properties["sla:dc2p1"]?exists>${childMonths.month.properties["sla:dc2p1"]}<#else>0</#if>"
			}
		</#list>
	</#list>
	
	"Type-----------": "-------------Type"
	"t1": "<#if f.properties["sla:t1"]?exists>${f.properties["sla:t1"]}<#else>0</#if>",
	"f name": "${f.properties.name}",
	 <#list TC1S as childTC1S>
	 	"tc10": "<#if childTC1S.tc1.properties["sla:tc1p0"]?exists>${childTC1S.tc1.properties["sla:tc1p0"]}<#else>0</#if>"
		<#list TC2S as childTC2S>
			{
				"tc20": "<#if childTC2S.tc2.properties["sla:tc2p0"]?exists>${childTC2S.tc2.properties["sla:tc2p0"]}<#else>0</#if>",
			}
		</#list>
	</#list>
    
}