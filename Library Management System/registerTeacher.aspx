<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="registerTeacher.aspx.cs" Inherits="Library_Management_System.registerTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMasterPage" runat="server">
    <asp:Panel ID="teacherbox" Visible="true" runat="server"  style="margin-top: 120px"  CssClass="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <asp:Panel ID="teachersubmitbox" Visible="true" runat="server">        
            <div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Teacher Information</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="submitform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="name" class="col-md-3 control-label">
                                    Name </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtNameTCHR" CssClass="form-control" placeholder="name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="designation" class="col-md-3 control-label">
                                    Designation </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtDesignationTCHR" CssClass="form-control" placeholder="designation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="branch" class="col-md-3 control-label">
                                    Branch </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtBranchTCHR" CssClass="form-control" placeholder="branch"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact" class="col-md-3 control-label">
                                    Contact </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtContactTCHR" CssClass="form-control" placeholder="contact"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lectures" class="col-md-3 control-label">
                                    Lectures</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtLecturesTCHR" CssClass="form-control" placeholder="lectures"></asp:TextBox>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:Button ID="btnSubmitTCHR" CssClass="btn btn-info" Text="Submit" runat="server" OnClick="btnSubmitTCHR_Click"></asp:Button>
                                </div>
                            </div>                            
                        </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="teachersignupbox" Visible="false" runat="server">        
            <div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Create Username & Password</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="signupform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="username" class="col-md-3 control-label">
                                    Username </label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtUSernameTCHR" CssClass="form-control" placeholder="username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtPasswordTCHR" CssClass="form-control" placeholder="password"></asp:TextBox>
                                </div>
                            </div>                          
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:Button ID="btnSignupTCHR" CssClass="btn btn-info" Text="Sign Up" runat="server" OnClick="btnSignupTCHR_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </asp:Panel></asp:Panel>
</asp:Content>
