<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentViewLogList.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentViewLogList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Log History</div>
        <div class="schedulesJumbo">
            <div class="container-md">
                <div class="d-flex justify-content-center pt-3 row m-4" style="border: 4px solid #9D2235;">
                    <div>
                        <asp:TextBox ID="searchByIndextxt" runat="server" class="m-4 " placeholder="Search By Index..." Style="float: left;"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary uploadButtonSmallest mt-3" Style="float: left;" />
                    </div>

                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-primary uploadButtonSmallest ml-3 mt-3 " Style="float: left;" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>

            <div class="justify-content-center">
                <div class="container">
                    <asp:GridView ID="gvLogs2" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#FFFBED" RowStyle-BorderStyle="NotSet" CssClass="table" AllowPaging="True" EmptyDataText="No data available" PageSize="2" OnPageIndexChanging="gvLogs2_PageIndexChanging" OnSelectedIndexChanged="gvLogs2_SelectedIndexChanged">
                        <RowStyle />
                        <Columns>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbDelete" runat="server" OnCheckedChanged="cbDelete_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Index" HeaderText="Index" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="Gender" HeaderText="Gender" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="LifeCycleStage" HeaderText="Life Cycle" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="ICD" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White" >
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT1" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT2" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT3" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="CPT4" HeaderText="ICD-10" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:HyperLinkField HeaderText="View" NavigateUrl="StudentViewLogs.aspx" Text="View" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">


                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:HyperLinkField>


                        </Columns>

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
