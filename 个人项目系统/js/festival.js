 Date.prototype.myMet=function(){
    			/*固定不变的节日*/
				if (this.getMonth()==0&&this.getDate()==1){
					this.myProp="元旦快乐！(假期：1月1日-3日)";
				}
				else if (this.getMonth()==2&&this.getMonth()==8){
					this.myProp="妇女节快乐！";
				}
				else if (this.getMonth()==2&&this.getMonth()==12){
					this.myProp="植树节快乐！";
				}
				else if (this.getMonth()==3&&this.getMonth()==5){
					this.myProp="清明节快乐！";
				}
				else if (this.getMonth()==4&&this.getDate()==4){
					this.myProp="青年节快乐！";
				}
				else if (this.getMonth()==5&&this.getDate()==1){
					this.myProp="儿童节快乐！";
				}
				else if (this.getMonth()==6&&this.getDate()==1){
					this.myProp="建党节快乐！";
				}
				else if (this.getMonth()==6&&this.getDate()==7){
					this.myProp="七七抗战纪念日";
				}
				else if (this.getMonth()==7&&this.getDate()==1){
					this.myProp="建军节快乐！";
				}
				else if (this.getMonth()==8&&this.getMonth()==3){
					this.myProp="中国人民抗日战争胜利纪念日";
				}
				else if (this.getMonth()==8&&this.getMonth()==10){
					this.myProp="教师节快乐！";
				}
				else if (this.getMonth()==8&&this.getMonth()==18){
					this.myProp="九一八纪念日";
				}
				else if (this.getMonth()==9&&this.getDate()==1){
					this.myProp="国庆节快乐!(假期：10月1日-7日)";
				}
				else if (this.getMonth()==11&&this.getDate()==24){
					this.myProp="平安夜快乐！";
				}
				else if (this.getMonth()==11&&this.getDate()==25){
					this.myProp="圣诞节快乐！";
				}
				/*变化的节日，每年需手动更改*/
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==5){
					this.myProp="小寒";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==10){
					this.myProp="腊八节快乐！今天记得喝腊八粥";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==20){
					this.myProp="大寒";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==25){
					this.myProp="北方小年";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==26){
					this.myProp="南方小年";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==0&&this.getDate()==31){
					this.myProp="除夕快乐！";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==1&&this.getDate()==1){
					this.myProp="春节快乐！";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==1&&this.getDate()==4){
					this.myProp="立春";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==1&&this.getDate()==19){
					this.myProp="雨水";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==1&&this.getDate()==15){
					this.myProp="元宵节快乐！今天记得吃元宵/喝汤圆";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==2&&this.getMonth()==5){
					this.myProp="惊蛰";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==2&&this.getMonth()==20){
					this.myProp="春分";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==3&&this.getMonth()==20){
					this.myProp="谷雨";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==4&&this.getDate()==5){
					this.myProp="立夏";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==4&&this.getDate()==8){
					this.myProp="母亲节快乐！";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==4&&this.getDate()==21){
					this.myProp="小满";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==5&&this.getDate()==3){
					this.myProp="端午节快乐！今天记得吃粽子";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==5&&this.getDate()==6){
					this.myProp="芒种";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==5&&this.getDate()==19){
					this.myProp="父亲节快乐！";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==5&&this.getDate()==21){
					this.myProp="夏至";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==6&&this.getDate()==7){
					this.myProp="小暑";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==6&&this.getDate()==23){
					this.myProp="大暑";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==7&&this.getDate()==7){
					this.myProp="立秋";
				}
				else if (this.getMonth()==7&&this.getDate()==23){
					this.myProp="处暑";
				}
				else if (this.getMonth()==8&&this.getDate()==7){
					this.myProp="白露";
				}
				else if (this.getFullYear()==2021&&this.getMonth()==8&&this.getDate()==21){
					this.myProp="中秋节快乐！今天记得吃月饼(假期：9月19日-21日)";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==8&&this.getDate()==10){
					this.myProp="中秋节快乐！今天记得吃月饼";
				}	
				else if (this.getMonth()==8&&this.getDate()==23){
					this.myProp="秋分";
				}
				else if (this.getMonth()==9&&this.getDate()==8){
					this.myProp="寒露";
				}
				else if (this.getMonth()==9&&this.getDate()==23){
					this.myProp="霜降";
				}
				else if (this.getMonth()==10&&this.getDate()==7){
					this.myProp="立冬";
				}
				else if (this.getMonth()==10&&this.getDate()==22){
					this.myProp="小雪";
				}
				else if (this.getMonth()==11&&this.getDate()==7){
					this.myProp="大雪";
				}
				else if (this.getFullYear()==2021&&this.getMonth()==11&&this.getDate()==21){
					this.myProp="冬至快乐！今天记得吃饺子";
				}
				else if (this.getFullYear()==2022&&this.getMonth()==11&&this.getDate()==22){
					this.myProp="冬至快乐！今天记得吃饺子";
				}	
				else if (this.getFullYear()==2022&&this.getMonth()==11&&this.getDate()==30){
					this.myProp="腊八节快乐！今天记得喝腊八粥";
				}	
				else{
					this.myProp="";
				}
			}
			var d = new Date();
			d.myMet();
			var x=document.getElementById("festival");
			x.innerHTML=d.myProp;