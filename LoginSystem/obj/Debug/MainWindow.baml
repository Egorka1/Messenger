   M S B A M L   `   `   `  ����  LoginSystem    LoginSystem.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  	Messenger��5   	    � 
ResizeMode$ NoResize=�6   $	��370��61   $	��500��6>    � WindowStartupLocation$ CenterScreen=�6J   
����·� � Icon$- 'C:\Users\Егор\Desktop\messenger.ico��6�   .��5      � .+�5   
   �� 
�������$��100 30 100 70q�6$    �� CornerRadius$ 12��6;   z�5      �� 5      -   5        	transform��5   "    J� Effect 5
      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 10Q�6#      ShadowDepth$ 5Q�63      Color$ LightSeaGreen��6C   ._�5      �� $��20q�6   $	��Top=�6%   $��Center=�6=   	 �� Orientation$	 Vertical=�6Z   .+�5      �� $��Sign Up��6   
����� �$��25(�6=   $��Center=�6K   � 5      $��0 30 0 0q�6   
 � RowDefinitions
 5      �� 5      $��30 �6(   .+�5      �� $��0��6!   $	 
Horizontal=�6.   .+�5      �    EntryFieldStyle#��[  6   .+�5      �� -   5         ��Name$ tLogin��5   (   $��Login��68   $��30��6E   $	��200��6R   $��18(�6^    �� Padding$ 5 0 0 0q�6l   
�����w�y�6�   ��  �� ElementName$ txtLogin�� �� Path$ Text.IsEmpty�   BooleanToVisibilityConverter �� 	Converter# [ �� 5      -   5         ��Name$ txtLogin��5   &   
�����w�$��0 0 0 1q�6U   $��30��6o   $	��200��6|   $��18(�6�   
������  �� 	MaxLength$ 10��6�   5      �� 5      -   5        $ warning��5   $    � ToolTip$" Incorrect login or password.��65    J� Opacity$ 0Q�6\   $��10 0 0 0q�6h   $ 0 6 0 0q�6z   $	����6�   $��Segoe MDL2 Assets)�6�   
���  ��$��18(�6�   5      5      �� 5      $��0 10 0 0q�6   $	 
Horizontal=�6/   .+�5      � #��[  6   .+�5      G� -   5         G�Name$ txtPassword��5   &   
�����w�$��0 0 0 1q�6X   $��30��6r   $	��200��6   $��18(�6�    G� 	MaxLength$ 15��6�   �� 5      -   5        $ showPass��5   "   $��30��64   $	��200��6A   $��0 0 0 1q�6M   
�����w�
���   �$ 15��6�   $��18(�6�   $y�	Collapsed=�6�   5      �� 5       -   5         ��Name$ passShow��5         eye#��[ 6/   $��9 5 0 0q�6L   $ Show password.��6]   5!      �� 5"      -   5        $��Submit��5"        	subButton#��[ 6*    � Triggers 5#      :� 5$       :� RoutedEvent$ Button.Click��6'   .[�5%      �� .��5&   "   ��  g� FillBehavior$
 Stop=�6-   .��5'   &   W�  �� 
TargetName$ 	transform��66    �� TargetProperty$ Angle�5(   .    W� From$ 4X�5)   .    g� Duration$ 0:0:0.5D�5*   .    W� EasingFunction 5+   *   0  *System.Windows.Media.Animation.ElasticEase  5,   .   7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode$ EaseOut=�6:       Oscillations$  1��5-   2   !   Springiness$! 2Q�5.   2   50   '   51   #   52      53      55      56      57      �� 58   
   -	   5          	regButton#��[ 58      64   59      5:      