   M S B A M L   `   `   `  ����B  >Bolnica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Bolnica.ManagerBolnica.Manager  5      #    Bolnica.Manager.EquipmentView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:Bolnica.Manager     5        � Title$  EquipmentView��5	      .��5      � -   5         �Name$ GridEquipment��5      
������� � ColumnDefinitions 5   
   �� 5      $
��262* �6   �� 5      $	��46* �6   �� 5      $	��87* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$	 DGE��5         
IsReadOnly$
 true��6       SelectionMode$ Single=�5      $��5��6*   $��59,53,90,60q�6;   
�������$��Center=�5      $��Center=�67      AutoGenerateColumns$ False��6Y      	RowHeight$ 30Q�6u   	   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$		 100 6�   $��1q�6�   
   Columns
 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$ EquipmentID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *id+  5"      $ Equipment Type��6%    6=   �� *equipmentType+  5#      $ RoomID��6%    66   �� *roomID+  5$      $
 Date��6%    64   �� *roomID+5'      �� 5)   
   $��2��6   $��21,43,-357,44q�6$   $��2��6;   $��1��6L   .��6\   Equipment ID6j   �� 5*   
   -   5         ��Name$ cbox_e��5*      $	��164��6#   $
��Left=�6/   $��
21,74,0,75q�6J   $��2��6^    J� RenderTransformOrigin$ 0.294,0.837&�6o   $��2��6�   $��1��6�   5,      �� 5-   
   $��2��6   $��21,25,-357,61q�6$   $��2��6;   $��1��6L   $��1��6Y   .��6i   Equipment Type6y   �� 5.   
   -   5        $��cbox_et��5.      $	��164��6"   $
��Left=�6.   $��
21,62,0,86q�6I   $��1��6]   $��2��6j   $ 0.294,0.837&�6{   $��2��6�   $��1��6�   5/      �� 50   
   -   5        $
 cbox��50      $	��164��6!   $
��Left=�6-   $��
15,37,0,23q�6H   $��2��6\   $ 0.294,0.837&�6i   $��2��6�   $��1��6�   52      �� 56   
   $��2��6   $��21,10,-297,76q�6$   $��2��6;   $��2��6L   $��1��6Y   .��6i   
Rooms ID6s   �� 58   
   $��2��6   $��21,4,-289,83q�6$   $��3��6:   $��1��6G   $��2��6W   .��6h   Datum zauzimanja6z   (  "System.Windows.Controls.DatePicker  59   
   -   5          Name$ date_r��59      $
��Left=�6%   $��	21,40,0,0q�6@   $��3��6S   $	��Top=�6`   $��2��6x   $	��171��6�   $��47��6�   $��1��6�   �� 5<   
   -   5        $��Create��5<      $��100,19,371,44q�6"   $��Center=�69   $��Center=�6[   
�������6�   �� 5=   
   -   5        $��Delete��5=      $��305,18,160,45q�6"   $��Center=�69   $��Center=�6[   
�������$ -4.361,-5.179&�6�   �� 5>   
   -	   5        $
��Back��5>      $��87,44,32,23q�6    $��Center=�65   $��Center=�6W   
�������$ -0.382,0.811&�6�   $��2��6�   $��4��6�   �� 5?   
   -
   5        $��
Renovation��5?      $
��Left=�6&   $��	46,40,0,0q�6A   $	��Top=�6T   $��29��6l   $��72��6x   $ 0.46,-0.077&�6�   $��4��6�   $��1��6�   $��2��6�   �� 5@   
   -   5        $
��Move��5@      $��43,87,166,62q�6    $��Center=�66   $��Center=�6X   
�������$��1��6�   $��2��6�   $��2��6�   $��3��6�   5B      5C      