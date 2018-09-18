using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoBL;

namespace WebApp2Capas
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            validacionBL validaFecha = new validacionBL();
            lblfecha.Text= validaFecha.validaFecha(DateTime.Parse(txtFecha.Text));
        }

        protected void btnValidaNumeroPrimo_Click(object sender, EventArgs e)
        {
            validacionBL validanumeroprimo = new validacionBL();
            lblnumeroprimo.Text = validanumeroprimo.validaNumeroPrimo(int.Parse(txtNumeroPrimo.Text));
        }

        protected void btnValidaLetrasRepetidas_Click(object sender, EventArgs e)
        {
            validacionBL numvocalesrepetidas = new validacionBL();
            lblvocalesrepetidas.Text = numvocalesrepetidas.vocalesRepetidas(txtPalabra.Text);
        }

        protected void btnValidaEmail_Click(object sender, EventArgs e)
        {
            validacionBL formatoemail = new validacionBL();
            lblemail.Text = formatoemail.validaemail(txtEmail.Text);
        }
    }
}