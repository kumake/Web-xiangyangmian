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
		<p>��վ��ҳ���������ǡ���˾��̬����Ʒ���ġ���Ʒ���ԡ��ͻ�������ϵ����</p>
		<p>�Ͼ������ܰ�������Ʒ���޹�˾��������Ȩ����</p>
		</div>
		</td>
	</tr>
</table>