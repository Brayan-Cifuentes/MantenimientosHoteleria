using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MantenimientosHoteleria
{
    public partial class frmReservacion : Form
    {
        public frmReservacion()
        {
            InitializeComponent();
            

            //Inicializacion
            TextBox[] alias = navegador1.funAsignandoTexts(this);
            navegador1.funAsignarAliasVista(alias, "reservacion", "hotelSanCarlos");
            navegador1.funAsignarSalidadVista(this);

            //combobox
            navegador1.funLlenarComboControl(cbxCliente, "cliente", "pkid", "nombre", "estatus");
            navegador1.funLlenarComboControl(cbxHabitacion, "habitacion", "idHabitacion", "idHabitacion", "estatus");
            


            //Dar de baja 
            navegador1.campoEstado = "estatus";

            //ayuda 
            navegador1.idAplicacion = "1011";

            //ejecucion de ayuda
            //navegador1.tablaAyuda = "Aplicacion";
            //navegador1.campoAyuda = "pkId";

            //asociacion con reporte
            navegador1.funReportesVista("ruta", "idAplicacion", "Reporte");

            //tabla datagridview
            navegador1.pideGrid(this.dgvReservacion);
            navegador1.llenaTabla();
            navegador1.pedirRef(this);

            //ocualtando textbox de apoyo 
            txtIdCliente.Visible = false;
            txtIdHabitacion.Visible = false;
            txtFechaInicio.Visible = false;
            txtFechaFin.Visible = false;
            txtEstatus.Visible = false;
        }

        private void radioButton1_MouseClick(object sender, MouseEventArgs e)
        {
            navegador1.funCambioEstatusRBVista(txtEstatus, radioButton1, "A");
        }

        private void radioButton2_MouseClick(object sender, MouseEventArgs e)
        {
            navegador1.funCambioEstatusRBVista(txtEstatus, radioButton2, "I");
        }

        private void txtEstatus_TextChanged(object sender, EventArgs e)
        {
            navegador1.funSetearRBVista(radioButton1, radioButton2, txtEstatus);
        }

        private void dtpFechaInicio_ValueChanged(object sender, EventArgs e)
        {
            navegador1.funDPTextBoxVista(dtpFechaInicio, txtFechaInicio);
        }

        private void dtpFechaFin_ValueChanged(object sender, EventArgs e)
        {
            navegador1.funDPTextBoxVista(dtpFechaFin, txtFechaFin);
        }

        private void txtFechaInicio_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextBoxDPTVista(dtpFechaInicio, txtFechaInicio);
            navegador1.funDPTextBoxVista(dtpFechaInicio, txtFechaInicio);
        }

        private void txtFechaFin_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextBoxDPTVista(dtpFechaFin, txtFechaFin);
            navegador1.funDPTextBoxVista(dtpFechaFin, txtFechaFin);
        }

        private void cbxCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cbxCliente, txtIdCliente);
        }

        private void cbxHabitacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cbxHabitacion, txtIdHabitacion);
        }

        private void txtIdCliente_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cbxCliente, txtIdCliente);
        }

        private void txtIdHabitacion_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cbxHabitacion, txtIdHabitacion);
         
        }

        private void dgvReservacion_SelectionChanged(object sender, EventArgs e)
        {
            navegador1.funSeleccionarDTVista(dgvReservacion);
        }

        private void frmReservacion_Load(object sender, EventArgs e)
        {

        }

        private void txtTipoHabitacion_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
