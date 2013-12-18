<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="EditStaffProfile.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.EditStaffProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .myspan {
            color: white;
            background-color: #EDEBE1;
            border-color: #E0D9CB;
            color: #817B58;
            /*background-image: -moz-linear-gradient(center top, #0088CC, #0055CC);
            background-repeat: repeat-x;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <div style="margin: inherit; width: 67%; text-align: center">
        <div class="row-fluid show-grid" align="center" style="margin-bottom: 10px">
            <div class="span4" align="center" id="persDetails" title="Click here to make changes to Personal Details." data-rel="tooltip" onclick="display('personal_details','credentials','academic_details');">
                Personal Details
            </div>
            <div class="span4" id="Cred" title="Click here to make changes to Credentials." data-rel="tooltip" onclick="display('credentials','personal_details','academic_details');">
                Credentials
            </div>
            <div class="span4" id="acadDetails" title="Click here to make changes to Academic Details." data-rel="tooltip" onclick="display('academic_details','credentials','personal_details');">
                Academic Details
            </div>
        </div>
    </div>
    <!-- content starts -->
    <div class="row-fluid sortable" style="margin: inherit; width: 67%">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2 id="box_title">
                    <i class="icon-edit"></i>
                    &nbsp;&nbsp;Personal Details

                </h2>
            </div>
            <div class="box-content">
                <form id="Form1" class="form-horizontal" runat="server">
                    <fieldset>
                        <div id="personal_details" style="display: block">
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Full Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_fullName" Enabled="false" class="input-xlarge focused" runat="server"></asp:TextBox>
                                    <input type="button" name="edit_details" id="edit_personal_details" value="Edit Details" style="float: right; margin-right: 50px;" title="Click here to Enable Editing." data-rel="tooltip" class="btn btn-primary" onclick="enableTextOfDiv('edit_personal_details')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="date01">
                                    Birth Date</label>
                                <div class="controls">
                                    <asp:TextBox placeholder="mm/dd/yyyy" Enabled="false" ID="Text_bday" class="input-xlarge datepicker"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Address</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_Address" class="input-xlarge focused" Enabled="false" TextMode="MultiLine"
                                        runat="server" Rows="3" Columns="10" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Contact Number</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_contact" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Emergency Contact Number</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_emer" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Gender</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_gender" runat="server" Enabled="false" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Gender</asp:ListItem>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Category</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_category" runat="server" Enabled="false" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Category</asp:ListItem>
                                        <asp:ListItem Value="General">General</asp:ListItem>
                                        <asp:ListItem Value="SC">SC</asp:ListItem>
                                        <asp:ListItem Value="ST">ST</asp:ListItem>
                                        <asp:ListItem Value="SEBC">SEBC</asp:ListItem>
                                        <asp:ListItem Value="OBC">OBC</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Blood Group</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_blood" runat="server" Enabled="false" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Blood Group</asp:ListItem>
                                        <asp:ListItem Value="A+">A+</asp:ListItem>
                                        <asp:ListItem Value="A-">A-</asp:ListItem>
                                        <asp:ListItem Value="B+">B+</asp:ListItem>
                                        <asp:ListItem Value="B-">B-</asp:ListItem>
                                        <asp:ListItem Value="O+">O+</asp:ListItem>
                                        <asp:ListItem Value="O-">O-</asp:ListItem>
                                        <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                        <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="personal_changes" Enabled="false" title="Click here to save changes made to Personal Details." data-rel="tooltip" class="btn btn-inverse" runat="server" Text="Save Changes" />
                                <input type="button" name="cred_next" title="Click here to edit Credentials." data-rel="tooltip" class="btn btn-primary" value="Next" onclick="display('credentials', 'personal_details', 'academic_details');" />
                            </div>
                        </div>
                        <div id="credentials" style="display: none">
                            <div id="emailVerification" class="control-group">
                                <label class="control-label">
                                    Email Id</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_email" class="input-xlarge focused" Enabled="false" onblur="verifyField($('[id$=Text_email]')[0].id);" runat="server"></asp:TextBox>
                                    <span id="status" class="help-inline"></span>
                                    <input type="button" name="edit_details" id="edit_credentials" value="Edit Details" style="float: right; margin-right: 50px;" title="Click here to Enable Editing." data-rel="tooltip" class="btn btn-primary" onclick="enableTextOfDiv('edit_credentials')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Password</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_pwd" Enabled="false" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Confirm Password</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_cpwd" Enabled="false" class="input-xlarge focused" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="button" name="acad_details_back" title="Click here to edit Personal Details." data-rel="tooltip" class="btn btn-primary" value="Back" onclick="display('personal_details', 'credentials', 'academic_details');" />
                                <asp:Button ID="credential_changes" Enabled="false" title="Click here to save changes made to Credentials." data-rel="tooltip" class="btn btn-inverse" runat="server" Text="Save Changes" />
                                <input type="button" name="acad_details_next" title="Click here to edit Academic Details." data-rel="tooltip" class="btn btn-primary" value="Next" onclick="display('academic_details', 'credentials', 'personal_details');" />
                            </div>
                        </div>
                        <div id="academic_details" style="display: none">
                            <div class="control-group">
                                <label class="control-label">
                                    Joining Year</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_join_year" Enabled="false" class="input-xlarge focused" runat="server"></asp:TextBox>
                                    <input type="button" name="edit_details" id="edit_academic_details" value="Edit Details" style="float: right; margin-right: 50px;" title="Click here to Enable Editing." data-rel="tooltip" class="btn btn-primary" onclick="enableTextOfDiv('edit_academic_details')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Role</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_role" runat="server" Enabled="false" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Type</asp:ListItem>
                                        <asp:ListItem Value="New">New</asp:ListItem>
                                        <asp:ListItem Value="Regular">Regular</asp:ListItem>
                                        <asp:ListItem Value="HOD">HOD</asp:ListItem>
                                        <asp:ListItem Value="Principal">Principal</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Type</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_designation" runat="server" Enabled="false" AppendDataBoundItems="true"
                                        data-rel="chosen">
                                        <asp:ListItem Value="">Select Designation</asp:ListItem>
                                        <asp:ListItem Value="Professor">Professor</asp:ListItem>
                                        <asp:ListItem Value="Assistant Professor">Assistant Professor</asp:ListItem>
                                        <asp:ListItem Value="Associate Professor">Associate Professor</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Department</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_dept" runat="server" Enabled="false" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="0">Select Department</asp:ListItem>
                                        <asp:ListItem Value="1">Information Technology</asp:ListItem>
                                        <asp:ListItem Value="2">Computer Engineering</asp:ListItem>
                                        <asp:ListItem Value="3">Metallurgy Engineering</asp:ListItem>
                                        <asp:ListItem Value="4">Mining Engineering</asp:ListItem>
                                        <asp:ListItem Value="5">Electronics & Comminication Engineering</asp:ListItem>
                                        <asp:ListItem Value="6">BioMedical Engineering</asp:ListItem>
                                        <asp:ListItem Value="7">Instrumentation & Control Engineering</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    &nbsp;&nbsp;Is Teaching Staff</label>
                                <div class="controls">
                                    <asp:CheckBox ID="Check_ITS" runat="server" Enabled="false" />
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="button" name="acad_details_back" title="Click here to edit Credentials." data-rel="tooltip" class="btn btn-primary" value="Back" onclick="display('credentials', 'academic_details', 'personal_details');" />
                                <asp:Button ID="academic_changes" Enabled="false" title="Click here to save changes made to Academic Details." data-rel="tooltip" class="btn btn-inverse" runat="server" Text="Save Changes" />
                                <%--<input type="button" name="pers_details_next" title="Click here to edit Personal Details." data-rel="tooltip" class="btn btn-primary" value="Next" onclick="display('personal_details', 'credentials', 'academic_details');"/>--%>
                            </div>
                        </div>
                    </fieldset>
                    <script type="text/javascript">
                        function display(divID, hideDiv1, hideDiv2) {
                            if (divID == 'personal_details')
                                document.getElementById('box_title').innerText = "&nbsp;&nbsp;Personal Details";
                            else if (divID == 'credentials')
                                document.getElementById('box_title').innerText = "&nbsp;&nbsp;Credentials";
                            else if (divID == 'academic_details')
                                document.getElementById('box_title').innerText = "&nbsp;&nbsp;Academic Details";
                            document.getElementById(divID).style.display = 'block';
                            document.getElementById(hideDiv1).style.display = 'none';
                            document.getElementById(hideDiv2).style.display = 'none';
                        }
                        function enableTextOfDiv(divID) {
                            alert("trigerred");
                            if (document.getElementById(divID) == 'edit_personal_details') {
                                alert("first");
                                $("#<%=Text_fullName.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_bday.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_Address.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_contact.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_emer.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_gender.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_category.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_blood.ClientID%>").removeAttr("disabled");
                            }
                            else if (document.getElementById(divID) == 'edit_credentials') {
                                alert("second");
                                $("#<%=Text_email.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_pwd.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_cpwd.ClientID%>").removeAttr("disabled");
                            }
                            else {
                                alert("last");
                                $("#<%=Text_join_year.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_role.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_designation.ClientID%>").removeAttr("disabled");
                                $("#<%=DDL_dept.ClientID%>").removeAttr("disabled");
                                $("#<%=Check_ITS.ClientID%>").removeAttr("disabled");
                            }
                            alert("exit");
                    }
                    </script>
                </form>
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->
    <!-- content ends -->
</asp:Content>
