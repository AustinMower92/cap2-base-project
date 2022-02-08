<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminViewStudentList.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminViewStudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Student Database</div>
        <div class="schedulesJumbo">
            <div class=" container-md">
                <div class="d-flex justify-content-center pt-3 row m-4" style="border: 4px solid #9D2235;">
                    <div>
                        <asp:TextBox ID="searchByIndextxt" runat="server" class="m-4 " placeholder="Search By Index..." Style="float: left;"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary uploadButtonSmallest mt-3" Style="float: left;" />
                    </div>

                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-primary uploadButtonSmallest ml-3 mt-3" Style="float: left;" OnClick="Button2_Click" />
                    </div>
                </div>

            </div>

            <div>
                <div class="container">

                    <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="False" CssClass="table" RowStyle-BackColor="#fffbed"
                        EmptyDataText="No data available." AllowPaging="True" PageSize="5" PagerStyle-CssClass="GridPager" PagerStyle-ForeColor="White" PagerStyle-HorizontalAlign="Center" OnPageIndexChanging="gvStudents_PageIndexChanging">

                        <Columns>

                            <asp:BoundField DataField="TuID" HeaderText="TUID" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="FirstName" HeaderText="First Name" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="LastName" HeaderText="Last Name" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="Rotation" HeaderText="Rotation" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="Group" HeaderText="Group" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="View" HeaderStyle-Font-Size="X-Large" HeaderStyle-BackColor="#9D2235" HeaderStyle-ForeColor="White">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View</asp:LinkButton>
                                </ItemTemplate>

                                <HeaderStyle BackColor="#9D2235" Font-Size="X-Large" ForeColor="White"></HeaderStyle>
                            </asp:TemplateField>

                        </Columns>

                        <PagerStyle BackColor="#9D2235" />

                        <RowStyle BackColor="#FFFBED"></RowStyle>

                    </asp:GridView>


                </div>

                <div class="d-flex justify-content-center p-5">

                    <asp:Button ID="exportBtn" runat="server" Text="Export" class=" btn btn-primary m-3 btn-lg uploadButtonSmallest" OnClientClick="return confirm('Select OK to export data')" />
                    <asp:Button ID="backBtn" runat="server" Text="Back" class=" btn btn-primary m-3 btn-lg uploadButtonSmallest" OnClick="backBtn_Click" />
                </div>
            </div>
            <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
