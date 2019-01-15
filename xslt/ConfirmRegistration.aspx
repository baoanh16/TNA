<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/App_MasterPages/layout.Master"
    CodeBehind="ConfirmRegistration.aspx.cs" Inherits="CanhCam.Web.UI.Pages.ConfirmRegistration" %>

<asp:Content ContentPlaceHolderID="leftContent" ID="MPLeftPane" runat="server" />
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
	<div class="admin-content">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-8 col-xl-6" style="margin:auto">
					<div class="wrap-secure wrap-confirmreg">
						<div class="panel panel-primary alert alert-success">
							<asp:Label ID="lblMessage" runat="server" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ContentPlaceHolderID="rightContent" ID="MPRightPane" runat="server" />
<asp:Content ContentPlaceHolderID="pageEditContent" ID="MPPageEdit" runat="server" />
