function startTime(){
			var today=new Date();
			var h=today.getHours();
			var m=today.getMinutes();
			var s=today.getSeconds();// 在小于10的数字前加一个‘0’
			m=checkTime(m);
			s=checkTime(s);
			document.getElementById('time').innerHTML=h+":"+m+":"+s;
			t=setTimeout(function(){startTime()},500);
		}
function checkTime(i){
			if (i<10){
				i="0" + i;
			}
			return i;
		}
function changemain(){
	window.top.location="main.html";
}
function changeabout(){
	window.top.location="about.html";
}
function exit(){
			var x = confirm("确定退出？");
			if(x==true){
				alert("成功退出登录");
				window.top.location="login.html";
			}
			else{
				return;
			}
}
