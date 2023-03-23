<%@ Page Language="vb" MasterPageFile="~/PlantillaWeb.Master" AutoEventWireup="false" CodeBehind="mantto_verificaprec.aspx.vb" Inherits="WebHidro.mantto_verificaprec" %>

<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web" tagprefix="dxw" %>
<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web" tagprefix="dxtc" %>

<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPagina" runat="server">

    <style type="text/css">

.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
}
        a {
text-decoration : none;
color : #00FFCC;
background : inherit;
}
        .style52
        {
            color: #FFFFFF;
        }
        body {
    margin : 0;
    padding : 0;
    font : 75% "Trebuchet MS", verdana, arial, sans-serif;
    color : #666;
    background: #FFFFFF url('../../img/bgd.png') center;
        }

        .style59
        {
            height: 18px;
            text-align: center;
        }
        .style61
        {
        }
        .style63
        {
            height: 22px;
        }
        .style64
        {
            height: 273px;
            position: static;
            text-align: left;
        }
        .style65
        {
            height: 14px;
        }
        .dxtcControl 
{
	font: 9pt Tahoma;
	color: black;
}

.dxtcActiveTab, .dxtcActiveTabWithTabPositionBottom,
.dxtcActiveTabWithTabPositionLeft, .dxtcActiveTabWithTabPositionRight
{
	font: 9pt Tahoma;
	color: black;
	border: solid 1px #A8A8A8;
	padding: 3px 12px 4px 12px;
	background-color: #FFFFFF;
}
.dxtcPageContent, .dxtcPageContentWithTabPositionBottom, 
.dxtcPageContentWithTabPositionLeft, .dxtcPageContentWithTabPositionRight,
.dxtcPageContentWithoutTabs
{
	font: 9pt Tahoma;
	color: black;
	background-color: white;
	vertical-align: top;
}
        .style1
        {
            width: 561px;
        }
        .style7
        {
            text-align: left;
        }
        .style6
        {
            text-align: left;
        }
        .style73
        {
            height: 23px;
        }
        .style74
        {
            width: 174px;
            text-align: left;
            height: 1px;
        }
        .style75
        {
            text-align: left;
            height: 1px;
        }
        .style76
        {
            text-align: left;
        }
        .style77
        {
            text-align: left;
        }
        .style78
        {
            width: 259px;
            text-align: left;
        }
        .dxgvControl,
.dxgvDisabled
{
	border: Solid 1px #9F9F9F;
	font: 11px Tahoma;
	background-color: #F2F2F2;
	color: Black;
	cursor: default;
}

.dxgvTable
{
	background-color: White;
	border: 0;
	border-collapse: separate!important;
	overflow: hidden;
	font: 9pt Tahoma;
	color: Black;
}

.dxgvHeader {
	cursor: pointer;
	white-space: nowrap;
	padding: 4px 6px 5px 6px;
	border: Solid 1px #9F9F9F;
	background-color: #DCDCDC;
	overflow: hidden;
	-moz-user-select: none;
	font-weight: normal;
	text-align: left;	
}
        .style79
        {
            text-align: left;
            width: 174px;
        }
        </style>

    <div>
    
        <div id="container">    
    <table      
        
                
                style="z-index: 1; left: 40px; top: 40%; position: static; height: 533px" 
                border="0" width="310">
        <tr>
            <td bgcolor="#003366" class="style59">
                <span class="style14">
                </span>
                <asp:Label ID="lbl_fecha" runat="server" Text="&lt;fecha&gt;" 
                    ForeColor="#00FFCC" Font-Size="Small" CssClass="style14"></asp:Label>
                <span class="style14">&nbsp;&nbsp;
                </span>
                <span id="spanreloj" style="position:static;left:10;top:10;color:#00FFCC"></span>
            </td>
        </tr>
        <tr>
            <td class="style63" bgcolor="#003366">
                
                <dxe:ASPxLabel ID="ASPxLbl10" runat="server" ForeColor="#00FFCC">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style64">
    
        <dxtc:ASPxPageControl ID="ctrl_pestanas" runat="server" ActiveTabIndex="0" 
            Width="146px" Height="224px">
            <TabPages>
                <dxtc:TabPage Text="Verificación de Precios">
                    <contentcollection>
                        <dxw:ContentControl runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel39" runat="server" Font-Bold="True" 
                                            Font-Names="verdana" Font-Size="X-Small" Text="BÚSQUEDA:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel40" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Tipo de Servicio:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_filtrovptiposerv" runat="server" 
                                            DataTextField="NOMB_TIPOSERVICIO" DataValueField="ID_TIPOSERVICIO" 
                                            Height="22px" Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel41" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Producto:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_filtrovpproductos" runat="server" 
                                            DataTextField="NOMB_PRODUCTO" DataValueField="COD_PRODUCTO" Height="22px" 
                                            Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel42" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Estación de Servicio:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_filtrovpempresas" runat="server" DataTextField="NOMB_ESTAB" 
                                            DataValueField="COD_ESTAB" Height="22px" Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel43" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Fecha a Verificar:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_filtrovpfechaverificar" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        &nbsp;</td>
                                    <td class="style6">
                                        <asp:Button ID="btn_buscar" runat="server" Height="25px" Text="Buscar" 
                                            Width="88px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style76" colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style77" colspan="2">
                                        <asp:GridView ID="griddatos" runat="server" AllowPaging="True" 
                                            DataKeyNames="ID" Height="114px" PageSize="3" Width="560px" 
                                            AutoGenerateColumns="False">
                                           <Columns>
                                                <asp:CommandField SelectText="Modificar" ShowSelectButton="True">
                                                    <ItemStyle ForeColor="#3366CC" />
                                                </asp:CommandField>
                                                <asp:BoundField HeaderText="Estación de Servicio" 
                                                    DataField="Estación de Servicio" />
                                                <asp:BoundField HeaderText="Producto" DataField="Producto" />
                                                <asp:BoundField HeaderText="Tipo de Servicio" DataField="Tipo de Servicio" />
                                                <asp:BoundField HeaderText="Fecha Verificada" DataField="Fecha Verificada" />
                                                <asp:BoundField HeaderText="Precio" DataField="Precio" />
                                                <asp:BoundField HeaderText="Fecha y Hora de Verificación" 
                                                    DataField="Fecha y Hora de Verificación" />
                                                <asp:BoundField HeaderText="ID" Visible="False" DataField="ID" />
                                         </Columns>
                                            <HeaderStyle Font-Size="Small" />
                                            <RowStyle Font-Size="Small" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7" colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel44" runat="server" Font-Bold="True" 
                                            Font-Names="verdana" Font-Size="X-Small" Text="REGISTRO DE PRECIOS:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel10" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Tipo de Servicio:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_vptiposerv" runat="server" 
                                            DataTextField="NOMB_TIPOSERVICIO" DataValueField="ID_TIPOSERVICIO" 
                                            Height="22px" Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel11" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Producto:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_vpproductos" runat="server" 
                                            DataTextField="NOMB_PRODUCTO" DataValueField="COD_PRODUCTO" Height="22px" 
                                            Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel12" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Estación de Servicio:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_vpempresas" runat="server" DataTextField="NOMB_ESTAB" 
                                            DataValueField="COD_ESTAB" Height="22px" Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel18" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Fecha de Verificación:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_vpfechaver" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel19" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Hora de Verificación:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_vphoraver" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel26" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Fecha del día a Verificar:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_vpfechaverificar" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel13" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Precio:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_vpprecio" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel14" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Moneda:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_vpmoneda" runat="server" DataTextField="NOMB_MONEDA" 
                                            DataValueField="ID_MONEDA" Height="22px" Width="359px" Enabled="False">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel16" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Dispensador:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:CheckBox ID="ckb_dispen" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        <dxe:ASPxLabel ID="ASPxLabel17" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Numero de Dispensador:" Font-Bold="False">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_vpnumdispen" runat="server" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                    </td>
                                    <td class="style6">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style78">
                                        &nbsp;</td>
                                    <td class="style6">
                                        <asp:Button ID="btn_vpguardar" runat="server" Height="25px" Text="Guardar" 
                                            Width="88px" />
                                        <asp:Button ID="btn_vpguardarcmb" runat="server" Height="25px" 
                                            Text="Guardar cambios" Visible="False" Width="114px" />
                                        &nbsp;<asp:Button ID="btn_vpnuevo" runat="server" Height="25px" Text="Nuevo" 
                                            Width="88px" />
                                        &nbsp;<asp:Button ID="btn_vpeliminar" runat="server" Height="25px" Text="Eliminar" 
                                            Visible="False" Width="88px" />
                                    </td>
                                </tr>
                            </table>
                        </dxw:ContentControl>
                    </contentcollection>
                </dxtc:TabPage>
            </TabPages>
        </dxtc:ASPxPageControl>
            </td>
        </tr>
        <tr>
            <td bgcolor="#003366" class="style65">
                <dxe:ASPxLabel ID="ASPxLabel5" runat="server" ForeColor="Aqua">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style73" style="text-align: center">
    
        <dxtc:ASPxPageControl ID="ctrl_pesthallazgo" runat="server" ActiveTabIndex="0" 
            Width="146px" Height="132px" Visible="False">
            <TabPages>
                <dxtc:TabPage Text="Seleccione el hallazgo">
                    <ContentCollection>
                        <dxw:ContentControl runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style79">
                                        &nbsp;</td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style79">
                                        <dxe:ASPxLabel ID="ASPxLabel27" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Hallazgo:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:DropDownList ID="ddl_hallazgos" runat="server" 
                                            DataTextField="NOMB_ANOMALIA" DataValueField="ID_ANOMALIA" Height="22px" 
                                            Width="359px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style79">
                                        <dxe:ASPxLabel ID="ASPxLabel38" runat="server" Font-Names="verdana" 
                                            Font-Size="X-Small" Text="Comentario:">
                                        </dxe:ASPxLabel>
                                    </td>
                                    <td class="style6">
                                        <asp:TextBox ID="txt_hallazgoscoment" runat="server" Rows="2" 
                                            TextMode="MultiLine" Width="353px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style74">
                                    </td>
                                    <td class="style75">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style79">
                                        &nbsp;</td>
                                    <td class="style6">
                                        <asp:Button ID="btn_hallazgos" runat="server" Height="25px" 
                                            Text="Asociar Hallazgo" Width="118px" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btn_impacta" runat="server" Height="25px" Text="Imprimir Acta" 
                                            Visible="False" Width="118px" />
                                        &nbsp;
                                        <asp:Button ID="btn_hallazgocerrar" runat="server" Height="25px" Text="Cerrar" 
                                            Visible="False" Width="91px" />
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </dxw:ContentControl>
                    </ContentCollection>
                </dxtc:TabPage>
            </TabPages>
        </dxtc:ASPxPageControl>
            </td>
        </tr>
        <tr>
            <td bgcolor="#003366" class="style61">
            <a href="../Default.aspx">home</a> |
  <a href="mailto:proyecto_hidro@minec.gob.sv">contact</a> | 
  <a href="#">Hidrocarburos</a> |
  <br/>

                <span class="style52">&copy; Copyrights 2009</span> <a href="http://www.minec.gob.sv">www.minec.gob.sv</a> 
                &nbsp;</td>
        </tr>
    </table>
  
      
    
  
      
   </div>
        
    </div>
</asp:Content>

