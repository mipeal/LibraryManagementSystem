<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="registerUser.aspx.cs" Inherits="Library_Management_System.registerUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMasterPage" runat="server">    
    <asp:Panel ID="studentbox" Visible="true" runat="server"  style="margin-top: 120px"  CssClass="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <asp:Panel ID="studentsubmitbox" Visible="true" runat="server">        
            <div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Student Information</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="studentsubmitform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="reg_no" class="col-md-3 control-label">
                                    Reg. No </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtRegNoSTD" CssClass="form-control" placeholder="Registration No."></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="branch" class="col-md-3 control-label">
                                    Branch</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtBranchSTD" CssClass="form-control" placeholder="Branch"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="section" class="col-md-3 control-label">
                                    Section</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtSectionSTD" CssClass="form-control" placeholder="Section"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="semester" class="col-md-3 control-label">
                                    Semester</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtSemesterSTD" CssClass="form-control" placeholder="Semester"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="yearofAdm" class="col-md-3 control-label">
                                    Year of Admission</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtYOASTD" CssClass="form-control" placeholder="Year of Admission"></asp:TextBox>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:Button ID="btnSubmitSTD" CssClass="btn btn-info" Text="Submit" runat="server" OnClick="btnSubmit_Click" ></asp:Button>
                                </div>
                            </div>                            
                        </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="studentsignupbox" Visible="false" runat="server">        
            <div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Create Username & Password</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="studentsignupform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="username" class="col-md-3 control-label">
                                    Username </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtUsernameSTD" CssClass="form-control" placeholder="Username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtPasswordSTD" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>                          
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:Button ID="btnSignupSTD" CssClass="btn btn-info" Text="Sign Up" runat="server" OnClick="btnSignup_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </asp:Panel></asp:Panel>
</asp:Content>

