<%@ Page Title="Generate QR Code Online | Generate Unlimited QR Code" MetaDescription="Free QR Code Generator, Generate Unlimited QR Code, Create different size of qr code and download as image." MetaKeywords="Generate QR Code, qr code generator, create qr code online, free unlimited qr code generator, create and download qr code for free" Language="C#" MasterPageFile="~/main_tools_right.master" AutoEventWireup="true" CodeFile="qr-code-generator.aspx.cs" Inherits="qr_code_generator2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <style>
                    #loadingDiv2 {
                        position: relative;
                        right: 0px;
                        bottom: 0;
                        width: 100%;
                    }

                    #loadingDiv {
                        position: fixed;
                        z-index: 10000;
                        right: 0px;
                        bottom: -20px;
                        width: 100%;
                    }
                </style>

                <style>
                    .load-bar {
                        position: relative;
                        margin-bottom: 20px;
                        width: 100%;
                        height: 10px;
                        background-color: #fdba2c;
                    }

                    .load-bar2 {
                        position: relative;
                        margin-bottom: 20px;
                        width: 100%;
                        height: 5px;
                        background-color: #fdba2c;
                    }

                    .bar {
                        content: "";
                        display: inline;
                        position: absolute;
                        width: 0;
                        height: 100%;
                        left: 50%;
                        text-align: center;
                        border: 1px solid white;
                    }

                        .bar:nth-child(1) {
                            background-color: #da4733;
                            animation: loading 3s linear infinite;
                        }

                        .bar:nth-child(2) {
                            background-color: #3b78e7;
                            animation: loading 3s linear 1s infinite;
                        }

                        .bar:nth-child(3) {
                            background-color: #fdba2c;
                            animation: loading 3s linear 2s infinite;
                        }

                    @keyframes loading {
                        from {
                            left: 50%;
                            width: 0;
                            z-index: 100;
                        }

                        33.3333% {
                            left: 0;
                            width: 100%;
                            z-index: 10;
                        }

                        to {
                            left: 0;
                            width: 100%;
                        }
                    }
                </style>

                <script src='https://www.google.com/recaptcha/api.js'></script>
                <h1 class="text-center">Generate QR Code | Free QR Code Generator</h1>

                <!-- tool panel -->
                <div class="row">
                    <div class="col-md-12 bs-callout bs-callout-success" style="background-image: url(https://www.ranknotebook.com/assets/bg.png); width: 100%; display: inline-block; position: relative; background-size: contain;">
                        <asp:TextBox ID="txtCode" CssClass="form-control" ForeColor="Black" placeholder="Enter text to encode" MaxLength="2500" runat="server"></asp:TextBox>
                        <asp:Panel ID="errorpanel" runat="server" Visible="false" class="col-lg-12">
                            <asp:Label ID="errorlbl" runat="server" ForeColor="Red" Font-Bold="true" Text="errorlbl"></asp:Label>
                        </asp:Panel>
                        <div class="col-lg-12">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <p style="font-size: smaller; font-weight: 100">Please wait...</p>
                                    <div id="loadingDiv2">
                                        <div class="load-bar2">
                                            <div class="bar"></div>
                                            <div class="bar"></div>
                                            <div class="bar"></div>
                                        </div>
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                <ProgressTemplate>
                                    <div id="loadingDiv">
                                        <div class="load-bar">
                                            <div class="bar"></div>
                                            <div class="bar"></div>
                                            <div class="bar"></div>
                                        </div>
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <strong>Select Size:</strong><br />
                                <asp:DropDownList ID="sizeddl" CssClass="form-control" runat="server">
                                    <asp:ListItem>29x29</asp:ListItem>
                                    <asp:ListItem>58x58</asp:ListItem>
                                    <asp:ListItem>87x87</asp:ListItem>
                                    <asp:ListItem>116x116</asp:ListItem>
                                    <asp:ListItem>145x145</asp:ListItem>
                                    <asp:ListItem>174x174</asp:ListItem>
                                    <asp:ListItem>203x203</asp:ListItem>
                                    <asp:ListItem>232x232</asp:ListItem>
                                    <asp:ListItem>261x261</asp:ListItem>
                                    <asp:ListItem>290x290</asp:ListItem>
                                    <asp:ListItem>319x319</asp:ListItem>
                                    <asp:ListItem>348x348</asp:ListItem>
                                    <asp:ListItem>377x377</asp:ListItem>
                                    <asp:ListItem>406x406</asp:ListItem>
                                    <asp:ListItem>435x435</asp:ListItem>
                                    <asp:ListItem>464x464</asp:ListItem>
                                    <asp:ListItem>493x493</asp:ListItem>
                                    <asp:ListItem>522x522</asp:ListItem>
                                    <asp:ListItem>551x551</asp:ListItem>
                                    <asp:ListItem Selected="True">580x580</asp:ListItem>
                                    <asp:ListItem>609x609</asp:ListItem>
                                    <asp:ListItem>638x638</asp:ListItem>
                                    <asp:ListItem>667x667</asp:ListItem>
                                    <asp:ListItem>696x696</asp:ListItem>
                                    <asp:ListItem>725x725</asp:ListItem>
                                    <asp:ListItem>754x754</asp:ListItem>
                                    <asp:ListItem>783x783</asp:ListItem>
                                    <asp:ListItem>812x812</asp:ListItem>
                                    <asp:ListItem>841x841</asp:ListItem>
                                    <asp:ListItem>870x870</asp:ListItem>
                                    <asp:ListItem>899x899</asp:ListItem>
                                    <asp:ListItem>928x928</asp:ListItem>
                                    <asp:ListItem>957x957</asp:ListItem>
                                    <asp:ListItem>986x986</asp:ListItem>
                                    <asp:ListItem>1015x1015</asp:ListItem>
                                    <asp:ListItem>1044x1044</asp:ListItem>
                                    <asp:ListItem>1073x1073</asp:ListItem>
                                    <asp:ListItem>1102x1102</asp:ListItem>
                                    <asp:ListItem>1131x1131</asp:ListItem>
                                    <asp:ListItem>1160x1160</asp:ListItem>
                                    <asp:ListItem>1189x1189</asp:ListItem>
                                    <asp:ListItem>1218x1218</asp:ListItem>
                                    <asp:ListItem>1247x1247</asp:ListItem>
                                    <asp:ListItem>1276x1276</asp:ListItem>
                                    <asp:ListItem>1305x1305</asp:ListItem>
                                    <asp:ListItem>1334x1334</asp:ListItem>
                                    <asp:ListItem>1363x1363</asp:ListItem>
                                    <asp:ListItem>1392x1392</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-6 text-center">
                                <strong>Error Correction Level:</strong><br />
                                <asp:DropDownList CssClass="form-control" ID="errorconnectionlevelddl" runat="server">
                                    <asp:ListItem>H</asp:ListItem>
                                    <asp:ListItem>L</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>Q</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                    </div>

                </div>
                <br />
                <%-- ad code start --%>
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <ins class="adsbygoogle"
                    style="display: block"
                    data-ad-client="ca-pub-2744561477353542"
                    data-ad-slot="1398655778"
                    data-ad-format="auto"
                    data-full-width-responsive="true"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
                <%-- ad code end --%>
                <div class="text-center">
                    <asp:Button ID="btnGenerate" OnClick="btnGenerate_Click" CssClass="btn btn-sm btn-primary" runat="server" Text="Generate" />
                </div>

                <!-- ... End tool panel -->

                <br />

                <!-- output panel -->

                <asp:Panel ID="resultdiv" runat="server" Visible="false" class="box-shaddow">
                    <%--<div class="row">
                    <div class="pricing-tables medium-padding120 bg-border-color">--%>

                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h4>Your Result</h4>
                                </div>
                            </div>
                        </div>

                        <br />
                        <div class="row box-shaddow">
                            <div>
                                <div class="col-lg-12" style="overflow-x: auto;">

                                    <%--total words--%>
                                    <asp:Panel runat="server" class="text-center" ID="qrcode" Visible="true">
                                        <p>Right Click on Image and choose [Save Image As...]</p>
                                        <asp:PlaceHolder ID="plBarCode" runat="server" />
                                    </asp:Panel>
                                    <br />

                                    <%--page source--%>
                                </div>
                            </div>
                        </div>
                        <%--row closed here--%>
                    </div>

                </asp:Panel>
                <!-- End output panel -->
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

    <br />
    <div class="container">
        <div class="row box-shaddow">
            <div class="col-12 text-center">
                <div class="heading">
                    <h3 class="section-title">Try Our Other Relevant Tools</h3>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="services-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
                    <div class="icon fs1">
                        <span class="icon-base64-encode-decode">
                            <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span>
                        </span>
                    </div>
                    <div class="services-content">
                        <h3><a href="https://www.ranknotebook.com/tools/base64-encode-decode">Base64 Encode Decode</a></h3>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="services-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
                    <div class="icon fs1">
                        <span class="icon-md5-encrypt">
                            <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span>
                        </span>
                    </div>
                    <div class="services-content">
                        <h3><a href="https://www.ranknotebook.com/tools/md5-encrypter">MD5 Encrypton</a></h3>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="services-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
                    <div class="icon fs1">
                        <span class="icon-triple-des">
                            <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span>
                        </span>
                    </div>
                    <div class="services-content">
                        <h3><a href="https://www.ranknotebook.com/tools/triple-des-encrypter-decrypter">Triple Des Encryption</a></h3>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="services-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
                    <div class="icon fs1">
                        <span class="icon-html-escape">
                            <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span>
                        </span>
                    </div>
                    <div class="services-content">
                        <h3><a href="https://www.ranknotebook.com/tools/html-escape-unescape">HTML Escape & Unescape</a></h3>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="panel-group" id="acd2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#acd2" href="#coll2">What are QR codes?</a>
                </h4>
            </div>
            <div id="coll2" class="panel-collapse">
                <div class="panel-body">
                    <h2>What are QR codes?</h2>
                    <p>QR codes are referred to as two dimensional codes that can store a large amount of information. These graphics can store up to 3000 characters in a small space. QR codes are widely used in mobile marketing. These are used as a link between social media and websites. Scanning QR code is much easier rather than typing the long web addresses. </p>
                    <p>The information stored in the QR code can never be changed, also it do not expire after certain time. One can scan the QR code with even the older phone’s camera. Nowadays there are enormous applications introduced where people are using a QR code that provides easy and secure payment methods. People often pay for their utilities, by scanning a QR on their mobile phones, or can access any video or a piece of information just by scanning a QR. It’s a step towards digitalization. Scan and have the access to the important information.</p>
                    <p><strong>Generate your own QR Code</strong> with the several features that helps you to get a <strong>customized QR code</strong> in one step with Ranknotebook. </p>
                </div>
            </div>
        </div>
    </div>

    <div class="panel-group" id="acd1">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#acd1" href="#coll1">QR Code Generator</a>
                </h4>
            </div>
            <div id="coll1" class="panel-collapse">
                <div class="panel-body">
                    <h2>QR Code Generator, Generate free QR Code</h2>
                    <p>Ranknotebook is providing you a <strong>QR code for free</strong>. One can generate the code on its own. A QR code is a two dimensional barcode consist of black and white dots which stores information.</p>
                    <p>
                        You can type text, URL’s and the code will be generated automatically as per your entered text. To generate your QR code free on Ranknotebook, just my entering the required text or URL’s. We have given several pixel options, according to one’s requirement the user can generate. Also, with the same we are providing you four error correction levels namely ‘L, M, Q, H’ with the Error correction capability of approximately 7%, 15%, 25%, and 30% respectively. QR code posses an error correction capability to restore data if it gets dirty or damaged. 
To select the appropriate and exact error correction level several factors such as its size, environmental factors need to be kept in mind. Usually level ‘M’ is selected.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <br />
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Find us on internet using below keywords</a>
                </h4>
            </div>
            <div id="collapse1" class="panel-collapse">
                <div class="panel-body">
                    <p><strong>qr code</strong>, <strong>qr code maker</strong>, <strong>qr code generator</strong>, <strong>how to generate qr code</strong>, <strong>how to create a qr code</strong>, <strong>qr code image</strong></p>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
