<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminSchedules.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminSchedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container" style="margin-top: 3%;">
        <div class="jumbotron text-center">
            Schedules
        </div>
        <div class="schedulesJumbo">
            <div class="row form-group justify-content-center" style="padding-bottom: 15px; padding-top:40px;">
                <div class="col-lg-3 col-sm-3 ">
                    <asp:DropDownList ID="ddlGroup"  Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" CssClass="form-control" AppendDataBoundItems="true" runat="server" Font-Size="Large" TabIndex="1" AutoPostBack="true" OnSelectedIndexChanged="ddlGroup_Changed">
                        <asp:ListItem Value="0" Selected="True">Group</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-3 col-sm-3">
                    <asp:DropDownList ID="ddlLocation" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" Class="form-control" TabIndex="2" AutoPostBack="true" OnSelectedIndexChanged="ddlLocation_Changed">
                        <asp:ListItem Value="0" Selected="True">Location</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-3 col-sm-3">
                    <asp:DropDownList ID="ddlStatus" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" CssClass="form-control" TabIndex="3" AutoPostBack="true" OnSelectedIndexChanged="ddlStatus_Changed">
                        <asp:ListItem Value="0" Selected="True">Status</asp:ListItem>
                        <asp:ListItem Selected="False">Active</asp:ListItem>
                        <asp:ListItem Selected="False">Inactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row form-group justify-content-center" style="padding-bottom: 30px;">
                <div class="col-lg-6 col-md-6">
                    <asp:TextBox ID="txtSearch" Style="border-color: #9D2235; border-width: 3px; background-color: #f7f2f2;" Width="100%" CssClass="form-control" runat="server" placeholder="Search..." Height="100%" TabIndex="4"></asp:TextBox>
                </div>
                <div class="col-lg-2 col-md-2">
                    <asp:Button ID="btnSearch" runat="server" CssClass="uploadButtonSmallest" Text="Search" TabIndex="5" OnClick="btnSearch_Click" AutoPostBack="true" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <asp:Button ID="btnClear" runat="server" CssClass="uploadButtonSmallest" Text="Clear" TabIndex="6" OnClick="btnClear_Click" AutoPostBack="true" />
                </div>
            </div>

            <div id="successMsgDiv" runat="server" class="alert alert-success text-center" visible="false">
                <asp:Label ID="lblSuccess" runat="server" Visible="false" Text="Submission Successful! Student information has been updated."></asp:Label>
                <asp:Label ID="lblAdded" runat="server" Visible="false" Text="Submission Successful! Student was added to the database."></asp:Label>
            </div>
        </div>
        <asp:GridView ID="gvStudentList" RowStyle-BackColor="#fffbed" Font-Bold="true"
            CssClass="table"
            AutoGenerateColumns="False"
            EmptyDataText="No data available."
            EmptyDataRowStyle-CssClass="alert alert-danger"
            AutoGenerateSelectButton="true"
            AllowSorting="false"
            runat="server"
            OnSelectedIndexChanged="gvStudentList_SelectedIndexChanged"
            OnRowDataBound="OnRowDataBound" AllowPaging="True" PageSize="10"
            OnPageIndexChanging="gvStudentList_PageIndexChanging" >

            <PagerSettings Mode="Numeric" Visible="true" Position="Bottom" />
            <PagerStyle HorizontalAlign="Left" CssClass="GridPager" BackColor="#9D2235" />
                    <EmptyDataRowStyle CssClass="alert alert-danger" />


            <Columns>

                <asp:BoundField DataField="TUID" HeaderStyle-Font-Size="X-Large" HeaderText="TUID" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="FirstName" HeaderStyle-Font-Size="X-Large" HeaderText="First Name" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="LastName" HeaderStyle-Font-Size="X-Large" HeaderText="Last Name" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="GroupName" HeaderStyle-Font-Size="X-Large" HeaderText="Group Name" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" />
            </Columns>

        </asp:GridView>
        <asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>

        <br />
        <br />

        <div class="row justify-content-center">
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                <asp:Button ID="btnAddStudent" runat="server" Text="Add Student" Class="uploadButton" TabIndex="7" Width="100%" OnClick="btnAddStudent_Click" />
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                <asp:Button ID="btnDownloadData" runat="server" CssClass="uploadButton" Text="Download Data" TabIndex="8" OnClick="btnDownloadData_Click" AutoPostBack="true" />
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
