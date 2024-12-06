<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sdestoma.aspx.cs" Inherits="Webas.Sdestoma" %>
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
                          <h4>Sukurti destomą dalyką</h4>
                                     </center>
                             </div>
                            </div>
                         <div class="row">
                             <a href="Site1.Master">Site1.Master</a>
                              <div class="col">          
                       <hr>            
                         </div>
                     </div>
               
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Dalyko id</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="dalyko id"> </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="įkelti" />
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                       <label>Dalyko pavadinimas</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="dalyko pavadinimas" > </asp:TextBox>
                                    </div>
             
                                    </div>
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 ">
<br /> <asp:Button class="btn btn-primary" ID="button2" runat="server" Text="Sukurti dalyką" OnClick="button2_Click" />
  <asp:Button class="btn btn-success" ID="button3" runat="server" Text="Atnaujinti dalyką" OnClick="button3_Click" />
 <asp:Button class="btn btn-danger" ID="button4" runat="server" Text="Ištrinti dalyką" OnClick="button4_Click" /><br />
                                                                                                    

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
                          <h4>Dalykai</h4>
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
     SelectCommand="SELECT * FROM [subject]" ProviderName="<%$ ConnectionStrings:dienynasConnectionString3.ProviderName %>"></asp:SqlDataSource>
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

