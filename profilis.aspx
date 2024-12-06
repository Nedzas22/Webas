<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profilis.aspx.cs" Inherits="Webas.profilis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script type="text/javascript">
$(document).ready(function () {
    $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
});

       </script>
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="class-body">
                      <div class="row">
                          <div class="col">
                              <center>
                                  <img width="100px" src="images/avataras.jpg" />
                              </center>
                      </div>
                    </div>
                          <div class="row">
                             <div class="col">
                                      <center>
                          <h4>Studento profilis</h4>
                                     </center>
                             </div>
                            </div>
                         <div class="row">
                              <div class="col">          
                       <hr>            
                         </div>
                     </div>
               
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Vardas Pavardė</label>
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Vardas Pavardė" ReadOnly="True"> </asp:TextBox>
                                          </div>
                                      </div>
                                <div class="col-md-6">
                                       <label>Gimimo data</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="Date" ReadOnly="True"> </asp:TextBox>
                                    </div>
                                    </div>
                           <div class="row">
       <div class="col-md-6">
           <label>Tel. nr.</label>
           <div class="form-group">
             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Telefono numeris"  ReadOnly="True"> </asp:TextBox>
                 </div>
             </div>
       <div class="col-md-6">
              <label>El.Paštas</label>
               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="El.Paštas" TextMode="Email" ReadOnly="True"> </asp:TextBox>
           </div>
           </div>
                                            <div class="row">
<div class="col-md-4">
    <label>Grupė</label>
    <div class="form-group">
   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Grupė"  ReadOnly="True"> </asp:TextBox>
          </div>
      </div>


    </div>
                                            <div class="row">
<div class="col-md-6">
    <label>Prisijungimo id.</label>
    <div class="form-group">
      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Prsijungimo ID" ReadOnly="True"> </asp:TextBox>
          </div>
      </div>
<div class="col-md-6">
       <label>Slaptažodis</label>
        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Slaptažodis" ReadOnly="True"> </asp:TextBox>
    </div>
    </div>

      
                         </div>

                    </div>
                </div>
            <div class="col-7">
                                <div class="card">
                    <div class="class-body">
                      <div class="row">
                          <div class="col">
                              <center>
                                  <img width="100px" src="images/vikologo.jpg" />
                              </center>
                      </div>
                    </div>
                          <div class="row">
                             <div class="col">
                                      <center>
                          <h4>Studento pažymiai</h4>
                                     </center>
                             </div>
                            </div>
                         <div class="row">
                              <div class="col">          
                       <hr>            
                         </div>
                     </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:dienynasConnectionString3 %>"
    SelectCommand="SELECT * FROM [pazimys]"></asp:SqlDataSource>
                      <div class="col">          
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>          
                     </div>
                        </div>
               
                         </div>

                    </div>
            </div>
                
        </div>
    </div>
</asp:Content>
