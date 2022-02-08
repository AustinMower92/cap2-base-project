<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminFacultyView.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminFacultyView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container">
        <div class="jumbotron text-center">Review the Evaluation of Student</div>
        <div class="schedulesJumbo p-3">
            <br />
            <h3>
                <asp:Label runat="server">Review the evaluation before uploading it:</asp:Label></h3>
            <br />
            <div class="text-center">
                <h4>
                    <asp:Label runat="server">Please rate the student's performance on the following learning objectives on scale of 1-5:
                        <asp:Label runat="server" style="color: red;">*</asp:Label>
                    </asp:Label></h4>
                <p>
                    (1 = Poor, 2 = Fair, 3 = Good, 4 = Very Good, 5 = Excellent, N/A = Not Applicable)
                </p>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Rate the Following</th>
                        <th scope="col">Rating</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Evaluate the patient by performing a comprehensive podiatric, medical and surgical evaluation of patients and estimate criteria for selection of surgical procedures</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1" CssClass="radioButtonList" TextAlign="Left" Enabled="False">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Perform a lower extremity history and physical examination</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList2" CssClass="radioButtonList" TextAlign="Left" Enabled="False">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Perform a complete lower extremity biomechanical evaluation</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList3" CssClass="radioButtonList" TextAlign="Left" Enabled="False">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>

            <br />

            <h5>
                <asp:Label runat="server">Other Thoughts/ Notes About the Student:</asp:Label></h5>
            <div class="d-flex justify-content-center">
                <textarea id="txta1" class="form-control" cols="20" rows="2" runat="server" style="width: 100%;" readonly="readonly"></textarea>
            </div>
            <br />


            <h5>
                <asp:Label runat="server">Final Observation:</asp:Label>
                <asp:Label runat="server" Style="color: red;">*</asp:Label>
            </h5>
            <p>
                This evaluation repressents 
                <asp:TextBox ID="txtHours" runat="server" Width="50px" ReadOnly="True"></asp:TextBox>
                hours of observation or opinon of 
                <asp:TextBox ID="txtNumPO" runat="server" Width="30px" ReadOnly="True"></asp:TextBox>
                personal observers.
            </p>
            <p>**Student must achieve at least (2) in all areas listed above to recieving a passing grade for this rotation.</p>
            <asp:RadioButtonList ID="RBLPassFail" runat="server">
                <asp:ListItem Selected="True">Pass**</asp:ListItem>
                <asp:ListItem>Fail</asp:ListItem>
            </asp:RadioButtonList>

            <div class="d-flex justify-content-center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="falApplyFilters" OnClick="btnCancel_Click" />
                <asp:Button ID="btnConfirmUpload" runat="server" Text="Confirm Upload"  CssClass="falApplyFilters" OnClick="btnConfirmUpload_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
