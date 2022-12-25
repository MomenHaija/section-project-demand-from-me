<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staticses.aspx.cs" Inherits="WebApplication3.Staticses" %>
<!DOCTYPE html>
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.3.1/css/all.min.css" rel="stylesheet">
    <style>
        .headerstatics{
            display:flex;
            justify-content:center !important;
        }
    </style>
    <link rel="stylesheet" href="../CSS/staticsis.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main-content">
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      
        <div class="container-fluid">
        <div><h2 class="mb-5 text-white" style="text-align:center;margin-top:1%;font-weight:bold;font-size:24px;">Library Statistics</h2></div>
        <div class="header-body">
          <div class="row">
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                   <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Number of Users</h5>
                      <span class="h2 font-weight-bold mb-0">
                          <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                       <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
            
                    
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Number of orders</h5>
                      <span class="h2 font-weight-bold mb-0">
                          <asp:Label ID="Label6" runat="server" Text=""></asp:Label></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fab fa-first-order"></i>
                      </div>
                    </div>
                  </div>
                 
                 
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Categories numbers</h5>
                      <span class="h2 font-weight-bold mb-0">
                          <asp:Label ID="Label7" runat="server" Text="800"></asp:Label></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                    <i class="fa fa-book" aria-hidden="true"></i>
                      </div>
                    </div>
                  </div>
                  
          
               </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Total Sales</h5>
                      <span class="h2 font-weight-bold mb-0">
                          <asp:Label ID="Label8" runat="server" Text=""></asp:Label></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-comments-dollar"></i>
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
    <!-- Page content -->
  </div>



          


        </div>
    </form>
</body>
</html>
