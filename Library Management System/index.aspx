<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Library_Management_System.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphIndexMasterPage" runat="server">
    <!-- Carousel -->
    <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target='#carousel-example-generic' data-slide-to='0' class='active'>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/12.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>
            <li data-target='#carousel-example-generic' data-slide-to='1'>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/13.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>          
            <li data-target='#carousel-example-generic' data-slide-to='2'>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/14.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>        
            <li data-target='#carousel-example-generic' data-slide-to='3'>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/img/15.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active one">
                <!-- <img src="#" alt="" /> -->
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            A book is a dream that you hold in your hand.<br /> <span class="yellow">- Neil Gaiman </span></h1>
                        <center class="">
                                <asp:TextBox runat="server" ID="txtSearchAuthor" CssClass="form-control" placeholder="Search Books by Author" TextAlign="center"  ForeColor="white" BackColor="Transparent" Width="25%"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnSearchAuthor" runat="server" Text="Search" CssClass="btn btn-clear btn-sm btn-min-block" OnClick="btnSearchAuthor_Click"/>
                    </center>
                    </div>
                </div>
            </div>
            <div class="item two">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            In <b class="yellow">a good</b> book<b class="yellow"> the best </b><br />
                            <span class="span">is between the lines.</span></h1>
                        <center class="">
                                <asp:TextBox runat="server" ID="txtSearchTitle" CssClass="form-control" placeholder="Search Books by Title" TextAlign="center"  ForeColor="white" BackColor="Transparent" Width="25%"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnSearchTitle" runat="server" Text="Search" CssClass="btn btn-clear btn-sm btn-min-block" OnClick="btnSearchTitle_Click"/>
                    </center>
                    </div>
                </div>
            </div>
            <div class="item three">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Good friends,<b class="yellow"> good books</b>, and a sleepy<b class="yellow"> conscience :</b><br />
                            <span class="span"> this is the ideal life.</span></h1>
                        <center class="">
                                <asp:TextBox runat="server" ID="txtSearchByAuthor" CssClass="form-control" placeholder="Search Books by Auhtor" TextAlign="center" ForeColor="white" BackColor="Transparent" Width="25%"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnSearchByAuthor" runat="server" Text="Search" CssClass="btn btn-clear btn-sm btn-min-block" OnClick="btnSearchByAuthor_Click"/>
                    </center>
                </div>
            </div>
    </div>            
            <div class="item four">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            A book is a<b class="yellow"> device</b> to ignite the <b class="yellow">imagination.</b><br />
                            <span class="span">- Alan Bennett</span></h1>
                        <center class="">
                                <asp:TextBox runat="server" ID="txtSearchByTitle" CssClass="form-control" placeholder="Search Books by Title" TextAlign="center"  ForeColor="white" BackColor="Transparent" Width="25%"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnSearchByTitle" runat="server" Text="Search" CssClass="btn btn-clear btn-sm btn-min-block" OnClick="btnSearchByTitle_Click"/>
                    </center>
                </div>
            </div>          
        </div>      
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                </span></a>
        </div>
    </div>
    <!-- Carousel -->
</asp:Content>
