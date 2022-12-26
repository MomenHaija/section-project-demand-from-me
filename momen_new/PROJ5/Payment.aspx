<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PROJ5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" /> 

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /> 
 





    <style>
        .body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgb(0, 0, 34);
    font-size: 0.8rem;
}
.card{
    max-width: 1000px;
    margin: 2vh;
}
.card-top{
    padding: 0.7rem 5rem;
}
.card-top a{
    float: left;
    margin-top: 0.7rem;
}
#logo{
    font-family: 'Dancing Script';
    font-weight: bold;
    font-size: 1.6rem;
}
.card-body{
    padding: 0 5rem 5rem 5rem;
    background-image: url("https://i.imgur.com/4bg1e6u.jpg");
    background-size: cover;
    background-repeat: no-repeat;
}
@media(max-width:768px){
    .card-body{
        padding: 0 1rem 1rem 1rem;
        background-image: url("https://i.imgur.com/4bg1e6u.jpg");
        background-size: cover;
        background-repeat: no-repeat;
    }  
    .card-top{
        padding: 0.7rem 1rem;
    }
}
.row{
    margin: 0;
}
.upper{
    padding: 1rem 0;
    justify-content: space-evenly;
}
#three{
    border-radius: 1rem;
        width: 22px;
    height: 22px;
    margin-right:3px;
    border: 1px solid blue;
    text-align: center;
    display: inline-block;
}
#payment{
    margin:0;
    color: blue;
}
.icons{
    margin-left: auto;
}
form span{
    color: rgb(179, 179, 179);
}
form{
    padding: 2vh 0;
}
input{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input:focus::-webkit-input-placeholder
{
      color:transparent;
}
.header{
    font-size: 1.5rem;
}
.left{
    background-color: #ffffff;
    padding: 2vh;   
}
.left img{
    width: 2rem;
}
.left .col-4{
    padding-left: 0;
}
.right .item{
    padding: 0.3rem 0;
}
.right{
    background-color: #ffffff;
    padding: 2vh;
}
.col-8{
    padding: 0 1vh;
}
.lower{
    line-height: 2;
}
.btn{
    background-color: rgb(23, 4, 189);
    border-color: rgb(23, 4, 189);
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin: 4vh 0 1.5vh 0;
    padding: 1.5vh;
    border-radius: 0;
}
.btn:focus{
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none; 
}
.btn:hover{
    color: white;
}
a{
    color: black;
}
a:hover{
    color: black;
    text-decoration: none;
}
input[type=checkbox]{
    width: unset;
    margin-bottom: unset;
}
#cvv{
    background-image: linear-gradient(to left, rgba(255, 255, 255, 0.575) , rgba(255, 255, 255, 0.541)), url("https://img.icons8.com/material-outlined/24/000000/help.png");
    background-repeat: no-repeat;
    background-position-x: 95%;
    background-position-y: center;
} 
#cvv:hover{

}
    </style>
</head>
<body class="body" id="body" runat="server">
    <form id="form1" runat="server">
    <div class="card col-10" id="holder" runat="server">
            <div class="card-top border-bottom text-center">
                 <a href="EXAMPLE.aspx"> Back to shop</a>
          
            </div>
            <div class="card-body">
                <div class="row upper">
                    <span><i class="fa fa-check-circle-o"></i> Shopping bag</span>
                    <span><i class="fa fa-check-circle-o"></i> Order details</span>
                    <span id="payment"><span id="three">3</span>Payment</span>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="left border">
                            <div class="row">
                                <span class="header">Payment</span>
                                <div class="icons">
                                    <img src="https://img.icons8.com/color/48/000000/visa.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/maestro.png"/>
                                </div>
                            </div>
                            <form>
                                <span>Cardholder's name:</span>
                                <input placeholder="Linda Williams" required="required">
                                <span>Card Number:</span>
                                <input placeholder="0125 6780 4567 9909" required="required">
                                <div class="row">
                                    <div class="col-4"><span>Expiry date:</span>
                                        <input placeholder="YY/MM" required="required">
                                    </div>
                                    <div class="col-4" required="required"><span>CVV:</span>
                                        <input id="cvv">
                                    </div>
                                </div>
                           
                            </form>
                        </div>                        
                    </div>
                    <div class="col-md-5">
                        <div class="right border">
                            <div class="header" id="OrderSummary" runat="server">Order Summary</div>
                            
                 
                            <hr>
                            <div id="paymentInfo" runat="server">

                       
                            <div class="row lower">
                                <div class="col text-left">Subtotal</div>
                                <div class="col text-right" runat="server" id="Subtotal"></div>
                            </div>
                            <div class="row lower">
                                <div class="col text-left">Delivery</div>
                                <div class="col text-right">Free</div>
                            </div>
                            <div class="row lower">
                                <div class="col text-left"><b>Total to pay</b></div>
                                <div class="col text-right" id="Totalpay" runat="server" style="left: -16px; top: -699px"><b>$ 46.98</b></div>
                            </div>
                       
                            
                            <asp:Button type="submit" ID="Button" runat="server" class="btn btn-primary btn-block" Text="Place order" OnClick="Pay"></asp:Button>
                            <p class="text-muted text-center">Complimentary Shipping & Returns</p>
                                     </div>
                        </div>
                    </div>
                </div>
            </div>
            
         <div>
        </div>
        </div>
    </form>
</body>
</html>
