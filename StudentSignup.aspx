<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentSignup.aspx.cs" Inherits="Webas.StudentSignup" %>
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
                          <h4>Pridėti studentą</h4>
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
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Vardas Pavardė"> </asp:TextBox>
                                          </div>
                                      </div>
                                <div class="col-md-6">
                                       <label>Gimimo data</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="Date"> </asp:TextBox>
                                    </div>
                                    </div>
                           <div class="row">
       <div class="col-md-6">
           <label>Tel. nr.</label>
           <div class="form-group">
             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Telefono numeris" TextMode="Number"> </asp:TextBox>
                 </div>
             </div>
       <div class="col-md-6">
              <label>El.Paštas</label>
               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="El.Paštas" TextMode="Email"> </asp:TextBox>
           </div>
                               <div class="col-md-4">
                                   <label>Grupė</label>
                                   <asp:DropDownList class="form-control" ID="DropDownlist" runat="server" OnSelectedIndexChanged="DropDownlist_SelectedIndexChanged">

  
  </asp:DropDownList>
           </div>
          


    </div>
                                            <div class="row">
<div class="col-md-6">
    <label>Prisijungimo id.</label>
    <div class="form-group">
      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Prsijungimo ID"> </asp:TextBox>
          </div>
      </div>
<div class="col-md-6">
       <label>Slaptažodis</label>
        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Slaptažodis" > </asp:TextBox>
    </div>
                                                  <div class="d-grid gap-2 ">
 <br />
                                                      <asp:Button class="btn btn-success" ID="button1" runat="server" Text="Sukurti profilį" OnClick="button1_Click" />
                                                      <asp:Button class="btn btn-danger" ID="button2" runat="server" Text="Ištrinti profilį" OnClick="button2_Click" />
                                       
  
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
                          <h4>Studentai</h4>
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
                                    SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
                      <div class="col">          
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>          
                     </div>
                        </div>
               
                         </div>

                    </div>
            </div>
                
        </div>
            
    
</asp:Content>
