﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QR_Menu_Designer.Register"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>  
    <script src="https://kit.fontawesome.com/6eb49a722e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Tammudu+2&family=Permanent+Marker&family=Roboto+Condensed&family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet" />
    <style>
        .bs-example{
            margin: 0vh;
        }
        .m-nav {
            float:left;
            height: 25vh;
        }
        .r-backBtn {
            background-color: #C2AA6B;
            border: none;
        }
        .m-nav .fa-chevron-left{
            font-size: 20px;
            margin-top: 5vh;
            margin-left: 5vw;
        }
        .m-btn-div {
            float: left;
            position: relative;
            height: 25vh;
            width: 100%;
        }
        .r-form {
            background-color: white; 
            height: 70vh; 
            width: 80%; 
            position: absolute; 
            left: 10%; 
            top: 15%; 
            z-index: 1;
            box-shadow: 2px 10px 10px 2px rgba(0, 0, 0, 0.25);
            padding: 5vh;
        }
        .r-title {
            font-family: 'Baloo Tammudu 2', cursive;
            font-size: 36px;
            line-height: 40px;
            display: flex;
            align-items: center;
            letter-spacing: -0.015em;
        }
        .r-next-btn {
            background-color: #C2AA6B;
            color: white;
            position: absolute;
            top: 110%;
        }
        .r-hl {
            position: absolute;
            top: 125%;
        }
        .r-innerdiv {
            position: relative;
        }
        .r-modal-errMsg {
            position: fixed;
            width: 80%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none;
            z-index: 3;
            transition: all 2s ease-in-out;
        }
        .r-blur {
            background: rgba(0,0,0,0.5);
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            z-index: 2;
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 100vh">
            <div class="text-center" style="background-color: #C2AA6B; height: 50vh">
                <div class="m-nav p-2" style="width: 18%">
                    <button runat="server" class="r-backBtn" id="backBtn" onserverclick="ReturnPrev">
                        <i class="fas fa-chevron-left"></i>
                    </button>
                </div>
                <div class="m-nav p-2" style="width: 64%">
                    <div class="m-title" style="font-family: 'Permanent Marker', cursive; font-size: 15vw">QRMenu</div>
                </div>
                <div class="m-nav p-2" style="width: 18%">
                </div>
                <div class="m-btn-div">
                </div>
            </div>
            <div class="text-center" style="height: 50vh">
                <div class="m-btn-div">
                </div>
                <div class="" style="height: 25vh"></div>
            </div>
        </div>
        <div class="r-form">
            <div class="bs-example">
                <div class="r-innerdiv">
                    <div class="r-title">Sign Up</div>
                    <div class="r-innerdiv">
                        <div class="form-group" style="height: 12vh">
                            <label for="inputEmail">Email</label>
                            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="This field cannot be empty" ForeColor="Red" Font-Size="Small" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revUsername" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="Please enter a valid email address" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtUsername"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group" style="height: 12vh">
                            <label for="inputPassword">Password</label>
                            <asp:TextBox ID="txtPassword" MaxLength="15" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="This field cannot be empty" ForeColor="Red" Font-Size="Small" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPassword" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="Minimum length is 6 characters" ForeColor="Red" Font-Size="Small" ValidationExpression=".{6}.*" ControlToValidate="txtPassword" />
                        </div>
                        <div class="form-group" style="height: 12vh">
                            <label for="inputPassword">Confirm Password</label>
                            <asp:TextBox ID="txtConfirmPassword" MaxLength="15" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="This field cannot be empty" ForeColor="Red" Font-Size="Small" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revConfirmPassword" runat="server" Display="Dynamic" ValidationGroup="register" ErrorMessage="Minimum length is 6 characters" ForeColor="Red" Font-Size="Small" ValidationExpression=".{6}.*" ControlToValidate="txtConfirmPassword" />
                        </div>
                        <input type="submit" class="btn btn-block r-next-btn" runat="server" validationgroup="register" value="Next" onserverclick="BtnRegisterClick" />
                        <asp:HyperLink Height="1px" ID="hlLogin" CssClass="card-link r-hl" NavigateUrl="~/Login.aspx" Font-Size="Small" runat="server">Already have an account? Click here to log in</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <%--<button type="button" class="btn btn-primary r-toggleModal" onclick="toggleModal()">
          Launch demo modal
        </button>--%>
        <div class="r-blur" runat="server" id="modalBlur"></div>
        <div class="r-modal-errMsg" runat="server" id="modalErrMsg">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Error</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="hideModal()">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label id="lblErrMsg" runat="server" form="form1"></label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="hideModal()">OK</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<!-- JavaScript for disabling form submissions if there are invalid fields -->
<script>
    function toggleModal() {
        //document.getElementById("modalErrMsg").style.visibility = "visible";
        $("#modalErrMsg").fadeIn();
        $("#modalBlur").fadeIn();
    }
    function hideModal() {
        $("#modalErrMsg").fadeOut();
        $("#modalBlur").fadeOut();
        document.getElementById('lblErrMsg').innerText = "";
    }
    
    $(document).ready(function () {
        var toggleModal = document.getElementById('lblErrMsg').innerText;
       
        if (toggleModal) {
            console.log(toggleModal);
            console.log("1");
            $("#modalErrMsg").fadeIn();
            $("#modalBlur").fadeIn();
        }
    });
</script>
</html>
