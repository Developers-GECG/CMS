<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master"
    AutoEventWireup="true" CodeBehind="AddVideo.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.AddVideo" %>

<asp:Content ID="title" ContentPlaceHolderID="pageTitle" runat="server">Add Video or Create New Class</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Add Videos / Class
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <form id="Form1" class="form-horizontal" runat="server">
    <fieldset>
        <div class="control-group">
            <label class="control-label">
                Radio buttons</label>
            <div class="controls">
                <label class="radio">
                    <input type="radio" name="chooseClass" id="radAddVideo" checked="checked" onclick="displayDiv('addVideo')" />
                    Add Video To Existing Class
                </label>
                <div style="clear: both">
                </div>
                <label class="radio">
                    <input type="radio" name="chooseClass" id="radAddClass" onclick="displayDiv('addClass')" />
                    Create New Class
                </label>
            </div>
        </div>
        <div id="addClass" style="display: none">
            <div class="control-group">
                <label class="control-label" for="focusedInput">
                    Class Title</label>
                <div class="controls">
                    <asp:TextBox ID="Text_classTitle" class="input-xlarge focused" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Class Descrption</label>
                <div class="controls">
                    <asp:TextBox ID="Text_classDescription" class="input-xlarge focused" TextMode="MultiLine"
                        runat="server" Rows="6" Columns="15" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="focusedInput">
                    Courtesy</label>
                <div class="controls">
                    <asp:TextBox ID="Text_courtesy" class="input-xlarge focused" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="focusedInput">
                    YouTube Key</label>
                <div class="controls">
                    <asp:TextBox ID="Text_CKey" class="input-xlarge focused" runat="server"></asp:TextBox>
                    (e.g "http://www.youtube.com/watch?v=<span style="color: Blue">StphRCLkx6Q</span>"
                    Enter the string in blue from your video URL)
                </div>
            </div>
            <div class="form-actions">
                <asp:Button ID="add_Class" class="btn btn-inverse" runat="server" Text="Add Class"
                    OnClick="addClass" />
                <button class="btn">
                    Cancel</button>
            </div>
        </div>
        <div id="addVideo" style="display: block">
            <div class="control-group">
                <label class="control-label">
                    Class</label>
                <div class="controls">
                    <asp:DropDownList ID="ddlClass" class="input-large span10" runat="server" OnChange="showDiv(this)"
                        Style="width: auto;">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="focusedInput">
                    YouTube Key</label>
                <div class="controls">
                    <asp:TextBox ID="Text_key" class="input-xlarge focused" runat="server"></asp:TextBox>
                    (e.g "http://www.youtube.com/watch?v=<span style="color: Blue">StphRCLkx6Q</span>"
                    Enter the string in blue from your video URL)
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="focusedInput">
                    Title</label>
                <div class="controls">
                    <asp:TextBox ID="Text_title" class="input-xlarge focused" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Descrption</label>
                <div class="controls">
                    <asp:TextBox ID="Text_description" class="input-xlarge focused" TextMode="MultiLine"
                        runat="server" Rows="6" Columns="15" />
                </div>
            </div>
            <div class="form-actions">
                <asp:Button ID="add_Video" class="btn btn-inverse" runat="server" Text="Add Video"
                    OnClick="addVideo" />
                <button class="btn">
                    Cancel</button>
            </div>
        </div>
    </fieldset>
    </form>
    <script type="text/javascript">
        function displayDiv(divID) {
            if (divID == "addClass") {
                document.getElementById('addClass').style.display = 'block';
                document.getElementById('addVideo').style.display = 'none';
            }
            else if (divID == "addVideo") {
                document.getElementById('addClass').style.display = 'none';
                document.getElementById('addVideo').style.display = 'block';
            }
        }
        function showDiv(divID) {
            if (divID.options[divID.selectedIndex].text == "Create New Class") {
                document.getElementById('radAddClass').checked = 'true';
                displayDiv('addClass');
            }
            else {
                displayDiv('addVideo');
            }
        }
        function popup() {
            var ddlId = document.getElementById("ddlClass");
            //alert(ddlId);
            var ddlValue = ddlId.options[ddlId.selectedIndex].text;
            alert("hello " + ddlValue);
        }
    </script>
    <%--<script type="text/javascript">
        function itemChange(sender) {
            var c = document.getElementById("ddlClass");
            if (sender.value > 0) {
                c.innerHTML = sender.value;
                c.style.visibility = "visible";
            } else {
                c.innerHTML = "selection result";
                c.style.visibility = "hidden";
            }
        }
    </script>
    <script type="text/javascript">
        function showDiv1() {
            $("#addVideo").hide();
            var ddlId = document.getElementById("ddlClass");
            alert(ddlId);
            var ddlValue = ddlId.options[ddlId.selectedIndex];
            alert("hello " + ddlValue);
            if (ddlValue == '1') {
                $("#addVideo").hide();
                $("#addVideo").style({
                    display: "none",
                    visibility: "hidden"
                });
                $("#addClass").style({
                    display: "normal",
                    visibility: "visible"
                });
                document.getElementById('addClass').style["display"] = 'normal';
                document.getElementById('addClass').style["visibility"] = 'visible';
                document.getElementById('addVideo').style["display"] = 'none';
                document.getElementById('addVideo').style["visibility"] = 'hidden';
            } else {
                $("#addVideo").hide();
                $("#addClass").css({
                    display: "none",
                    visibility: "hidden"
                });
                $("#addVideo").css({
                    display: "normal",
                    visibility: "visible"
                });
                document.getElementById('addVideo').style["display"] = 'normal';
                document.getElementById('addVideo').style["visibility"] = 'visible';
                document.getElementById('addClass').style["display"] = 'none';
                document.getElementById('addClass').style["visibility"] = 'hidden';
            }
        }
    </script>--%>
</asp:Content>
