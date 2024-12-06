<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sgrupe.aspx.cs" Inherits="Webas.Sgrupe" %>
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
                          <h4>Sukurti grupę</h4>
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
                                    <label>Grupės id</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Grupės id"> </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="įkelti" OnClick="button1_Click"/>
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                       <label>Grupės pavadinimas</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Grupės pavadinimas" > </asp:TextBox>
                                    </div>
      
                                    </div>
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 mx-auto">
                                                                                                     
<br /> <asp:Button class="btn btn-primary" ID="button2" runat="server" Text="Sukurti grupę" OnClick="button2_Click" />
  <asp:Button class="btn btn-success" ID="button3" runat="server" Text="Atnaujinti grupę" OnClick="button3_Click" />
 <asp:Button class="btn btn-danger" ID="button4" runat="server" Text="Ištrinti grupę" OnClick="button4_Click" /><br />

   </div>

    </div>

      
                         </div>

                    </div>
                </div>
            <div class="col-6"
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
                          <h4>Grupės</h4>
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
                                    SelectCommand="SELECT * FROM [grupes]" ProviderName="<%$ ConnectionStrings:dienynasConnectionString3.ProviderName %>"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="grupes_id">
                                        <Columns>
                                            <asp:BoundField DataField="grupes_id" HeaderText="grupes_id" ReadOnly="True" SortExpression="grupes_id"></asp:BoundField>
                                            <asp:BoundField DataField="grupes_pav" HeaderText="grupes_pav" SortExpression="grupes_pav"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>          
                     </div>
                        </div>
               
                         </div>

                    </div>
            </div>
                
        </div>
    </div>
</asp:Content>

