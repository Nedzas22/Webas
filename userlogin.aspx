<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Webas.userlogin" %>
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
                          <h3>PRISIJUNGIMAS</h3>
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

                                
                                       <div class="d-grid gap-2">
                                      <br /> 
                                         
                                          <asp:Button class="btn btn-primary" ID="button1" runat="server" Text="Prisijungti kaip studentui" OnClick="button1_Click" />
                                           <asp:Button class="btn btn-success" ID="button2" runat="server" Text="Prsijungti kaip destytojui" OnClick="button2_Click" />
                                     </div>
                         </div>
                    </div>
                </div>
            </div>
                  <br /> <a href="pagrindinis.aspx"><< Atgal į pagrindinį puslapį</a><br /><br />
        </div>
    </div>
</asp:Content>
