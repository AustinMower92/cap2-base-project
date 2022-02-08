<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentLogging.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentLogging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="schedulesJumbo">
            <div class="jumbotron text-center">Student Logs </div>
            <div style="display: flex; flex-direction: row;" class="align-items-center m-5">
                <asp:Button ID="btnCreateLog" Class="uploadButtonSmallest mr-5" Text="Create Log" runat="server" OnClick="btnCreateLog_Click" TabIndex="7" />
                <asp:Button ID="btnViewHistory" Class="uploadButtonSmallest" Text="View History" runat="server" OnClick="btnViewHistory_Click" TabIndex="7" />
            </div>
        </div>
    </div>
</asp:Content>
