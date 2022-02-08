<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentSchedule.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="container" style="margin-top: 3%;">
        <div class="jumbotron text-center" id="adminJumbo" runat="server">
            Your Schedule
        </div>

        <br/>
        <div class="form-group" style="padding-top: 0px;">

            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="card" id="cardInfo" runat="server">

                        <div class="row card-header cardSchedule justify-content-center" style="padding-top: 30px; padding-bottom: 30px; background-color: #9D2235;">
                            <div class="col-4">
                                <h1 style="margin-bottom: 0px; font-weight: 500; color: white;">Filter Dates:</h1>
                            </div>
                            <div class="col-6 ">

                                <asp:DropDownList ID="ddlMonth" runat="server" BorderWidth="3px" BorderColor="#FFCD00" CssClass="form-control" Width="100%" BackColor=" #f7f2f2" Font-Size="X-Large" Font-Bold="true" TabIndex="1" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <br />
                        <br />


                        <div class="card-header cardSchedule cardRotation " style="background-color: #9D2235; color: white; padding-top: 20px; padding-bottom: 20px;">
                            <h1 id="hRotName" runat="server" style="margin-bottom: 0px;"></h1>
                        </div>
                        <div class="card-body cardRotation">
                            <br />
                            <div class="col-12" style="text-align: center;">
                                <div style="display: inline-block; text-align: left;">
                                    <div class="card-text" style="font-size:x-large;" id="pLocationName" runat="server"></div>
                                    <div class="card-text" style="font-size:x-large;" id="pAddress" runat="server"></div>
                                    <div class="card-text" style="font-size:x-large;" id="pFullfill" runat="server"></div>
                                </div>
                            </div>
                            <br />
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="card-text" id="session1" runat="server"><b>Monday AM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session2" runat="server"><b>Monday PM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session3" runat="server"><b>Tuesday AM: </b></div>
                                    </div>
                                </div>
                                <hr />

                                <div class="row">
                                    <div class="col-sm">
                                        <div class="card-text" id="session4" runat="server"><b>Tuesday PM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session5" runat="server"><b>Wednesday AM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session6" runat="server"><b>Wednesday PM: </b></div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="card-text" id="session7" runat="server"><b>Thursday AM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session8" runat="server"><b>Thursday PM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session9" runat="server"><b>Friday AM: </b></div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="card-text" id="session10" runat="server"><b>Friday PM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session11" runat="server"><b>Friday AM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session12" runat="server"><b>Friday AM: </b></div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="card-text" id="session13" runat="server"><b>Friday AM: </b></div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="card-text" id="session14" runat="server"><b>Friday AM: </b></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>
</asp:Content>
