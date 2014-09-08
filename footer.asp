<table id="__01" width="970" height="150" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<table id="__01" width="970" height="62" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<img src="images/footer_a_01.jpg" width="120" height="62" alt=""></td>
				<td background="images/footer_a_02.jpg" width="836" height="62" >

								<%
									set rs = UICon.Query("select top 6 * from user_hzhb order by indexid")
									do while not rs.eof
								%>
									
								<div class="hzhb">
									<a href="http://<%=rs("Field_url")%>" target="_blank"><img src="<%=rs("Field_pic")%>" width="120" height="45"/></a>
								</div>		
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>

				</td>
				<td>
					<img src="images/footer_a_03.jpg" width="14" height="62" alt=""></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td  background="images/footer_02.jpg" width="970" height="88">
		<div id="footer">
		<p>网站首页　关于我们　公司动态　产品中心　产品特性　客户服务　联系我们</p>
		<p>南京向阳密胺塑料制品有限公司　　　版权所有</p>
		</div>
		</td>
	</tr>
</table>