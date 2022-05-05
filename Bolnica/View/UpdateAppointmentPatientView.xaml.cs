﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Model;
using Service;

namespace Bolnica.View
{
    /// <summary>
    /// Interaction logic for UpdateAppointmentPatientView.xaml
    /// </summary>
    public partial class UpdateAppointmentPatientView : Window
    {
        public String ID = null;
        public UpdateAppointmentPatientView(Appointment appointment)
        {
            InitializeComponent();
            ID = appointment.AppointmentID;
            date.SelectedDate = appointment.Date;
            time.Text = appointment.TimeStart.ToString();
            // time.Text = appointment.TimeStart.ToString();
        }

        private void Button_Click(object sender, RoutedEventArgs e) ///OVDE KUCAS IZMENE 
        {

            AppointmentService appointmentService = new AppointmentService();
            // AppointmentController appointmentController = new AppointmentController();

            DateTime? date = this.date.SelectedDate;
            String format = null;

            if (date.HasValue)
            {
                format = date.Value.ToString("dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            }
            String Time = time.Text;

            // appointmentService.Update(ID,  date.Value, time.Text);


            appointmentService.Update2(ID, date.Value);

            //  appointmentController.Update2(ID, date.Value);

            this.Close();



        }


        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
