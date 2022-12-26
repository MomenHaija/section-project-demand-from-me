<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="PROJ5.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
              <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /> 
    
    
    <%--https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css--%>
      <link href="css/shraideh.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Nunito:ital,wght@0,500;1,500&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet"/>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="new.css" />
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
 
    
    <link href="css/responsive.css" rel="stylesheet" />
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="css/plugins.css" rel="stylesheet" />
      <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /> 

    
    <style>
  #tableContainer{
                position:relative;
            }
                 .carthover table {
                
    display: none;
    position:absolute;
     width:400px;
     right:0;
    top:40px;
    background-color:whitesmoke;
    z-index:123;
    border:1px solid black;
}

.carthover:hover table {
    display: revert;
  
 
}
.logout{
    position:absolute;
    right:-50px;
  
}
#logo{
    width:100px;
    position:absolute;
    left:10px;
}
.dropdown:hover>.dropdown-menu {
  display: block;
}

.dropdown>.dropdown-toggle:active {
 
    pointer-events: none;
}

 


 


input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
        display: none;
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

  #carthover:hover table {
    display: revert;
  
 
}

        </style>





    </head>

<body>


    
 
    


        <form id="form1" runat="server">
              
     
            










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
         <a href="http://localhost:56508/User%20Profile.aspx" class="w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" runat="server" ID="pro" visible="false" ><i class="w3-xlarge fa fa-user" id="login" ></i> profile</a>

      <%--<asp:LinkButton class="nav-link w3-bar-item w3-button w3-hover-red w3-hide-small w3-padding-16 w3-hide-medium w3-right" ID="LinkButton1" OnClick="Logout" runat="server" Visible="false"> Log out </asp:LinkButton>--%>
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









                                          
                                
                        
            <hr />







            <main class="main-content " >
  

                <!-- Start cart Content Inner -->
                <div class="cart-content-inner">
                    <div class="container">
                        <div class="row">
                            <!-- Start Cart Details -->
                            <div class="cart-view-table col-12 col-sm-12 col-lg-9 sidebar-left">
                               

                                <!-- Start Cart Table -->
                                <div class="table-content table-responsive">
                                    <table class="table table-bordered border-0 table-hover" >
                                        <thead>
                                            <tr >
                                                <th class="text-center">Image</th>
                                                <th class="text-center text-sm-left">Product Name</th>
                                                <th class="text-center">Price</th>
                                                <th class="text-center">Qty</th>
                                                <th class="text-center">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody  id="tableCheckout" runat="server">
                                           
                                           
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End Cart Table -->
                                <!-- Start Cart Action Button -->
                                <div class="cart-table-action clearfix">
          
                                    <asp:LinkButton class ="btn btn-secondary pull-left" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Update Cart</asp:LinkButton>
                                 
                                    <a href="EXAMPLE.aspx" class="btn btn-secondary pull-right">Continue Shopping</a>
                                </div>
                                <!-- End Cart Action Button -->
                               
                            </div>
                            <!-- End Cart Details -->

                            <!-- Start Cart Sidebar -->
                            <div class="cart-view-summary col-12 col-sm-12 col-lg-3 sidebar sidebar-right">
                              
                                    <!-- Start Cart Note -->
                                   
                                    <!-- End Cart Note -->
                                    <!-- Start Cart Order Summary -->
                                    <div class="cart-order-summary summa">
                                        <h3 class="order-summary-title">Order Summary</h3>
                                    </div>
                                    <!-- End Cart Order Summary -->
                                    <!-- Start Cart Sub Total -->
                                    <div class="cart-subtotal clearfix mb-3">
                                   
                                        <p class="subtle-title m-0 pull-left text-uppercase">Subtotal</p>
                                        <p class="sabtotal m-1 pull-right " id="subtotal32"></p>
                                    </div>
                                    <!-- End Cart Sub Total -->
                                    <!-- Start Cart Shipping -->
                                    <p class="cart-shipping font-13">Shipping & taxes Calculated at checkout</p>
                                    <!-- End Cart Shipping -->

                                    <!-- Start Cart Agree Checkmark -->
                                    <div class="form-group form-check cart-agree-check">
                                        <input runat="server" type="checkbox"   class="form-check-input" id="agreecheck" required="required" />
                                        <label class="form-check-label ml-3" for="agree-check"> I agree with the terms and conditions.</label>
                                    </div>
                                    <!-- End Cart Agree Checkmark -->
                                    <!-- Start Cart Checkout Button -->
                                    <div class="cart-checkout">



                                        <asp:Button ID="Proceed"  class="btn btn-primary btn-block" runat="server" Text="Proceed to checkout" type="submit" OnClick="Proceed_Click"/>


                                     
                                    </div>
                                    <!-- End Cart Checkout Button -->
                   
                                <!-- Start Checkout Card -->
                                <div class="checkout-card">
                                    <div class="ssl-safe clearfix mb-3">
                                        <img class="img-fluid lazyload float-left" src="pic/ssl-certificate.png" alt="image" title="Secure SSL certificate" />
                                        <img class="img-fluid lazyload float-left" src="pic/safe-checkout.png" alt="image" title="Granted safe checkout" />
                                    </div>
                                    <img class="img-fluid lazyload" src="pic/checkout-card.png" alt="image" title="Checkout Card" />
                                </div>
                                <!-- End Checkout Card -->
                            </div>
                            <!-- End Cart Sidebar -->
                        </div>
                    </div>
                </div>
                <!-- End cart Content Inner -->
            </main>
           

            
           

           
        
             

<asp:HiddenField ID="hdnfldCurrentDateTime" runat="server" />  
    </form>
                      <script runat="server">


</script>
    <script src="https://kit.fontawesome.com/84df3b83c8.js" crossorigin="anonymous"></script>
    <script>
        subChanger()

        function myFunction() {
            var x = document.getElementById("demo");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function deleter(x) {
           let id = `deleter-${x.split("-")[1]}`
            let rowId = `row-${x.split("-")[1]}`
            console.log(id)
            let b = document.getElementById(id)
            console.log(b)
            b.checked = true
          
           document.getElementById(rowId).remove();
     
            return false
        }


     
        function subChanger() {

        
        let qtyBoxes = document.getElementsByClassName("subtotal1")
      
        let subtotal = document.getElementById("subtotal32");
        let subtotalCounter = 0;
        for (let i = 0; i < qtyBoxes.length; i++) {
            
            subtotalCounter += parseInt(qtyBoxes[i].innerText);
            console.log(subtotalCounter);
        }

        subtotal.innerHTML = "JD" + " " + subtotalCounter;
        }
        function increment(x) {
           
            let id = x.split('-')
 
            document.getElementById(`quantityBox-${id[1]}`).value = parseInt(document.getElementById(`quantityBox-${id[1]}`).value) + 1
          
            document.getElementById(`totalPrice-${id[1]}`).innerText = (parseInt(document.getElementById(`quantityBox-${id[1]}`).value) * parseInt(document.getElementById(`price-${id[1]}`).innerText))
            subChanger()
        }
 



        function decrement(x) {
            let id = x.split('-')
            if (document.getElementById(`quantityBox-${id[1]}`).value > 1) {
                document.getElementById(`quantityBox-${id[1]}`).value = parseInt(document.getElementById(`quantityBox-${id[1]}`).value) - 1
                document.getElementById(`totalPrice-${id[1]}`).innerText = (parseInt(document.getElementById(`quantityBox-${id[1]}`).value) * parseInt(document.getElementById(`price-${id[1]}`).innerText))
                subChanger()

            }
 
        }
    </script>
</body>
</html>
