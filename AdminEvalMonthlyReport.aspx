<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminEvalMonthlyReport.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminEvalMonthlyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            vertical-align: middle;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to delete the published form?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
        </script>

    <div class="container">
        <div id="facultyAttendance" class="jumbotron text-center">Attendance</div>
        <div class="schedulesJumbo p-3">
            <div class="row" style="padding-bottom: 20px;">
                <div class="col">
                    <input class="h-100 col-11" type="date" value="<%=DateTime.Now.ToString("yyyy-MM-dd")%>">
                </div>
                <div class="col">
                    <input list="datalistOptions" class="h-100" id="txtStudentList" name="StudentList" placeholder="Search for student..." />
                    <asp:Button runat="server" Text="Search" class="btn btn-outline-secondary adminEvalAttendanceEdit" type="button" ID="buttonaddon2" OnClick="Search_Click" />
                    <datalist id="datalistOptions">
                        <option value="Test User 1">
                        <option value="Test User 2">
                        <option value="Test User 3">
                        <option value="Test User 4">
                    </datalist>
                </div>
                <div class="col"></div>
            </div>
            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>TuID</th>
                            <th>Present</th>
                            <th>Absent</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">
                                <asp:LinkButton ID="testUser1" runat="server" OnClick="testUser1_Click">Test User 1</asp:LinkButton>
                            </td>
                            <td class="align-middle">123456789</td>
                            <td class="align-middle">26</td>
                            <td class="align-middle">4</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:LinkButton ID="testUser2" runat="server" OnClick="testUser2_Click">Test User 2</asp:LinkButton>
                            </td>
                            <td class="auto-style1">987654321</td>
                            <td class="auto-style1">20</td>
                            <td class="auto-style1">10</td>
                        </tr>
                        <tr>
                            <td class="align-middle">
                                <asp:LinkButton ID="testUer3" runat="server" OnClick="testUer3_Click">Test User 3</asp:LinkButton>
                            </td>
                            <td class="align-middle">123498765</td>
                            <td class="align-middle">29</td>
                            <td class="align-middle">1</td>
                        </tr>
                        <tr>
                            <td class="align-middle">
                                <asp:LinkButton ID="testUer4" runat="server" OnClick="testUer4_Click">Test User 4</asp:LinkButton>
                            </td>
                            <td class="align-middle">432156789</td>
                            <td class="align-middle">15</td>
                            <td class="align-middle">15</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button runat="server" CssClass="adminEvalAttendanceEdit offset-6" Style="margin-right: 5px;" type="button" class="btn btn-lg" Text="Download" />
                <asp:Button runat="server" CssClass="adminEvalReportDelete" Style="margin-left: 5px;" type="button" class="btn btn-lg" Text="Delete" OnClientClick="Confirm()" />

            </div>
        </div>
    </div>
    <div class="container" id="studentTable" runat="server">
        <div id="studentmonthlyreport" class="jumbotron text-center">Attendance </div>
        <div class="schedulesJumbo p-3">
            <div class="table-responsive">
                <div class="text-center font-weight-bolder">
                    <asp:Label ID="nameLabel" class="text-center" runat="server" Text=""></asp:Label>
                </div>

                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Attendance</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">November 1st, 2021</td>
                            <td class="align-middle">Present</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">November 2st, 2021</td>
                            <td class="auto-style1">Present</td>
                        </tr>
                        <tr>
                            <td class="align-middle">November 3st, 2021</td>
                            <td class="align-middle">Absent</td>
                        </tr>
                        <tr>
                            <td class="align-middle">November 4st, 2021</td>
                            <td class="align-middle">Present</td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <asp:Button ID="close" class="btn-close text-center" aria-label="Close" runat="server" Text="Close" Width="92px" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
