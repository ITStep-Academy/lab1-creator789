<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sponsor.aspx.cs" Inherits="Day1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Coronavirus Relief Fund!</title>
		<link href="style.css" type="text/css" rel="stylesheet" />
	</head>
	
	<body>
		<form id="form1" runat="server">
		<h1>Coronavirus Relief Fund!</h1>

		<p>
			The COVID-19 pandemic marks an unprecedented time in modern history that will require the best of humanity to overcome. Your donation to this fund will help stop COVID-19's spread and protect us all.		
		</p>
		
		<hr />
		
		<h2>Donate Your Money</h2>
		<dl>
			<dt>Name</dt>
			<dd>
				<%=Request["name"] %>
			</dd>
			
			<dt>Section</dt>
			<dd>
				<%=Request["section"] %>
			</dd>
			
			<dt>Credit Card</dt>
			<dd>
				<%=Request["cardNumber"] %>
				(<%=Request["cardType"] %>)

			</dd>
		</dl>
		
	    </form>
	</body>
</html>
