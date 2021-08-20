			var d = new Date();
			var time = d.getHours();
			if(time>=6&&time<8)
			{
				document.write("<b>早上好! 欢迎登录个人项目系统</b>")
			}
			else if(time>=8&&time<11)
				{
					document.write("<b>上午好! 欢迎登录个人项目系统</b>")
				}
				else if(time>=11&&time<14)
					{
						document.write("<b>中午好! 欢迎登录个人项目系统</b>")
					}
					else if(time>=14&&time<19)
						{
							document.write("<b>下午好! 欢迎登录个人项目系统</b>")
						}
						else
						{
							document.write("<b>晚上好! 欢迎登录个人项目系统</b>")
						}