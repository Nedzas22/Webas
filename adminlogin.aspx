<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Webas.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="class-body">
                      <div class="row">
                          <div class="col">
                              <center>
                                  <img width="150px" src="images/avataras.jpg" />
                              </center>
                      </div>
                    </div>
                          <div class="row">
                             <div class="col">
                                      <center>
                          <h3>ADMIN</h3>
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
                                    <label>Prisijungimo ID</label>
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Prisijungimo ID"> </asp:TextBox>
                                       <br /> <label>Slaptažodis</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Slaptažodis" TextMode="Password"> </asp:TextBox>

                                    </div>

                                
                                       <div class="d-grid gap-2 col-6 mx-auto">
                                      <br /><asp:Button class="btn btn-primary" ID="button1" runat="server" Text="Prisijungti" OnClick="button1_Click" />
                                      
</div>
                         </div>
                    </div>
                </div>
            </div>
                  <br /> <a href="pagrindinis.aspx"><< Atgal į pagrindinį puslapį</a><br /><br />
        </div>
    </div>
        </div>
</asp:Content>
