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
		f = companyhome;
		var ys = f.childAssocs["sla:ys"];
		var YearInfo = new Array();
		for(i = 0; i < ys.length; i++)
		{
			var year = new YearEntry(ys[i])
			YearInfo[i] = year;
			var ms = ys[i].childAssocs["sla:ms"];
			
			var MonthInfo = new Array();
			for (j = 0; j < ms.length; j++) {
				var month = new MonthEntry(ms[j]);
				MonthInfo[j] = month;
			}
			model.Months = MonthInfo;
		}
		model.Years = YearInfo;
		
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
main();