var d = new Date();
var day= new Array(7);
day[0]="星期日";
day[1]="星期一";
day[2]="星期二";
day[3]="星期三";
day[4]="星期四";
day[5]="星期五";
day[6]="星期六";
document.getElementById("week").innerHTML=day[d.getDay()];