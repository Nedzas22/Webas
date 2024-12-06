<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pazymiai.aspx.cs" Inherits="Webas.pazymiai" %>
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
                          <h4>Įvertinimų sistema</h4>
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
                                    <label>Mokinio ID</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Studento ID"> </asp:TextBox>
                                             <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="įkelti" OnClick="Button1_Click1" />
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                       <label>Įvertinimas</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Ivertinimas" OnTextChanged="TextBox3_TextChanged"> </asp:TextBox>
                                    </div>
                                <div class="row"></div>
                                <div class="col-md-6">
                                          <label>Studentas</label>
                                 <div class="form-group">
      <div class="input-group">
        
          <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Studento Vardas Pavarde" ReadOnly="True"> </asp:TextBox>
          </div></div>
                                    </div>
                               
                                                  <div class="col-md-6">
                                    <label>Paskaita</label>
  
                                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Paskaita" OnTextChanged="TextBox2_TextChanged" ReadOnly="True"> </asp:TextBox>
    </div>
                                </div>
                    
                         
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 ">
<br /> <asp:Button class="btn btn-primary" ID="button2" runat="server" Text="Įrašyti įvertinimą" OnClick="button2_Click" />
  <asp:Button class="btn btn-success" ID="button3" runat="server" Text="Atnaujinti įvertinimą" OnClick="button3_Click" />
 <asp:Button class="btn btn-danger" ID="button4" runat="server" Text="Ištrinti įvertinimą" OnClick="button4_Click" /><br />

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
                          <h4>Mokinių sąrašas</h4>
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
    
               <div class="col-12">
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
              <h4>įvertinimų sąrašas</h4>
                         </center>
                 </div>
                </div>
             <div class="row">
                  <div class="col">          
           <hr>            
             </div>
         </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:dienynasConnectionString3 %>"
                        SelectCommand="SELECT * FROM [pazimyss]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" 
                            DataSourceID="SqlDataSource2"></asp:GridView>          
         </div>
            </div>
    
</div>
   </div>

                    </div>
            </div>
                
        </div>
    </div>
</asp:Content>

