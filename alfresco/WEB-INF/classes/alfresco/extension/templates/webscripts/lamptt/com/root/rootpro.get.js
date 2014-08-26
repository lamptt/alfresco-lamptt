function main() {
	logger.log("Inside rootpro.get.js");
	process();
}
function process(){
		//var f= companyhome.childByNamePath("A/A1");
		var f = companyhome;
		var c1 = f.childAssocs["sla:c1s"];
		
		model.n1 = c1.length;
		model.f = f;
		model.c1 = c1;
		var whitepaperInfo1 = new Array();
		for(i = 0; i < c1.length; i++)
		{
			var whitepaper1 = new whitepaperEntry1(c1[i])
			whitepaperInfo1[i] = whitepaper1;
			var c2 = c1[i].childAssocs["sla:c2s"];
			
			var whitepaperInfo = new Array();
			for (j = 0; j < c2.length; j++) {
				var whitepaper = new whitepaperEntry(c2[j]);
				whitepaperInfo[j] = whitepaper;
			}
			model.whitepapers = whitepaperInfo;
		}
		model.whitepapers1 = whitepaperInfo1;
		
		//Date
		var ys = f.childAssocs["sla:dc1s"];
		var YearInfo = new Array();
		for(i = 0; i < ys.length; i++)
		{
			var year = new YearEntry(ys[i])
			YearInfo[i] = year;
			var ms = ys[i].childAssocs["sla:dc2s"];
			
			var MonthInfo = new Array();
			for (j = 0; j < ms.length; j++) {
				var month = new MonthEntry(ms[j]);
				MonthInfo[j] = month;
			}
			model.Months = MonthInfo;
		}
		model.Years = YearInfo;
		
		//type
		var tc1s = f.childAssocs["sla:tc1s"];
		var TC1Info = new Array();
		for(i = 0; i < tc1s.length; i++)
		{
			var tc1 = new TC1Entry(tc1s[i])
			TC1Info[i] = tc1;
			var tc2s = tc1s[i].childAssocs["sla:tc2s"];
			
			var TC2Info = new Array();
			for (j = 0; j < tc2s.length; j++) {
				var tc2 = new TC2Entry(tc2s[j]);
				TC2Info[j] = tc2;
			}
			model.TC2S = TC2Info;
		}
		model.TC1S = TC1Info;
		
		return model;	
}
function whitepaperEntry(whitepaper) {
    this.whitepaper = whitepaper;
}
function whitepaperEntry1(whitepaper1) {
    this.whitepaper1 = whitepaper1;
}
function MonthEntry(month) {
    this.month = month;
}
function YearEntry(year) {
    this.year = year;
}
function TC1Entry(tc1) {
    this.tc1 = tc1;
}
function TC2Entry(tc2) {
    this.tc2 = tc2;
}
main();