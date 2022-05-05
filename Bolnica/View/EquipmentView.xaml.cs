﻿using Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Bolnica.Manager
{
    /// <summary>
    /// Interaction logic for EquipmentView.xaml
    /// </summary>
    /// 
    public partial class EquipmentView : Window
    {
        EquipmentController equipmentController = new EquipmentController();
        RoomsController roomsController = new RoomsController();

        public EquipmentView()
        {
            InitializeComponent();

            DGE.ItemsSource = equipmentController.ReadAll();
            //cbox_e.ItemsSource = equipmentController.ReadAll();
            //cbox_et.ItemsSource = Enum.GetValues(typeof(EquipmentType));
            // cbox.ItemsSource = equipmentController.ReadAll();
            //cbox.ItemsSource = roomsController.GetAll();
            //  cbox_e.ItemsSource = equipmentController.ReadAll();


            cbox_et.ItemsSource = Enum.GetValues(typeof(EquipmentType));
            cbox_e.ItemsSource = equipmentController.ReadAll();
            cbox.ItemsSource = roomsController.GetAll();
            cbox.DisplayMemberPath=("RoomID");





            /*PITANJA:
            - sta treba upisati u ovu funkciju ovde za item source -- combobox i dgr
            - zahtev za renovaciju? nisam bas najjasnije razumela to -- poseban prozor za move
            - prikazz i cini mi se da je to to */


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String id = (String)cbox_e.SelectedItem;
            EquipmentType et = (EquipmentType)cbox_et.SelectedItem;
            String roomID = (String)cbox.SelectedItem;
            Equipment eq = new Equipment(id,et, roomID);
            equipmentController.Create(eq);
            DGE.Items.Refresh();


        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            String id = (String)cbox_e.SelectedItem;
            equipmentController.Delete(id);
            DGE.Items.Refresh();

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
          
            MainWindowManager mainWindowManager = new MainWindowManager();
            mainWindowManager.Show();
            this.Close();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            RenovationView renovationView = new RenovationView();
            renovationView.Show();
            
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            //da li da vreme ovde napravim kao piker i onda da odabiram odatle ili moze kao datepicker??
            //mozda je combo bolji??
        }
    }
}
