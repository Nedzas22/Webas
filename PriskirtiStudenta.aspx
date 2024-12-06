<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PriskirtiStudenta.aspx.cs" Inherits="Webas.PriskirtiStudenta" %>
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
                          <h4>Priskirti Studentą</h4>
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
                                     <asp:DropDownList class="form-control" ID="DropDownlist" runat="server">
                                         <asp:ListItem Text="A" Value="a"></asp:ListItem>
                                         <asp:ListItem Text="B" Value="b"></asp:ListItem>
                                     </asp:DropDownList>
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                       <label>Studentas</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="prisijungimas" > </asp:TextBox>
                                    </div>
             
                                    </div>
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 ">
<br /> <asp:Button class="btn btn-primary" ID="button2" runat="server" Text="Priskirti Studentą" OnClick="button2_Click" />
  <asp:Button class="btn btn-success" ID="button3" runat="server" Text="Atnaujinti" OnClick="button3_Click" />
 <asp:Button class="btn btn-danger" ID="button4" runat="server" Text="Ištrinti" OnClick="button4_Click" /><br />

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
    SelectCommand="SELECT [prisijungimas], [vp] FROM [student]"></asp:SqlDataSource>
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
