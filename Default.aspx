<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day1.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Coronavirus Relief Fund!</title>
		<link href="style.css" type="text/css" rel="stylesheet" />
	</head>
	
	<body>
		<form id="form1" runat="server" action="Sponsor.aspx">
		<h1>Coronavirus Relief Fund!</h1>

		<p>
			The COVID-19 pandemic marks an unprecedented time in modern history that will require the best of humanity to overcome. Your donation to this fund will help stop COVID-19's spread and protect us all.		
		</p>
		
		<hr />
		
		<h2>Donate Your Money</h2>
		<dl>
			<dt>Name</dt>
			<dd>
				<asp:TextBox ID="name" runat="server" Width="250px"></asp:TextBox>
			</dd>
			
			<dt>Section</dt>
			<dd>
				<asp:DropDownList ID="section" runat="server">
                    <asp:ListItem Enabled Selected>(PLease, choose a section)</asp:ListItem>
					<asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MB</asp:ListItem>
                    <asp:ListItem>MC</asp:ListItem>
                    <asp:ListItem>MD</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>MF</asp:ListItem>
                </asp:DropDownList>
			</dd>
			
			<dt>Credit Card</dt>
			<dd>
				<asp:TextBox ID="cardNumber" runat="server" Width="250px"></asp:TextBox>
                <asp:RadioButtonList ID="cardType" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem Value="Master">Master Card</asp:ListItem>
                </asp:RadioButtonList>
			</dd>
		</dl>
		
		<div>
			<asp:Button ID="Button1" runat="server" Text="Donate" />
&nbsp;</div>
	    </form>
	</body>
</html>