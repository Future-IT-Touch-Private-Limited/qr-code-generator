using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRCoder;
using System.IO;
using System.Drawing;
using Newtonsoft.Json.Linq;
using System.Net;
using System.Collections.Specialized;

public partial class qr_code_generator2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        try
        {
            //ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "loadCaptcha", "grecaptcha.render('recaptcha', {'sitekey': '" + System.Configuration.ConfigurationManager.AppSettings["site-key"] + "' });", true);
            resultdiv.Visible = false;
            errorpanel.Visible = false;
            errorlbl.Text = "";
            //string EncodedResponse = Request.Form["g-recaptcha-response"];
            //string recaptchRespone = recaptchaPost(EncodedResponse);
            //dynamic json = JObject.Parse(recaptchRespone);
            //if (json.success == true)
            //{
            if (txtCode.Text.Trim() == "")
            {
                errorpanel.Visible = true;
                errorlbl.Text = "Please Enter some text to Encode";
                resultdiv.Visible = false;
                return;
            }
            errorpanel.Visible = false;
            errorlbl.Text = "";

            string code = txtCode.Text;
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            if (errorconnectionlevelddl.SelectedIndex == 0)
            {
                QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.H);
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = qrCode.GetGraphic(sizeddl.SelectedIndex + 1))
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                        imgBarCode.CssClass = "img-thumbnail";
                    }
                    plBarCode.Controls.Add(imgBarCode);
                    resultdiv.Visible = true;
                    resultdiv.Focus();
                }
            }
            if (errorconnectionlevelddl.SelectedIndex == 1)
            {
                QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.M);
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = qrCode.GetGraphic(sizeddl.SelectedIndex + 1))
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    }
                    plBarCode.Controls.Add(imgBarCode);
                    resultdiv.Visible = true;
                    resultdiv.Focus();
                }
            }
            if (errorconnectionlevelddl.SelectedIndex == 2)
            {
                QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.L);
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = qrCode.GetGraphic(sizeddl.SelectedIndex + 1))
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    }
                    plBarCode.Controls.Add(imgBarCode);
                    resultdiv.Visible = true;
                    resultdiv.Focus();
                }
            }
            if (errorconnectionlevelddl.SelectedIndex == 3)
            {
                QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = qrCode.GetGraphic(sizeddl.SelectedIndex + 1))
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    }
                    plBarCode.Controls.Add(imgBarCode);
                    resultdiv.Visible = true;
                    resultdiv.Focus();
                }
            }
            plBarCode.Focus();
            //}
            //else
            //{
            //    errorpanel.Visible = true;
            //    errorlbl.Text = "Please prove that you are not a robot.";
            //}

        }
        catch (Exception ex)
        {
            errorlbl.Text = "Error";
            errorpanel.Visible = true;
        }
    }
}