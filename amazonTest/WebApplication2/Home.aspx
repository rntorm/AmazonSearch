

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style type="text/css">
.grid { border:hidden; }
.grid th.first { border-right:hidden; }
.grid td.first:hover { background-color:White; }
.grid th.last { border-left:hidden !important; }   
.grid td.last:hover { background-color:White; }  
.grid td.first { border-right:hidden !important;  }
.grid tr:hover
{
   background-color: #7EB5D6;
   color: black;
  
}
.menu {border-radius:15px;}

</style>
    <title>Amazon search</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    <div id ="container" style="width:auto; margin: 0 auto; max-width:1200px; background-color:#7EB5D6; padding:30px; border-radius: 15px; text-decoration:none;">
          <div id ="header" style="background-color:#7EB5D6;">
            <h2 style=" text-align:center;margin:0px;">Amazon search</h2>
          </div>
          <div id="menu" style="background-color:White; min-height:400px; border-radius:15px;">
             <div id="search" style=" margin-top:0px">
             <center> 
             
             <asp:TextBox ID="SearchBox" CssClass="searchbox" style="width: 250px" runat="server"/>
             
             <asp:Button ID="Button1" Text="Search" runat="server" CommandName="Up"/>
             <asp:DropDownList ID = "drpList" runat = "server">
                <asp:Listitem value="AED">United Arab Emirates Dirham (AED)</asp:Listitem>
                <asp:Listitem value="ANG">Netherlands Antillean Guilder (ANG)</asp:Listitem>
                <asp:Listitem value="ARS">Argentine Peso (ARS)</asp:Listitem>
                <asp:Listitem value="AUD">Australian Dollar (AUD)</asp:Listitem>
                <asp:Listitem value="BHD">Bahraini Dinar (BHD)</asp:Listitem>
                <asp:Listitem value="BND">Brunei Dollar (BND)</asp:Listitem>
                <asp:Listitem value="BOB">Bolivian Boliviano (BOB)</asp:Listitem>
                <asp:Listitem value="BRL">Brazilian Real (BRL)</asp:Listitem>
                <asp:Listitem value="BWP">Botswanan Pula (BWP)</asp:Listitem>
                <asp:Listitem value="CAD">Canadian Dollar (CAD)</asp:Listitem>
                <asp:Listitem value="CHF">Swiss Franc (CHF)</asp:Listitem>
                <asp:Listitem value="CLP">Chilean Peso (CLP)</asp:Listitem>
                <asp:Listitem value="CNY">Chinese Yuan (CNY)</asp:Listitem>
                <asp:Listitem value="COP">Colombian Peso (COP)</asp:Listitem>
                <asp:Listitem value="CRC">Costa Rican Colón (CRC)</asp:Listitem>
                <asp:Listitem value="CZK">Czech Republic Koruna (CZK)</asp:Listitem>
                <asp:Listitem value="DKK">Danish Krone (DKK)</asp:Listitem>
                <asp:Listitem value="DOP">Dominican Peso (DOP)</asp:Listitem>
                <asp:Listitem value="DZD">Algerian Dinar (DZD)</asp:Listitem>
                <asp:Listitem value="EEK">Estonian Kroon (EEK)</asp:Listitem>
                <asp:Listitem value="EGP">Egyptian Pound (EGP)</asp:Listitem>
                <asp:Listitem value="EUR">Euro (EUR)</asp:Listitem>
                <asp:Listitem value="FJD">Fijian Dollar (FJD)</asp:Listitem>
                <asp:Listitem value="GBP">British Pound Sterling (GBP)</asp:Listitem>
                <asp:Listitem value="HKD">Hong Kong Dollar (HKD)</asp:Listitem>
                <asp:Listitem value="HNL">Honduran Lempira (HNL)</asp:Listitem>
                <asp:Listitem value="HRK">Croatian Kuna (HRK)</asp:Listitem>
                <asp:Listitem value="HUF">Hungarian Forint (HUF)</asp:Listitem>
                <asp:Listitem value="IDR">Indonesian Rupiah (IDR)</asp:Listitem>
                <asp:Listitem value="ILS">Israeli New Sheqel (ILS)</asp:Listitem>
                <asp:Listitem value="INR">Indian Rupee (INR)</asp:Listitem>
                <asp:Listitem value="JMD">Jamaican Dollar (JMD)</asp:Listitem>
                <asp:Listitem value="JOD">Jordanian Dinar (JOD)</asp:Listitem>
                <asp:Listitem value="JPY">Japanese Yen (JPY)</asp:Listitem>
                <asp:Listitem value="KES">Kenyan Shilling (KES)</asp:Listitem>
                <asp:Listitem value="KRW">South Korean Won (KRW)</asp:Listitem>
                <asp:Listitem value="KWD">Kuwaiti Dinar (KWD)</asp:Listitem>
                <asp:Listitem value="KYD">Cayman Islands Dollar (KYD)</asp:Listitem>
                <asp:Listitem value="KZT">Kazakhstani Tenge (KZT)</asp:Listitem>
                <asp:Listitem value="LBP">Lebanese Pound (LBP)</asp:Listitem>
                <asp:Listitem value="LKR">Sri Lankan Rupee (LKR)</asp:Listitem>
                <asp:Listitem value="LTL">Lithuanian Litas (LTL)</asp:Listitem>
                <asp:Listitem value="LVL">Latvian Lats (LVL)</asp:Listitem>
                <asp:Listitem value="MAD">Moroccan Dirham (MAD)</asp:Listitem>
                <asp:Listitem value="MDL">Moldovan Leu (MDL)</asp:Listitem>
                <asp:Listitem value="MKD">Macedonian Denar (MKD)</asp:Listitem>
                <asp:Listitem value="MUR">Mauritian Rupee (MUR)</asp:Listitem>
                <asp:Listitem value="MYR">Malaysian Ringgit (MYR)</asp:Listitem>
                <asp:Listitem value="NAD">Namibian Dollar (NAD)</asp:Listitem>
                <asp:Listitem value="NGN">Nigerian Naira (NGN)</asp:Listitem>
                <asp:Listitem value="NIO">Nicaraguan Córdoba (NIO)</asp:Listitem>
                <asp:Listitem value="NOK">Norwegian Krone (NOK)</asp:Listitem>
                <asp:Listitem value="NPR">Nepalese Rupee (NPR)</asp:Listitem>
                <asp:Listitem value="NZD">New Zealand Dollar (NZD)</asp:Listitem>
                <asp:Listitem value="OMR">Omani Rial (OMR)</asp:Listitem>
                <asp:Listitem value="PEN">Peruvian Nuevo Sol (PEN)</asp:Listitem>
                <asp:Listitem value="PGK">Papua New Guinean Kina (PGK)</asp:Listitem>
                <asp:Listitem value="PHP">Philippine Peso (PHP)</asp:Listitem>
                <asp:Listitem value="PKR">Pakistani Rupee (PKR)</asp:Listitem>
                <asp:Listitem value="PLN">Polish Zloty (PLN)</asp:Listitem>
                <asp:Listitem value="QAR">Qatari Rial (QAR)</asp:Listitem>
                <asp:Listitem value="RON">Romanian Leu (RON)</asp:Listitem>
                <asp:Listitem value="RSD">Serbian Dinar (RSD)</asp:Listitem>
                <asp:Listitem value="RUB">Russian Ruble (RUB)</asp:Listitem>
                <asp:Listitem value="SAR">Saudi Riyal (SAR)</asp:Listitem>
                <asp:Listitem value="SCR">Seychellois Rupee (SCR)</asp:Listitem>
                <asp:Listitem value="SEK">Swedish Krona (SEK)</asp:Listitem>
                <asp:Listitem value="SGD">Singapore Dollar (SGD)</asp:Listitem>
                <asp:Listitem value="SKK">Slovak Koruna (SKK)</asp:Listitem>
                <asp:Listitem value="SLL">Sierra Leonean Leone (SLL)</asp:Listitem>
                <asp:Listitem value="SVC">Salvadoran Colón (SVC)</asp:Listitem>
                <asp:Listitem value="THB">Thai Baht (THB)</asp:Listitem>
                <asp:Listitem value="TND">Tunisian Dinar (TND)</asp:Listitem>
                <asp:Listitem value="TRY">Turkish Lira (TRY)</asp:Listitem>
                <asp:Listitem value="TTD">Trinidad and Tobago Dollar (TTD)</asp:Listitem>
                <asp:Listitem value="TWD">New Taiwan Dollar (TWD)</asp:Listitem>
                <asp:Listitem value="TZS">Tanzanian Shilling (TZS)</asp:Listitem>
                <asp:Listitem value="UAH">Ukrainian Hryvnia (UAH)</asp:Listitem>
                <asp:Listitem value="UGX">Ugandan Shilling (UGX)</asp:Listitem>
                <asp:Listitem value="USD" Selected ="True">US Dollar (USD)</asp:Listitem>
                <asp:Listitem value="UYU">Uruguayan Peso (UYU)</asp:Listitem>
                <asp:Listitem value="UZS">Uzbekistan Som (UZS)</asp:Listitem>
                <asp:Listitem value="VEF">Venezuelan Bolívar (VEF)</asp:Listitem>
                <asp:Listitem value="VND">Vietnamese Dong (VND)</asp:Listitem>
                <asp:Listitem value="XOF">CFA Franc BCEAO (XOF)</asp:Listitem>
                <asp:Listitem value="YER">Yemeni Rial (YER)</asp:Listitem>
                <asp:Listitem value="ZAR">South African Rand (ZAR)</asp:Listitem>
                <asp:Listitem value="ZMK">Zambian Kwacha (ZMK)</asp:Listitem>
             </asp:DropDownList>      
             <asp:Button ID = "CurrencyButton" Text="Change Currency" runat = "server" CommandName="Update" Enabled ="false"/>
             </center>
             </div>
             <div id="table" style="text-align:center">
             <center>
             <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode = "Always">
              <ContentTemplate>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging = "true"
              EmptyDataText ="No Record Found" OnPageIndexChanging="grid_PageIndexChanging" PageSize="13" CssClass = "grid">
                <Columns>
                   <asp:TemplateField HeaderStyle-CssClass="first" ItemStyle-CssClass="row">
                   <ItemTemplate>
                    <a href="<%#DataBinder.Eval(Container.DataItem, "url")%>" target="_blank" style="text-decoration:none;">
                        <%#DataBinder.Eval(Container.DataItem, "Product")%></a><br />
                   </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="Price"  ItemStyle-Width="100px" HeaderStyle-CssClass="last" />
                   <asp:TemplateField HeaderStyle-CssClass="last">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    </ItemTemplate>
                   </asp:TemplateField>
                   
                </Columns>
             </asp:GridView>
             
              </ContentTemplate>
              </asp:UpdatePanel> 
             
             </center>
             </div>
          </div>

    </div>
    </form>
</body>
</html>
