



<%@ Page Title="Amazon Product Api Example" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Amazon Search!
    </h2>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
            <asp:Button ID="Button1" OnClick="nupp" Text="Click here!" runat="server"/>

             <br />
      <br />
      <asp:Label ID="GreetingLabel" Text="Hello World!" runat="server" 
                 Visible="false" />

           

    </p>
</asp:Content>
