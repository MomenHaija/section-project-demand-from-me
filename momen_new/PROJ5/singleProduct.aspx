<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleProduct.aspx.cs" Inherits="PROJ5.singleProduct" %>

<!DOCTYPE html>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Nunito:ital,wght@0,500;1,500&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet"/>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="new.css" />
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /> 
    <title></title>
    <style>
/*
        NavBar Css
nav {
    height: 9%;
    border: solid black 1px;
    position: sticky;
    background-color: #D3D3D3;
    display: flex;
    justify-content: space-between;
    font-family: 'Lato', sans-serif;
    border: none;
    box-shadow: 2px 2px 2px 2px gray;
}

#NavLogo {
    width: 40%;
    height: 100%;
    display: flex;
    justify-content: flex-start;
    gap: 30px;
    align-items: center;
    margin-left: 40px
}

    #NavLogo span {
        font-size: 20px;
        font-weight: bold;
    }
    Logo Image
    #NavLogo img {
        height: 50px;
        width: 100px;
    }
Nav Text
#NavText {
    display: flex;
    justify-content: center;
    gap: 80px;
    align-items: center;
    width: 60%;
    height: 100%;
}

    #NavText button {
        height: 80%;
        width: 15%;
        font-size: 18px;
        color: black;
        font-weight: bold;
        background-color: inherit;
        border: none;
    }

        #NavText button:hover {
            animation-name: bgcolorchange;
            animation-duration: 2s;
            animation-iteration-count: infinite;
            border-radius: 20px;
        }

i {
    font-size: 20px;
}

@keyframes bgcolorchange {
    50% {
        background-color: aliceblue
    }

    100% {
        background-color: #D3D3D3
    }
}

@media only screen and (min-device-width:300px) and (max-device-width:680px) {
    #NavLogo {
        justify-content: center;
    }

        #NavLogo span {
            display: none;
        }

    #NavText {
        width: 100%
    }

        #NavText button {
            font-size: 25px;
        }

    i {
        font-size: 28px;
    }
}*/

        #Label1 {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            text-align: center;
            align-items: center;
       
        }

        .carding {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        /*    #Label2{
            font-size:30px;
            font-weight:bold;
            text-align:center;
            align-items:center;
            margin-bottom:30px;
            display:flex;
            justify-content:center;
        }*/
        .title {
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            align-items: center;
            margin-bottom: 30px;
            display: flex;
            justify-content: center;
        }

        .book {
            align-items: center;
            margin-top: 30px;
        }
        /*        #Slide {
    font-weight: bold;
    color: black;
    align-items:center;
    text-align:center;
    background-image: url("COVER-1.jpg");
    background-size: cover;
    height: 60vh;
}*/


        .slide {
            position: relative;
        }

            .social{
            display:flex;
            flex-direction:row-reverse;
            justify-content:space-evenly;
           flex-wrap:wrap;
            align-content:center;
            align-self:center;
            align-items:center;
            padding-bottom:0.3rem;
        }
        .inst{
            display:flex;
            flex-direction:row;
            font-size:1rem;
            text-align:center;
            justify-content:center;
        }
        .inst a{
            display:block;
            font-size:1rem;
            margin-right:1rem;

        }
        .aboutinfooter{
            display:flex;
            flex-direction:column;
            color:white;
            
        }
        .aboutinfooter a{
            margin-bottom:0.5rem;
              display:block;
            font-size:1rem;
            margin-right:1rem;
            text-decoration:none;
            color:white;
            text-align:center;
            
        }

        .fa-chevron-right {
            position: absolute;
            right: 9px;
            top: 50%;
            z-index: 2;
        }

        .fa-chevron-left {
            position: absolute;
            left: 9px;
            top: 50%;
        }

        #Button3 {
            align-items: center;
            display: flex;
            justify-content: center;
            border-radius: 5px;
            border: none;
            text-transform: uppercase;
            width: 50px;
        }
        /*.more{
     align-items:center;
    display:flex;
    justify-content:center;
}*/
        .seemore {
            text-align: center;
            border: 1px solid black;
            text-align: center;
            align-items: center;
            height: 480px;
            display: flex;
            justify-content: center;
            padding: 30px;
            position: relative;
        }

            .seemore a {
                text-decoration: none;
                color: black;
                text-transform: uppercase;
            }

            .seemore::before {
                content: "";
                position: absolute;
                left: 0;
                top: 0;
                height: 100%;
                width: 100%;
                background-color: #EEECED;
                opacity: .5;
                z-index: -1;
                display: flex;
                flex-wrap: wrap;
            }

            .seemore a:hover {
                font-weight: bold;
            }
         
        .all {
            font-size: 30px;
        }

        .PRICE {
            font-weight: bold;
            color: gray;
            text-decoration-line: line-through;
        }

        .PRICE1 {
            font-weight: bold;
            color: gray;
        }
        .cart-basket{
 
            display: block;
    position: absolute;
    top: 6px;
    left: 0;
    color: #fff;
    width: 18px;
    height: 18px;
    line-height: 19px;
    border-radius: 50%;
    background-color: #f76d2b;
    text-align: center;
    font-size: 11px;

        }

        }
       /* .bigg{
            width:100vw;
            height:100px;
            background-color:black !important;
           
            color:darkseagreen;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .smallg{
             width:95%;
                     

            height:75px;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .leftg{
            float:left;
            
        }
         .rightg{
            float:right;
            
        }*/

       #Button1{
           display:flex;
           justify-content:center;
           align-items:center;
           text-align:center;
           
       

       }
       .but{
              display:flex;
           justify-content:center;
           align-items:center;
           text-align:center;
          padding:7px 15px 5px 15px;
          border-radius:3px;
          border:none;
          

       }

       .pict{
           margin-top:30px;
       }
/**/
.info a{
    text-decoration:none;
    color :black;
}
 .noth{
           margin:0px 12px 0px 12px;
           font-weight:bold;
           font-size:22px;
           color:black;
       }
       .noth2{
          margin-left:5px;
           font-weight:bold;
           font-size:25px;
           color:crimson;
       }
       .hide2{
           display:none;
           font-size:1px;
       }
        .noth3{
          margin-right:35px;
           font-weight:bold;
           font-size:22px;
           color:crimson;
           text-align:center;
       }
        #logo{
            padding-left:3%;
            margin:12px;
        }
        .araba{
            margin :12px !important;
        }
        #sign{
            margin :12px !important;
        }
        
         #log{
            margin :12px !important;
        }
         .midd{
             margin-top:12px;
             margin-bottom:12px;
         }
        .more {
            margin-top: 17px;
        }
 
       
         #cartTable {
                
  position:absolute;
     display:none;
     width:35%;
     right:20px;
      top:60px;
    background-color:whitesmoke;
    z-index:123;
    border:1px solid black;
}
         .flasher{
      animation: hideAnimation 0s ease-in 1s;
      position:absolute;
     width:30%;
     right:20px;
      top:60px;
         z-index:123;
  animation-fill-mode: forwards;
}

@keyframes hideAnimation {
  to {
    visibility: hidden;
    width: 0;
    height: 0;
  }

}

#carthover:hover table {
    display: revert;
  
 
}
.hedding {
    font-size: 20px;
    color: #ab8181`;
}

.main-section {
    position: absolute;
    left: 50%;
    right: 50%;
    transform: translate(-50%, 5%);
}

.left-side-product-box img {
    width: 100%;
}

.left-side-product-box .sub-img img {
    margin-top: 5px;
    width: 83px;
    height: 100px;
}

.right-side-pro-detail span {
    font-size: 15px;
}

.right-side-pro-detail p {
    font-size: 25px;
    color: #a1a1a1;
}

.right-side-pro-detail .price-pro {
    color: #E45641;
}

.right-side-pro-detail .tag-section {
    font-size: 18px;
    color: #5D4C46;
}

.pro-box-section .pro-box img {
    width: 100%;
    height: 200px;
}

@media (min-width:360px) and (max-width:640px) {
    .pro-box-section .pro-box img {
        height: auto;
    }
}
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <%--/origin--%>
        <div class="">
  <div class="w3-bar w3-light-grey w3-large"  >
    <a href="EXAMPLE.aspx" class="w3-bar-item w3-button w3-hover-red w3-padding-16"><img src="Logo.png" width="50"></a>
    <a href="EXAMPLE.aspx" class="w3-bar-item w3-button w3-hover-red w3-padding-16">PLOTBOUND</a>
    <input type="text"  id="searches" runat="server" class="w3-bar-item w3-input w3-hide-small w3-padding-16 w3-hide-medium" placeholder="Search.."/>
   
             <%-- <div class="input-group">
                  </div>--%>
  <%--<input type="search" id="searches" runat="server" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />--%>
  

       <%--<asp:Label CssClass="h6 midd  noth2 "  ID="Label7" runat="server" Text="Welcome "></asp:Label> <asp:Label CssClass="h6 midd noth"  ID="Label8" runat="server" Text="Label"></asp:Label> <asp:Label CssClass="h6 midd noth3"  ID="Label9" runat="server" Text="Label"></asp:Label>
           <asp:HyperLink ID="prof" CssClass="midd more" NavigateUrl="http://localhost:56508/User%20Profile.aspx"  runat="server">profile</asp:HyperLink>
           <asp:Button ID="Button2" style="height:2rem;  margin-top:0.8rem;margin-left:0.5rem;padding:0;" runat="server" Text="Log Out" CssClass="btn btn-outline-secondary" OnClick="Button2_Click1" />
                         <asp:HyperLink NavigateUrl="http://localhost:56508/signup.aspx"  ID="sign" runat="server"></asp:HyperLink>
                                   <asp:HyperLink NavigateUrl="http://localhost:56508/login.aspx"   ID="log" runat="server"></asp:HyperLink>--%>
   <%-- <a href="#" class="w3-bar-item w3-button w3-red w3-hide-small w3-padding-16 w3-hide-medium">Go</a>--%>
         <button type="button" runat="server" onserverclick="Submit_Click" class=" w3-bar-item w3-button w3-red w3-hide-small w3-padding-16 w3-hide-medium">search</button>
    <a href="http://localhost:56508/About.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium">About</a>
    <a href="http://localhost:56508/contact.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium">Contact</a>
    <a href="http://localhost:56508/allcategories.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium">Categories</a>
    <a href="http://localhost:56508/login.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" runat="server" ID="LOGIN" ><i class="w3-xlarge fa fa-user" id="login"></i> Log In</a>
         <a href="http://localhost:56508/User%20Profile.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" runat="server" ID="pro" visible="false" ><i class="w3-xlarge fa fa-user" id="profile" ></i> profile</a>

       <asp:LinkButton class="nav-link w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" ID="LinkButton1" OnClick="Logout" runat="server" Visible="false"> Log out </asp:LinkButton> 
      <div id="carthover">
        <asp:LinkButton ID="CartButton" runat="server" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right carthover" style="position:relative" OnClick="CartButton_Click1" ><span id="cartCount" class="cart-basket" runat="server">12</span><i class="w3-xlarge fa fas fa-shopping-cart" id="login"></i> Cart </asp:LinkButton>

           <table id="cartTable" runat="server" class="table table-stripped table-hover align-middle "></table>
          <div id="addTocart" runat="server"></div>

      </div>
   <%--<a href="#" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" style="position:relative;"><span id="cartCount" class="cart-basket" runat="server">12</span><i class="w3-xlarge fa fas fa-shopping-cart" id="login"></i> Cart</a>--%>

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-padding-16" onclick="myFunction()">&#9776;</a>
  </div>
          
  <div id="demo" class="w3-bar-block w3-light-grey w3-hide w3-hide-large ">
    <a href="http://localhost:56508/About.aspx" class="w3-bar-item w3-hover-red w3-button">About</a>
    <a href="http://localhost:56508/contact.aspx" class="w3-bar-item w3-hover-red w3-button">Contact</a>
    <a href="http://localhost:56508/allcategories.aspx" class="w3-bar-item w3-hover-red w3-button">Categories</a>
 
    <a href="http://localhost:56508/login.aspx" class="w3-bar-item w3-hover-red w3-button">Log In</a>
    <a href="cart.aspx" class="w3-bar-item w3-hover-red w3-button">Cart</a>
     
  </div>
</div> 


        <div class="container">
    <div class="col-lg-8 border p-3 main-section col-12 bg-white">
        <div class="row hedding m-0 pl-3 pt-0 pb-3">
           
        </div>
        <div class="row m-0">
            <div class="col-lg-4 left-side-product-box pb-3" id="imgContainer" runat="server">
                <img src="http://nicesnippets.com/demo/pd-image1.jpg" class="border p-3">
            
            </div>
            <div class="col-lg-8">
                <div class="right-side-pro-detail border p-3 m-0">
                    <div class="row">
                        <div class="col-lg-12">
                        
                            <p class="m-0 p-0" runat="server" id="itemName"></p>
                        </div>
                        <div class="col-lg-12">
                            <p class="m-0 p-0 price-pro" id="itemPrice" runat="server">$30</p>
                            <hr class="p-0 m-0">
                        </div>
                        <div class="col-lg-12 pt-2">
                            <h5>Product Detail</h5>
                            <span id="itemDetails" runat="server">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris.</span>
                            <hr class="m-0 pt-2 mt-2">
                        </div>
                        <div class="col-lg-12">
                            <p class="tag-section"><strong>Category : </strong><a id="categoryLink" runat="server"></a></p>
                        </div>
                        <div class="col-lg-12">
                            <h6>Quantity :</h6>
                            <input type="number" class="form-control text-center w-100" id="quantityBox" runat="server" value="1" onchange="validator(this)"/>
                        </div>
                       
                        <div class="col-lg-12 mt-3">
                         
                            <div class="row">

    

                                <div class="col-lg-6 pb-2">
                           <asp:Label ID="Label2" Visible="false" runat="server" class="text-danger" style="color:whitesmoke;" >.</asp:Label>

                 <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary w-100" OnClick="LinkButton2_Click">Add To Cart</asp:LinkButton>
 
                                </div>
                                <div class="col-lg-6">
                           <asp:Label ID="Label1" Visible="false" runat="server" class="text-danger" ></asp:Label>
                                    <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-success w-100" OnClick="LinkButton3_Click">View cart</asp:LinkButton>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
       






        

    <div class="container px-4 px-lg-5 my-5">

          <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
 
        <div class="card " >
       <div class="card-body p-4">
 

                         <h4 class="mb-0">Comments</h4>
            <p class="fw-light mb-4 pb-2">Latest Comments section by users</p>
         

 
      </div>
    </div>
  </div>
      </div>
     

    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
   
        <div class="card text-dark" id="commentsSection" runat="server">



      </div>

                     
                <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
 
        <div class="card " >
       <div class="card-body p-4 bg-info">
 

            
                                                       		 

           <div class="input-group mb-1" runat="server">
     
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="write a message..."></asp:TextBox>
  <div class="input-group-append">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
<ContentTemplate>
    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success" >Send <i class="fa-solid fa-paper-plane"></i> </asp:LinkButton>
    <a name="bottom"></a>
</ContentTemplate>
</asp:UpdatePanel>
  
          
  </div>
</div>


</div>

</div>
            </div>                                    
		 </div>	 
    
         
           </div>
 
      </div>

    </div>

  </div>

      </div>
  



  



                 <script>

                      function validator(x){

                          if (x.value < 1 || x.value == "") {
                              x.value = 1
                          }
        }

                     function myFunction() {
                         var x = document.getElementById("demo");
                         if (x.className.indexOf("w3-show") == -1) {
                             x.className += " w3-show";
                         } else {
                             x.className = x.className.replace(" w3-show", "");
                         }
                     }
             function styleRemove() {
                 document.getElementById("cartTable").removeAttribute("style")

             }

                 </script>
     
    </form>




        <script src="example.js"></script>



</body>
</html>
