   M S B A M L   `   `   `  ����B  >Bolnica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Bolnica.ManagerBolnica.Manager  5   	   $    Bolnica.Manager.RenovationView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Bolnica.Manager     5   	     � Title$  RenovationView��5   	   $	��450��6    $	��800��6-   .��5	      � -   5         �Name$ GridRenovation��5	      
������� � ColumnDefinitions 5   
   �� 5      $
��538* �6   �� 5      $	��68* �6   �� 5      $
��195* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$	 DGR��5         
IsReadOnly$
 true��6       SelectionMode$ Single=�5      $��5��6*   $��57,43,227,78q�6;   
�������$��Center=�5      $��Center=�67      AutoGenerateColumns$ False��6Y      	RowHeight$ 30Q�6u   	   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$		 100 6�   $��1q�6�   
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ RoomID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *RoomID+  5       $ Time Renovation��6%    6>   �� *
roomName+5#      �� 5%   
   $��3��6   $��449,40,-254,47q�6$   $��2��6<   .��6M   
Rooms ID6W   �� 5&   
   -   5         ��Name$ tb_id��5&      $��449,72,76,80q�6!   $��3��67   $��2��6K   �� 5)   
   $��3��6   $��449,14,-186,72q�6$   $��2��6<   $��1��6M   .��6Z   Datum zauzimanja6l   (  "System.Windows.Controls.DatePicker  5*   
   -   5          Name$ date_r��5*      $
��Left=�6%   $��
449,40,0,0q�6@   $��1��6T   $	��Top=�6a   $��3��6y   $	��284��6�   $��47��6�   $��2��6�   �� 5,   
   -   5        $��2��5,      $��Create��6   $��537,10,139,34q�6/   $��Center=�6F   $��Center=�6h   
�������$��3��6�   �� 5-   
   -   5        $��3��5-      $��Delete��6   $��537,10,139,34q�6/   $��Center=�6F   $��Center=�6h   
�������$��3��6�   �� 5.   
   -   5        $��4��5.      $
��Back��6   $��537,10,139,34q�6-   $��Center=�6D   $��Center=�6f   
�������$��3��6�   50      53      