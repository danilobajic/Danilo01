   M S B A M L   `   `   `  ����B  >Bolnica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Bolnica.ViewBolnica.View  5   	       Bolnica.View.PatientView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Bolnica.View     5   	     � Title$  PatientView��5   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66   .��5	      � 
����·� � ColumnDefinitions 5   
   �� 5      $
��638* �6   �� 5      $
��205* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ GridDataPatientView��5         
IsReadOnly$
 true��6U      SelectionMode$ Single=�5      $��4��6*   $��20,25,130,0q�6;   
�������$��Center=�5      $��Center=�67      AutoGenerateColumns$ False��6Y   ��5   0   �� *Appointments+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 AppointmentID��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6<   �� *AppointmentID+  5       $	 	DocotorID��6%   
 68   �� *	DocotorID+  5!      $	 Patient��6%   
 66   �� *	Patient+  5"      $
	 Date��6%   
 63   �� *Date+  5#      $	 	TimeStart��6%   
 68   �� *Time+  5$      $	 TimeEnd��6%   
 66   �� *	TimeEnd+  5%      $	 
RoomNumber��6%   
 69   �� *
RoomNumber+5*      �� 5,   
   -   5        $��1��5,      $��0��6!   $��Create Appointment��6.   $��34.6,22,36.2,22q�6K   $��Center=�6d   $��Center=�6�   
�������6�   �� 5-   
   -   5        $��1��5-      $��1��6!   $��Update Appointment��6.   $��34.6,22,36.2,22q�6L   $��Center=�6e   $��Center=�6�   
�������6�   �� 5.   
   -   5        $��1��5.      $��2��6!   $��Cancel Appointment��6.   $��34.6,22,36.2,22q�6L   $��Center=�6e   $��Center=�6�   
�������6�   �� 5/   
   -   5        $��1��5/      $��3��6!   $
��Back��6.   $��34.6,22,36.2,22q�6>   $��Center=�6W   $��Center=�6y   
�������6�   5<      5=      