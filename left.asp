<table id="__01" width="231" height="571" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="images/left_01.jpg" width="231" height="48" alt=""></td>
	</tr>
	<tr>
		<td background="images/left_02.jpg" width="231" height="238">
		<ul id="left_nav">
							<%
									set rs = UICon.Query("select  * from Sp_dictionary where  categoryID = 12 order by  IndexID")
									do while not rs.eof
								
								%>	
								<li>>��<a  href="product.asp?categoryid=<%=rs("id")%>&amp;itemid=&lei=<%=rs("categoryname")%>" style="color:#333" title="<%=rs("categoryname")%>"   ><%=rs("categoryname")%></a></li>
								
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
		
		</ul>
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/left_03.jpg" width="231" height="24" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/left_04.jpg" width="231" height="36" alt=""></td>
	</tr>
	<tr>
		<td background="images/left_02.jpg" width="231" height="202">
		<div id="index_con">
		<p>��˾��ַ���й��Ͼ��������ÿ���������·46��</p>
		<p>�ʱࣺ211100 </p>
		<p>�绰��025-52122247/13776575765</p>
		<p>���棺025-52107214</p>
		<p>E-mail:njkoyo@yeah.net</p>
		<p>QQ��1102953339</p>
		<p>��ϵ�ˣ��� �� �ң�������</p>
		</div>
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/left_06.jpg" width="231" height="23" alt=""></td>
	</tr>
</table>
