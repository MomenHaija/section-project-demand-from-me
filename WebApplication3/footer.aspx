<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="footer.aspx.cs" Inherits="WebApplication3.footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
          <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet" />
    <style>
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

    </style>
        
</head>
<body>
   <footer id="footer1" style="background-color: #808080">

            <div class="social">
                
             <div class="copyright">
                       <p id="rights" style=" color: white">© 2020 Copyright:All Rights Reserved</p>
               
                <div class="inst">
                    <a class="icons" href="https://web.facebook.com/musab.alghannam.37/" target="_blank" style="text-decoration: none; color: white;"><i  class="fab fa-facebook-f fa-2x"></i></a>
                    <a class="icons" href="https://www.linkedin.com/in/musab-ghannam-0a8284253/" target="_blank" style="text-decoration: none; color: white;"><i class="fab fa-linkedin-in fa-2x"></i></a>
                    <a class="icons" href="https://www.instagram.com/musab_ghannam/" target="_blank" style="text-decoration: none; color: white;"><i class="fab fa-instagram fa-2x" aria-hidden="true"></i></a>
                </div>
            </div>
             <div class="aboutinfooter">
                <h3>ABOUT</h3>
                <a href="#">ABOUT US</a>
                <a href="#">BOOKS</a>
                 
            </div>
                <div claa="contact" style="display:flex;flex-direction:column">
                    <p style="color: white;font-size:16px"><i class="fa fa-phone" aria-hidden="true">+96278095488</i></p>
                    <p  style="color: white;font-size:16px;"><i class="fa fa-map-marker"  aria-hidden="true"></i>Ammman-Jordan:7th Circle near Jet- opposite to Arab BanK</p>
                </div>
               
            
            </div>
            

        </footer>
</body>
</html>
