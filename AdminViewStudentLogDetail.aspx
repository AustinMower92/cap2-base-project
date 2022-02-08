<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminViewStudentLogDetail.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminViewStudentLogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Log Details</div>
        <div class="schedulesJumbo">


            <div class="container-lg">
                <asp:GridView ID="gvLogs" runat="server" AutoGenerateColumns="False" CssClass="table mt-3" RowStyle-BackColor="#fffbed"
                    EmptyDataText="No data available." OnRowCancelingEdit="gvLogs_RowCancelingEdit" OnRowEditing="gvLogs_RowEditing" OnRowUpdating="gvLogs_RowUpdating" OnSelectedIndexChanged="gvLogs_SelectedIndexChanged">

                    <Columns>

                        <asp:BoundField DataField="Index" HeaderText="Index" ControlStyle-Width="50"></asp:BoundField>

                        <asp:TemplateField HeaderText="Gender" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True" Value="0">Male</asp:ListItem>
                                    <asp:ListItem Value="1">Female</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Life Cycle Stage" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Selected="True" Value="0">Infant</asp:ListItem>
                                    <asp:ListItem Value="1">Child</asp:ListItem>
                                    <asp:ListItem Value="2">Adolescent</asp:ListItem>
                                    <asp:ListItem Value="3">Young Adult</asp:ListItem>
                                    <asp:ListItem Value="4">Adult</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="ICD" HeaderText="ICD-10" ControlStyle-Width="85"></asp:BoundField>

                        <asp:BoundField DataField="CPT1" HeaderText="CPT" ControlStyle-Width="85"></asp:BoundField>

                        <asp:BoundField DataField="CPT2" HeaderText="CPT" ControlStyle-Width="85"></asp:BoundField>

                        <asp:BoundField DataField="CPT3" HeaderText="CPT" ControlStyle-Width="85"></asp:BoundField>

                        <asp:BoundField DataField="CPT4" HeaderText="CPT" ControlStyle-Width="85"></asp:BoundField>

                        <asp:BoundField DataField="CPT5" HeaderText="CPT" ControlStyle-Width="85"></asp:BoundField>

                        <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" ShowHeader="True" ShowCancelButton="False"></asp:CommandField>

                    </Columns>

                    <EditRowStyle HorizontalAlign="Justify" />
                    <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White" />
                    <RowStyle BackColor="#FFFBED"></RowStyle>
                    <SelectedRowStyle HorizontalAlign="Center" Wrap="False" />

                </asp:GridView>

                <div class="d-flex justify-content-center p-5">
                    <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="return confirm('If you did not select the update button all changes will be lost');" class=" btn btn-primary m-3 btn-lg uploadButtonSmallest" Width="150px" OnClick="backBtn_Click" />
                </div>

            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
