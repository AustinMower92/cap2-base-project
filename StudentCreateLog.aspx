<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentCreateLog.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentCreateLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="schedulesJumbo">
            <div class="jumbotron text-center">Student Logs </div>
            <div class="container-md">


                <div class="d-flex mr-2 mt-3 justify-content-center">
                    <span style="font-size: 30px; font-weight: 600; padding-right: 25px;">
                        <panel>Enter up to 5 code records for one patient</panel>
                    </span>

                </div>
                <div class="row form-group" style="padding-top: 20px; margin-left: 17em; width: 50%;">
                    <div class="col ">
                        <asp:Label for="ddlGender" ID="LabelddlGender" runat="server" Text="Gender" CssClass="ml-5" Font-Size="Large" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="ddlGender" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" Class="form-control" TabIndex="2">
                            <asp:ListItem Selected="True" Value="0">Male</asp:ListItem>
                            <asp:ListItem Value="0">Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col">
                        <asp:Label for="ddlLifeCycleStage" ID="LabelddlLifeCycleStage" runat="server" Text="Life Cycle Stage" CssClass="ml-5" Font-Size="Large" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="ddlLifeCycleStage" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" Class="form-control" TabIndex="3" AutoPostBack="False">
                            <asp:ListItem Selected="True" Value="0">Infant</asp:ListItem>
                            <asp:ListItem Value="0">Adolescent</asp:ListItem>
                            <asp:ListItem Value="0">Young Adult</asp:ListItem>
                            <asp:ListItem Value="0">Adult</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class=" d-flex justify-content-center row" style="text-align: center;">

                    <div class="col-md-2  m-2 p-3" style="border: 4px solid #9D2235;">
                        <h5>Record 1</h5>
                        <div class="form-group">
                            <asp:Label ID="LabelICD_1" runat="server" Text="ICD-10" Font-Size="Large" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="TextBoxICD_1" runat="server" Width="150"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LabelCPT1_0" runat="server" Text="CPTs" Font-Bold="True" Font-Size="Large" ></asp:Label>
                            <asp:TextBox ID="TextBoxCPT1_1" runat="server" Width="150" Text=""></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCPT1_2" runat="server" Width="150" CssClass="mb-3" Text="" Enabled="False" ></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT1_3" runat="server" Width="150" CssClass="mb-3" Enabled="False" OnClick="enableNextTextBox(TextBoxCPT1_2,TextBoxCPT1_3)" ></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT1_4" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT1_5" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>

                    </div>



                    <div class="col-md-2 m-2 p-3" style="border: 4px solid #9D2235;">
                        <h5>Record 2</h5>
                        <div class="form-group">
                            <asp:Label ID="LabelICD_2" runat="server" Text="ICD-10" Font-Size="Large" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="TextBoxICD_2" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LabelCPT2_0" runat="server" Text="CPTs" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox ID="TextBoxCPT2_1" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCPT2_2" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT2_3" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT2_4" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT2_5" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>

                    </div>

                    <div class="col-md-2 m-2 p-3" style="border: 4px solid #9D2235;">
                        <h5>Record 3</h5>
                        <div class="form-group">
                            <asp:Label ID="LabelICD_3" runat="server" Text="ICD-10" Font-Size="Large" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="TextBoxICD_3" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LabelCPT3_0" runat="server" Text="CPTs" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox ID="TextBoxCPT3_1" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCPT3_2" runat="server" Width="150" CssClass="mb-3" Enabled="False" ></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT3_3" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT3_4" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT3_5" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>

                    </div>

                    <div class="col-md-2 m-2 p-3" style="border: 4px solid #9D2235;">
                        <h5>Record 4</h5>
                        <div class="form-group">
                            <asp:Label ID="LabelICD_4" runat="server" Text="ICD-10" Font-Size="Large" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="TextBoxICD_4" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LabelCPT4_0" runat="server" Text="CPTs" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox ID="TextBoxCPT4_1" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCPT4_2" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT4_3" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT4_4" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT4_5" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>

                    </div>

                    <div class="col-md-2 m-2 p-3" style="border: 4px solid #9D2235;">
                        <h5>Record 5</h5>
                        <div class="form-group">
                            <asp:Label ID="LabelICD_5" runat="server" Text="ICD-10" Font-Size="Large" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="TextBoxICD_5" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LabelCPT5_0" runat="server" Text="CPTs" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox ID="TextBoxCPT5_1" runat="server" Width="150" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCPT5_2" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT5_3" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT5_4" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="TextBoxCPT5_5" runat="server" Width="150" CssClass="mb-3" Enabled="False"></asp:TextBox>

                    </div>


                </div>




                <div class="d-flex justify-content-center p-5">
                    <asp:Button ID="btnSubmit1" runat="server" Text="Submit" class="btn btn-primary m-3 btn-lg uploadButtonSmallest" OnClick="Button1_Click" OnClientClick="return confirm('Are you sure you want to submit?')" />

                    <asp:Button ID="btnCancel1" runat="server" Text="Cancel" class="btn btn-primary m-3 btn-lg uploadButtonSmallest" OnClick="Button2_Click" OnClientClick="return confirm('Are you sure you want to cancel?')" />
                </div>

                <script type="text/javascript">
                    function enableNextTextBox(txtbox1, txtbox2) {

                        if (!document.getElementById(txtbox1).innerHTML = ""){
                            document.getElementById(txtbox2).disabled = false;
                                
                        }
                    }
                </script>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
