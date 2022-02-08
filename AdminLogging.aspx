<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminLogging.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminLogging" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Admin Logs</div>
        <div class="schedulesJumbo">

            <div class="container mt-5 p-4">
                <div style="display: flex; flex-direction: row;" class="align-items-center">
                    <asp:Button ID="btnViewHistory2" Class="uploadButtonSmallest" Text="View Student History" runat="server" OnClick="btnViewHistory_Click2" TabIndex="7" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
