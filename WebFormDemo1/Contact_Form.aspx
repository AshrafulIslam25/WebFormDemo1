<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact_Form.aspx.cs" Inherits="WebFormDemo1.Contact_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="p-4 container">
        <div class="col-md-20">
            
            <!-- name textbox-->
            <div class="mb-3">
                <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>

                <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="ValidateControls" 
                    ControlToValidate="txtName" 
                    ErrorMessage="Name should have at least 2 characters" style="color:red">
                </asp:CustomValidator>
                <br /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required field"
                    ControlToValidate="txtName" style="color:red">
                </asp:RequiredFieldValidator>
            </div>

            <!-- email textbox-->
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter a valid Email" ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color:red">
                </asp:RegularExpressionValidator>
            </div>


            <!-- re-enter email textbox-->
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Re-enter Email:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmailRe" CssClass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Emails do not match" 
                    ControlToValidate="txtEmail" ControlToCompare="txtEmailRe" style="color:red" />
            </div>


            <!-- age textbox-->
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Age:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid age"
                    ControlToValidate="txtAge" MaximumValue="130" MinimumValue="18" Type="Integer" style="color:red">
                </asp:RangeValidator>
            </div>


            <!-- subject textbox-->
            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" Text="Subject:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control"></asp:TextBox>
            </div>


            <!-- Message textbox-->
            <div class="mb-3">
                <asp:Label ID="Label6" runat="server" Text="Message:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" columns="60" Rows="5" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Message Required" ControlToValidate="txtMsg" style="color:red" />
            </div>


            <div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color:red"/>
            </div>

            <div class="mb-5">
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="submit_Click" />
            </div>

        </div>
    </div>
</asp:Content>
