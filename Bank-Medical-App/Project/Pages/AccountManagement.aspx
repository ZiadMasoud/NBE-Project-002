﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MedicalField.master" AutoEventWireup="true" CodeFile="AccountManagement.aspx.cs" Inherits="Pages_AccountManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Head Section Content -->
    <link rel="stylesheet" href="../assets/css/time-table.css" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeader" runat="Server">
    <!-- Page Header Content -->
    <h3>Manage Doctors Accounts</h3>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <!-- Body Content -->
    <!-- Search for User Account -->
    <div class="row">
        <div class="col-md-6 col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Enter User Account</h4>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <!-- Search Form -->
                        <div class="form-group">
                            <asp:Label ID="lblSearchUsername" runat="server" AssociatedControlID="txtSearchUsername" Text="Username"></asp:Label>
                            <div class="input-group">
                                <asp:TextBox ID="txtSearchUsername" runat="server" CssClass="form-control" Placeholder="Enter Username"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Account Management Form -->
    <div class="row">
        <div class="col-md-8 col-12">
            <div class="card" id="accountFormCard" runat="server" style="display: block;">
                <div class="card-header">
                    <h4 class="card-title">Edit User Account</h4>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <!-- Account Form -->

                        <!-- Username Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group has-icon-left">
                                    <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtUsername" Text="Username"></asp:Label>
                                    <div class="position-relative">
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Placeholder="Username"></asp:TextBox>
                                        <div class="form-control-icon">
                                            <i class="bi bi-person-circle"></i>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please enter a username.
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Password Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group has-icon-left">
                                    <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
                                    <div class="position-relative">
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <div class="form-control-icon">
                                            <i class="bi bi-lock"></i>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please enter a password with at least 6 characters.
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Doctor Name Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group has-icon-left">
                                    <asp:Label ID="lblDoctorName" runat="server" AssociatedControlID="txtDoctorName" Text="Doctor Name"></asp:Label>
                                    <div class="position-relative">
                                        <asp:TextBox ID="txtDoctorName" runat="server" CssClass="form-control" Placeholder="Doctor Name"></asp:TextBox>
                                        <div class="form-control-icon">
                                            <i class="bi bi-person"></i>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please enter the doctor's name.
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Mobile Number Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group has-icon-left">
                                    <asp:Label ID="lblMobile" runat="server" AssociatedControlID="txtMobile" Text="Mobile Number"></asp:Label>
                                    <div class="position-relative">
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Placeholder="Mobile Number"></asp:TextBox>
                                        <div class="form-control-icon">
                                            <i class="bi bi-phone"></i>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please enter a valid 10-digit mobile number.
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Price Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group has-icon-left">
                                    <asp:Label ID="lblPrice" runat="server" AssociatedControlID="txtPrice" Text="Price"></asp:Label>
                                    <div class="position-relative">
                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Placeholder="Price" TextMode="SingleLine"></asp:TextBox>
                                        <div class="form-control-icon">
                                            <i class="bi bi-tag"></i>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please enter a valid price (e.g., 100 or 99.99).
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Position Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group position-relative mb-4">
                                    <asp:Label ID="lblPosition" runat="server" Text="Position"></asp:Label>
                                    <br />
                                    <div class="btn-group mb-1">
                                        <asp:DropDownList ID="ddlPosition" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split"
                                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
                                            <asp:ListItem Text="Specialized" Value="Specialized"></asp:ListItem>
                                            <asp:ListItem Text="Analysis" Value="Analysis"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-control-icon">
                                        <i class="bi bi-briefcase-medical"></i>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please select a position.
                                       
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Medical Department Field -->
                        <div class="form-group">
                            <div class="col-12">
                                <div class="form-group position-relative mb-4">
                                    <asp:Label ID="lblDepartment" runat="server" Text="Medical Department"></asp:Label>
                                    <br />
                                    <div class="btn-group mb-1">
                                        <asp:DropDownList ID="ddlDepartments" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split"
                                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-control-icon">
                                        <i class="bi bi-hospital"></i>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please select a medical department.
                                       
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Update and Delete Buttons -->
                        <div class="d-flex justify-content-end">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success me-2" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="Server">
    <script>
        document.getElementById('<%= ddlPosition.ClientID %>').addEventListener('change', function () {
            var departmentDropdown = document.getElementById('<%= ddlDepartments.ClientID %>');
            if (this.value === '3') { // Value '3' corresponds to "Analysis"
                departmentDropdown.disabled = true; // Disable the dropdown
                departmentDropdown.value = "-1"; // Optionally reset the dropdown value
            } else {
                departmentDropdown.disabled = false; // Enable the dropdown
            }
        });
    </script>
</asp:Content>