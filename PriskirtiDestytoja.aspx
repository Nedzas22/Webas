<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PriskirtiDestytoja.aspx.cs" Inherits="Webas.PriskirtiDestytoja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                          <h4>Priskirti dėstytoją</h4>
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
                                    <label>Dalyko id</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="dalyko id"> </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="įkelti" />
                                              </div>
                                          </div>
                                      </div>
                                <div class="col-md-8">
                                       <label>Dėstytojas</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Dėstytojas" > </asp:TextBox>
                                    </div>
             
                                    </div>
                           
                                            <div class="row">

                                                                                                 <div class="d-grid gap-2 ">
<br /><button class="btn btn-primary" type="button">Sukurti</button>
 <button1 class="btn btn-success" type="button">Atnaujinti</button1>
 <button2 class="btn btn-danger" type="button">Ištrinti</button2><br />

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
