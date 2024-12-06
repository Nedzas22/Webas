<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PriskirtiDalyka.aspx.cs" Inherits="Webas.PriskirtiDalyka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     });

     </script>
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 ">
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
                          <h4>Priskirti dalyką grupei</h4>
                                     </center>
                             </div>
                            </div>
                         <div class="row">
                              <div class="col">          
                       <hr>            
                         </div>
                     </div>
               
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Grupė</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                                                    
                               <asp:DropDownList class="form-control" ID="DropDownlist1" runat="server">
    <asp:ListItem Text="A" Value="a"></asp:ListItem>
    <asp:ListItem Text="B" Value="b"></asp:ListItem>
</asp:DropDownList>
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                                                      <label>Dalykas</label>
                               <asp:DropDownList class="form-control" ID="DropDownlist" runat="server">
    <asp:ListItem Text="A" Value="a"></asp:ListItem>
    <asp:ListItem Text="B" Value="b"></asp:ListItem>
</asp:DropDownList>
                                    </div>
             
                                    </div>
                           <br /> <label>Paskaitos pavadinimas</label>
                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Paskaitos pavadinimas"> </asp:TextBox>
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 ">
<br /> <asp:Button class="btn btn-success" ID="button2" runat="server" Text="Sukurti paskaitą" OnClick="button2_Click" />
 <asp:Button class="btn btn-danger" ID="button4" runat="server" Text="Ištrinti paskaitą" OnClick="button4_Click" /><br />

   </div>

    </div>

      
                         </div>

                    </div>
                </div>
            <div class="col-6">
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
                          <h4>Paskaitos</h4>
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
                                    SelectCommand="SELECT * FROM [paskaitoss]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>          
                     </div>
                        </div>
               
                         </div>

                    </div>
            </div>
                
        </div>
    </div>
</asp:Content>