<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="Library_Management_System.books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminMasterPage" runat="server">
    <nav class="navbar navbar-light bg-faded" style="margin-top: 49px;background-color: #e3f2fd;">
        <br />
        <center class="form-inline">
            <div class="row">
  <div class="col-lg-offset-3 col-lg-6">
    <div class="input-group">
      <span class="input-group-btn">
            <asp:Button ID="btnSearchAuthor" runat="server" Text="Author" CssClass="btn btn-outline-success my-2 my-sm-0" OnClick="btnSearchAuthor_Click"/>
      </span>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control mr-sm-2" placeholder="Book author or title name"></asp:TextBox>
      <span class="input-group-btn">
            <asp:Button ID="btnSearch" runat="server" Text="Title" CssClass="btn btn-outline-success my-2 my-sm-0" OnClick="btnSearch_Click" />
      </span>
    </div>
  </div>
</div>
        </center>
        <br />
    </nav>
    <div class="panel panel-danger" >
        <div class="panel-heading">Search results</div>
        <asp:DataList ID="dlSearch" runat="server" BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatDirection="Horizontal"
            Width="100%">
            <ItemStyle Width="100%" VerticalAlign="Middle" HorizontalAlign="Center" />
            <ItemTemplate>
                <br />
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <p><%# Eval("cover_pic")%></p>
                            <div class="caption">
                                <h3><%# Eval("title") %></h3>
                                <p>Code: <%# Eval("code") %></p>
                                <p>Author: <%# Eval("author") %></p>
                                <p>Stock: <%# Eval("no_of_copies") %></p>
                                <p>
                                    <asp:Button ID="btnRentBook" runat="server" Text="Rent" CssClass="btn btn-default" />&nbsp;&nbsp;&nbsp;<asp:Button ID="btnMoreInfo" runat="server" Text="More Info." CssClass="btn btn-default" /></p>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </div>
</asp:Content>
