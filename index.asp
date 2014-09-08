<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id="container">
<table id="__01" width="970" height="1236" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="970" height="571" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
				<!--#include file="left.asp" -->
				</td>
				<td>
				<table id="__01" width="739" height="571" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
						<table id="__01" width="739" height="269" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td>
								<table id="__01" width="458" height="269" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<img src="images/index_aq_01.jpg" alt="" width="458" height="48" border="0" usemap="#Map2"></td>
									</tr>
									<tr>
										<td width="458" height="221">
										<ul id="index_news">
								<%
									set rs = UICon.Query("select top 8 * from user_news order by id desc")
									do while not rs.eof
								
								%>
									<li><em>[<%=year(rs("PostTime"))%>-<%=month(rs("PostTime"))%>-<%=day(rs("PostTime"))%>]</em><a  href="news_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=rs("title")%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
										</ul>
										</td>
									</tr>
								</table>
								</td>
								<td>
								<table id="__01" width="281" height="269" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<img src="images/hy_01.jpg" width="281" height="49" alt=""></td>
									</tr>
									<tr>
										<td width="281" height="220" background="images/index_ki_02.jpg">
										<div id="index_gsjj">
										<p>   　　南京向阳密胺塑料制品有限公司于1994年6月18日在南京江宁经济技术开发区建成投产，从台湾引进全套先进的生产设备，采用优质原料，专业生产中、西式各类密胺餐具，产品通过国际品质检验机构SGS、FDA检验合格，所生产的各类餐具70％以上出口到美国、欧洲、东南亚、中南美洲等世界地，年创汇数千万美金，系出口创汇型企业。在国内市场本公司先</p>
										</div>
										</td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td>
							<img src="images/index_ss_02.jpg" alt="" width="739" height="29" border="0" usemap="#Map"></td>
					</tr>
					<tr>
						<td width="739" height="273">
						<div style="margin:0 10px;">
						<!--内容开始 -->
						<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:20px;">
				<%
				set rs = UICon.QUery("select top 8 * from user_pro order by id desc ")
				if rs.recordcount<>0 then
				do while not rs.eof
				for i=1 to 2
				%>
				<tr>
				<% 
				for j=1 to 4
				%>
				<td width="150"><table width="150" border="0" align="center" cellpadding="0" cellspacing="0"  height="141" >
				<tr>
				<td width="150"><a href="product_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" target="_blank" title="<%=rs("title")%>"><img src="<%=rs("Field_picture")%>" width="150" height="107"   border="0" /></a>
				<a href="product__in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" style="display:block; text-align:center; line-height:20px; color:#333333; margin-top:5px;" target="_blank"  title="<%=rs("title")%>"><%=rs("title")%></a>
				</td>
				</tr>
				</table>
				</td>
				<%
				rs.movenext
				if rs.eof then exit for
				next
				%> 
				</tr>
				<%
				
				if rs.eof then exit for
				next
				loop
				end if
				%> 
				</table>
				<!--内容结束 -->
				</div>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>

<map name="Map" id="Map"><area shape="rect" coords="688,6,738,22" href="product.asp" />
</map>
<map name="Map2" id="Map2"><area shape="rect" coords="369,20,426,43" href="news.asp" />
</map></body>
</html>
