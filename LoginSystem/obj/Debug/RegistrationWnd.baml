   M S B A M L   `   `   `  ����  LoginSystem!    LoginSystem.RegistrationWnd   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Registration��5   	    � 
ResizeMode$ NoResize=�6   $	��350��64   $	��500��6A    � WindowStartupLocation$ CenterScreen=�6M   
����·� � Icon$- 'C:\Users\Егор\Desktop\messenger.ico��6�   .��5      � .+�5   
   �� 
�������$��100 30 100 30q�6$    �� CornerRadius$ 12��6;    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 10Q�6#      ShadowDepth$ 5Q�63      Color$ LightSeaGreen��6C   ._�5
      �� $��20q�6   $	��Top=�6%   $��Center=�6=   	 �� Orientation$	 Vertical=�6Z   .+�5      �� $��Registration��6   
����� �$��25(�6B   $��Center=�6P   �� 5      $��Enter your login:��6   $��5 10 0 0q�65   
��� �|�$��15(�6^   �� 5      $��0��6   $	 
Horizontal=�6*   $��5 0 0 0q�6C   .+�5      �� -   5        
 ��Name$
 	txtLoginR��5      $��0 0 0 1q�61   
�����w�$��30��6h   $	��200��6u   $��0 3 0 0q�6�   $��18(�6�   
������  �� 	MaxLength$ 10��6�   �� 5      -   5         ��Name$ warningR��5        J� Opacity$ 0Q�62   $��10 0 0 0q�6>    �� Padding$ 0 8 0 0q�6P    � ToolTip$, &Enter your login and password, please.��6b   $	����6�   $��Segoe MDL2 Assets)�6�   
���  ��$��18(�6�   5      �� 5      $��Enter your password:��6   $��5 10 0 0q�68   
��� �|�$��15(�6a   �� 5      $��5 0 0 0q�6   $	 
Horizontal=�6.   .+�5      �    EntryFieldStyle#��[  6   .+�5      G� -   5         G�Name$ txtPasswordR��5   &   $��0 0 0 1q�6<   
�����w�$��30��6s   $	��200��6�   $��18(�6�    G� 	MaxLength$ 15��6�   �� 5      -   5        $
 	showPassR��5   "   $��30��65   $	��200��6B   $��0 0 0 1q�6N   
�����w�
���   �$ 15��6�   $��18(�6�   $y�	Collapsed=�6�   5      �� 5      -   5         ��Name$ 	passShowR��5        eye#��[ 60   $ Show password.��6M   $��9 0 0 0q�6f   5      �� 5      -   5          
confButton#��[ 5      6=   5      5      5      5      