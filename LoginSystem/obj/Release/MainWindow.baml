   M S B A M L   `   `   `  ����   LoginSystem    LoginSystem.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  	Messenger��$	��370��$	��500�� � WindowStartupLocation$ CenterScreen=�
����·� � Icon$- 'C:\Users\Егор\Desktop\messenger.ico��.��� .+��� 
�������$��100 30 100 70q� �� CornerRadius$ 12��._��� $��20q�$	��Top=�$��Center=� �� Orientation$ Vertical=�.+��� $��Sign Up��
����� �$��25(�$��Center=�� $��0 30 0 0q� � RowDefinitions �� $��30 �.+�� $��0��   EntryFieldStyle#��[  .+��� $��Login��$��30��$	��200��$��18(� �� Padding$ 5 0 0 0q�
�����w�y���  �� ElementName$ txtLogin�� �� Path$ Text.IsEmpty�   BooleanToVisibilityConverter	 �� 	Converter#	 [ �� -   
 ��Name$
 txtLogin��$��30��$	��200��$��18(�
������ G� -    G�Name$ txtPassword��$��0 10 0 0q�$��30��$	��200��$��18(��� -   $��0 25 0 0q�$	��150��$��35��$��Submit��$��16(�
�������
��� ���$��0q�$��Center=�$��Center=��� -   $��130 280 130 30q� � Cursor$
 Hand�� � ToolTip$  Click to create an account��$��Don't have an account?��
����iA�$��15(�$��0q�
����·�$��Center=�$��Center=�