   M S B A M L   `   `   `  ����   LoginSystem    LoginSystem.ChatsWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$
  Chat��$	��500��$	��600�� � WindowStartupLocation$ CenterScreen=�
����·� � Icon$- 'C:\Users\Егор\Desktop\messenger.ico��.��� .+���  �� Orientation$ 
Horizontal=�.+��� $ Vertical=�$	��150��$��
-100 0 0 0q�
�����������  �� 
TargetType" �� �� Triggers :�  :� RoutedEvent$ 
MouseEnter��[��� .���� .��t�  �� TargetProperty$ Margin� t� From$ 
-100 0 0 0X�		 t� To$	 0 0 0 0X�
 g� DecelerationRatio$	
 0.8Q� g� Duration$ 0:0:0.7D�:� $ 
MouseLeave��[��� .���� .��t� $ Margin�$ 0 0 0 0X�$	 
-100 0 0 0X�$	
 0.5Q�$ 0:0:0.7D�.+���  
  mStack#��[  $��0 10 0 0q�.+��� -    ��Name$ 	msgButton��  mbuttonStyle#��[ $��Messages���� $	����  	mtxtStyle#��[ �� #��[  .+��� -   $ 
infoButton��#��[ $��About���� $	����#��[ �� #��[  .+��� -   $ 
exitButton��#��[ $
��Exit���� $	����#��[ �� $��v.1.0��$��15(�$��-10 310 0 0q�$��Center=�$��Center=�