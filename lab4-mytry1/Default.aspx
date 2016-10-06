<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab4_mytry1.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="containter">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">  
                 <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover">
            <Columns>
            <asp:BoundField DataField="StudentID"  HeaderText="Student ID" Visible="true"/>
              <asp:BoundField DataField="LastName"  HeaderText="Last Name" Visible="true"/>
              <asp:BoundField DataField="FirstMidName"  HeaderText="First Mid Name" Visible="true"/>
              <asp:BoundField DataField="EnrollmentDate"  HeaderText="Enrollment Date" Visible="true" DataFormatString="{0:MMM dd yyyy}" />
        </Columns>
    </asp:GridView>



            </div>
        </div>
    </div>
   


</asp:Content>
