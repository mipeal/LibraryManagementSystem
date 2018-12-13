<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="Library_Management_System.adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdminMasterPage" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel panel-body" style="margin-top: 50px; ">
        <asp:Panel ID="panelBookInput" runat="server" class="panel panel-warning col-xs-6" Style="float: left">
            <div class="panel-heading">Insert/Update/Delete Books</div>
            <br />
            <table>
                <tbody>
                    <tr>
                        <td>Code 
                        </td>
                        <td>
                            <asp:TextBox ID="txtCode" placeholder="code" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-sm btn-warning" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Title
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitle" placeholder="title" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Author
                        </td>
                        <td>
                            <asp:TextBox ID="txtAuthor" placeholder="author" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Publication
                        </td>
                        <td>
                            <asp:TextBox ID="txtPublication" placeholder="publication" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Subject
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubject" placeholder="subject" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Quantity
                        </td>
                        <td>
                            <asp:TextBox ID="txtBooksQnty" placeholder="Quantity" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnInsertBooks" runat="server" Text="Insert" OnClick="btnInsertBooks_Click" CssClass="btn btn-sm btn-primary" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdateBooks" runat="server" Text="Update" OnClick="btnUpdateBooks_Click" CssClass="btn btn-sm btn-success" />
                        </td>
                        <td>&nbsp;<asp:Button ID="btnDeleteBooks" runat="server" Text="Delete" OnClick="btnDeleteBooks_Click" CssClass="btn btn-sm btn-danger" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <br />
        </asp:Panel>
        <asp:Panel ID="panelBooks" runat="server" class="panel panel-warning col-xs-6" Style="float: right">
            <div class="panel-heading">Books Inventory</div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerGVBooks" runat="server" Interval="3000" OnTick="timerGVBooks_Tick"></asp:Timer>
                    <asp:GridView ID="gvBooks" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-responsive table-bordered table-condensed" OnPageIndexChanging="gvBooks_PageIndexChanging" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="code" HeaderText="Book Code" />
                            <asp:BoundField DataField="title" HeaderText="Title" />
                            <asp:BoundField DataField="author" HeaderText="Author" />
                            <asp:BoundField DataField="publication" HeaderText="Publication" />
                            <asp:BoundField DataField="subject" HeaderText="Subject" />
                            <asp:BoundField DataField="no_of_copies" HeaderText="Quantity" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
        <asp:Panel ID="panelIssueBook" runat="server" class="panel panel-warning col-xs-6" Style="margin-top: 5px; float: right">
            <div class="panel-heading">Issued Book Inventory</div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerIssueBook" runat="server" Interval="3000" OnTick="timerIssueBook_Tick"></asp:Timer>
                    <asp:GridView ID="gvIssueBook" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnPageIndexChanging="gvIssueBook_PageIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="bookid" HeaderText="Book ID" />
                            <asp:BoundField DataField="stuid" HeaderText="Student ID" />
                            <asp:BoundField DataField="issue_date" HeaderText="Date of Issue" />
                            <asp:BoundField DataField="return_date" HeaderText="Date of Return" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </div>
    <div class="panel panel-body" style="margin-top: 10px; ">
        <asp:Panel ID="panelSInfo" runat="server" class="panel panel-warning col-xs-6" Style="float: left">
            <div class="panel-heading">Student Information</div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerStudentInfo" runat="server" Interval="3000" OnTick="timerStudentInfo_Tick"></asp:Timer>
                    <asp:GridView ID="gvStudentInfo" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnPageIndexChanging="gvStudentInfo_PageIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="libid" HeaderText="Library ID" />
                            <asp:BoundField DataField="regno" HeaderText="Registration No." />
                            <asp:BoundField DataField="branch" HeaderText="Branch" />
                            <asp:BoundField DataField="section" HeaderText="Section" />
                            <asp:BoundField DataField="semester" HeaderText="Semester" />
                            <asp:BoundField DataField="year_of_admission" HeaderText="Admission (Year)" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
        <asp:Panel ID="panelSLogin" runat="server" class="panel panel-warning col-xs-6" Style="float: right">
            <div class="panel-heading">Student(Login) Information</div>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerStudentLogin" runat="server" Interval="3000" OnTick="timerStudentLogin_Tick"></asp:Timer>
                    <asp:GridView ID="gvStudentLogin" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnPageIndexChanging="gvStudentLogin_PageIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="logid" HeaderText="Login ID" />
                            <asp:BoundField DataField="username" HeaderText="Username" />
                            <asp:BoundField DataField="password" HeaderText="Password" />
                            <asp:BoundField DataField="number_of_books" HeaderText="Books (Qty.)" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </div>
    <div class="panel panel-body" style="margin-top: 10px; ">
        <asp:Panel ID="panelTInfo" runat="server" class="panel panel-warning col-xs-6" Style="float: left">
            <div class="panel-heading">Teacher Information</div>
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerTeacherInfo" runat="server" Interval="3000" OnTick="timerTeacherInfo_Tick"></asp:Timer>
                    <asp:GridView ID="gvTeacherInfo" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnPageIndexChanging="gvTeacherInfo_PageIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="tid" HeaderText="Teacher ID" />
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="designation" HeaderText="Designation" />
                            <asp:BoundField DataField="branch" HeaderText="Branch" />
                            <asp:BoundField DataField="contact_no" HeaderText="Contact" />
                            <asp:BoundField DataField="lectures" HeaderText="Lectures" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
        <asp:Panel ID="panelTLogin" runat="server" class="panel panel-warning col-xs-6" Style="float: right">
            <div class="panel-heading">Teacher(Login) Information</div>
            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timerTeacherLogin" runat="server" Interval="3000" OnTick="timerTeacherLogin_Tick"></asp:Timer>
                    <asp:GridView ID="gvTeacherLogin" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnPageIndexChanging="gvTeacherLogin_PageIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="loginid" HeaderText="Login ID" />
                            <asp:BoundField DataField="username" HeaderText="Username" />
                            <asp:BoundField DataField="password" HeaderText="Password" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </div>
</asp:Content>
