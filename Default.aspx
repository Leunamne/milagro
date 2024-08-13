<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="milagro._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">



        <table class="w-100">
            <tr>
                <td colspan="2" style="font-size: x-large; font-weight: bold; color: #333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLEADOS<br />
                </td>
            </tr>
            <tr>
                <td style="height: 30px">
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Empleado Id"></asp:Label>
                </td>
                <td style="height: 30px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="Black" ForeColor="White" Height="35px" OnClick="Button4_Click" Text="Buscar" Width="73px" />
                </td>
            </tr>
            <tr>
                <td style="height: 25px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Empleado name"></asp:Label>
                </td>
                <td style="height: 25px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Medium" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="200px">
                        <asp:ListItem>Chicago</asp:ListItem>
                        <asp:ListItem>New York</asp:ListItem>
                        <asp:ListItem>Los Angeles</asp:ListItem>
                        <asp:ListItem>Seatle</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 30px">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Edad"></asp:Label>
                </td>
                <td style="height: 30px">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Sexo"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Mujer</asp:ListItem>
                        <asp:ListItem>Hombre</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Fecha nacimiento"></asp:Label>
                </td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px"></td>
                <td style="height: 24px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="Ingresar" Width="95px" />
                    <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button2_Click" Text="Actualizar" Width="127px" />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button3_Click" OnClientClick="return confirm('Estas seguro que quieres borrar este registro?');" Text="Borrar" Width="112px" />
&nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button5_Click" Text="Refrescar" Width="112px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="1112px">
                        <HeaderStyle BackColor="#999999" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>



    </div>

</asp:Content>
