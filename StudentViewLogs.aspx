<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentViewLogs.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentViewLogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Log History</div>
        <div class="schedulesJumbo">
            <div class="container-md">
                <%--<div class="d-flex justify-content-center pt-3 row m-4" style="border: 4px solid #9D2235;">
                    <div>
                        <asp:TextBox ID="searchByIndextxt" runat="server" class="m-4 " placeholder="Search By Index..." Style="float: left;"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary uploadButtonSmallest mt-3" Style="float: left;" />
                    </div>

                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-primary uploadButtonSmallest ml-3 mt-3 " Style="float: left;" OnClick="Button2_Click" />
                    </div>
                </div>--%>
                <div class="row form-group" style="padding-top: 20px; margin-left: 17em; width: 50%;">
                    <div class="col ">
                        <asp:Label for="ddlDates" ID="Label1" runat="server" Text="Gender" CssClass="ml-5" Font-Size="Large" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" Class="form-control" TabIndex="2" AutoPostBack="true">
                            <asp:ListItem Selected="True" Value="0">Male</asp:ListItem>
                            <asp:ListItem Value="0">Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col">
                        <asp:Label for="ddlLocation" ID="Label2" runat="server" Text="Life Cycle Stage" CssClass="ml-5" Font-Size="Large" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" Style="border-color: #9D2235; border-width: 2px; background-color: #f7f2f2;" runat="server" AppendDataBoundItems="true" Font-Size="Large" Class="form-control" TabIndex="3" AutoPostBack="true">
                            <asp:ListItem Selected="True" Value="0">Infant</asp:ListItem>
                            <asp:ListItem Value="0">Adolescent</asp:ListItem>
                            <asp:ListItem Value="0">Young Adult</asp:ListItem>
                            <asp:ListItem Value="0">Adult</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>           

            <div class="justify-content-center">
                <div class="container">
                    <asp:GridView ID="gvLogs2" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#FFFBED" RowStyle-BorderStyle="NotSet" CssClass="table" EmptyDataText="No data available" 
                        OnPageIndexChanging="gvLogs2_PageIndexChanging" OnSelectedIndexChanged="gvLogs2_SelectedIndexChanged" OnRowUpdating="gvLogs2_RowUpdating" OnRowEditing="gvLogs2_RowEditing" OnRowCancelingEdit="gvLogs2_RowCancelingEdit" >
                        <RowStyle />
                        <Columns>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="40">
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbDelete" runat="server" OnCheckedChanged="cbDelete_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ICD" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT1" HeaderText="CPT" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT2" HeaderText="CPT" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT3" HeaderText="CPT" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT4" HeaderText="CPT" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT5" HeaderText="CPT" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" ControlStyle-Width="85">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>
                            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" ShowHeader="True" ControlStyle-Width="85"></asp:CommandField>


                            <%--<asp:HyperLinkField HeaderText="View" NavigateUrl="StudentViewLogsDetails.aspx" Text="View" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">


                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:HyperLinkField>--%>


                        </Columns>
                        <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White" />
                        <RowStyle BackColor="#FFFBED"></RowStyle>
                        <EditRowStyle CssClass="GridViewEditRow" HorizontalAlign="Justify" />
                        <SelectedRowStyle HorizontalAlign="Center" Wrap="False" />

                        <PagerStyle BackColor="#9D2235" CssClass="GridPager" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBED"></RowStyle>
                    </asp:GridView>
                </div>

                <div class="d-flex justify-content-center p-5">
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete" class=" btn btn-primary m-3 btn-lg uploadButtonSmallest" OnClientClick="return confirm('Are you sure you want to delete?')" OnClick="deleteBtn_Click" />
                    <asp:Button ID="backBtn" runat="server" Text="Back" OnClick="backBtn_Click" class=" btn btn-primary m-3 btn-lg uploadButtonSmallest" />

                </div>

            </div>
        </div>
    </div>
</asp:Content>
