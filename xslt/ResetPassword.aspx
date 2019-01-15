<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/App_MasterPages/layout.Master"
    CodeBehind="ResetPassword.aspx.cs" Inherits="CanhCam.Web.UI.Pages.ResetPasswordPage" %>

<asp:Content ContentPlaceHolderID="leftContent" ID="MPLeftPane" runat="server" />
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">

	<div class="admin-content">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-8 col-xl-6" style="margin:auto">
					<div class="wrap-secure wrap-recover">

						<asp:Panel ID="pnlResetPassword" CssClass="wrap-secure wrap-resetpass" runat="server" DefaultButton="btnChangePassword">

							<div class="panel panel-primary">
								<div class="panel-heading">
									<portal:HeadingControl ID="headingControl" Text="<%$Resources:Resource, PasswordReset %>" runat="server" />
								</div>

								<div class="form-horizontal pd20">
									<div class="settingrow form-group">
										<gb:SiteLabel ID="lblNewPassword" runat="server" CssClass="settinglabel control-label" ForControl="txtNewPassword"
										 ConfigKey="ChangePasswordNewPasswordLabel" />
										<telerik:RadTextBox runat="server" ID="txtNewPassword" CssClass="form-control" Width="100%" EnableViewState="false"
										 EnableEmbeddedSkins="false" EnableEmbeddedBaseStylesheet="false" TextMode="Password"
										 EnableSingleInputRendering="false">
											<PasswordStrengthSettings ShowIndicator="false"></PasswordStrengthSettings>
										</telerik:RadTextBox>
										<asp:RequiredFieldValidator ControlToValidate="txtNewPassword" ID="NewPasswordRequired" runat="server"
										 Display="Dynamic" SetFocusOnError="true" ValidationGroup="ChangePassword1">
										</asp:RequiredFieldValidator>
										<asp:RegularExpressionValidator ID="NewPasswordRegex" runat="server" ControlToValidate="txtNewPassword"
										 Display="Dynamic" SetFocusOnError="true" ValidationGroup="ChangePassword1">
										</asp:RegularExpressionValidator>
										<asp:CustomValidator ID="NewPasswordRulesValidator" runat="server" ControlToValidate="txtNewPassword" Display="Dynamic"
										 SetFocusOnError="true" ValidationGroup="ChangePassword1">
										</asp:CustomValidator>
									</div>
									<div class="settingrow form-group">
										<gb:SiteLabel ID="lblConfirmNewPassword" runat="server" CssClass="settinglabel control-label" ForControl="txtConfirmNewPassword"
										 ConfigKey="ChangePasswordConfirmNewPasswordLabel" />
										<asp:TextBox ID="txtConfirmNewPassword" CssClass="form-control" EnableViewState="false" runat="server"
										 TextMode="password" />
										<asp:RequiredFieldValidator ControlToValidate="txtConfirmNewPassword" ID="ConfirmNewPasswordRequired" runat="server"
										 Display="Dynamic" SetFocusOnError="true" ValidationGroup="ChangePassword1">
										</asp:RequiredFieldValidator>
										<asp:CompareValidator ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPassword" ID="NewPasswordCompare"
										 runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="ChangePassword1">
										</asp:CompareValidator>
									</div>
									<div class="settingrow form-group">
										<asp:Button SkinID="DefaultButton" ID="btnChangePassword" CommandName="ChangePassword" Text="Change Password"
										 runat="server" ValidationGroup="ChangePassword1" />

									</div>
								</div>

						</asp:Panel>
						<asp:Panel ID="pnlResults" Visible="false" CssClass="wrap-secure wrap-resetpass wrap-resetresults" runat="server">
							<asp:Literal ID="litMessage" runat="server" />
						</asp:Panel>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</asp:Content>
<asp:Content ContentPlaceHolderID="rightContent" ID="MPRightPane" runat="server" />
<asp:Content ContentPlaceHolderID="pageEditContent" ID="MPPageEdit" runat="server" />
