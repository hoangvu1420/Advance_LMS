   M S B A M L   `   `   `  ����C  ?Test_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Test_WPF.ViewTest_WPF.View  5   	   7 clr-namespace:Test_WPF.ViewModelTest_WPF.ViewModel  5   	   A%clr-namespace:Test_WPF.CustomControlsTest_WPF.CustomControls  5   	       Test_WPF.View.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Test_WPF.View     5   	   6	viewModel clr-namespace:Test_WPF.ViewModel     5   	   @customcontrols%clr-namespace:Test_WPF.CustomControls     5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5	   	   -   5          � Title$  LoginWindow��5   	   $	��600��5   	   $	��800��5   	    � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	   
������  � WindowStartupLocation$ CenterScreen=�5   	    � Icon$ /Images/LMS.ico��5   	    � 	Resources 5         CustomTextBoxStyle �� 
TargetType �� Property �� Value   BooleanToVisibilityConverter��%|   &	        &	 U     �� 5   
   " ��6+   .�5      ��  �@��
CaretBrush
 �����6+   5      �� 5   
   6'   5      	 � DataContext	 5      '   !Test_WPF.ViewModel.LoginViewModel  5   
   y�5"      �� 5#   
   
 �� Path$
 IsLoginVisible�5$       �� Mode$ TwoWay=�5%       �� 	Converter# [ 5&      .��5)      ��  �� CornerRadius$ 15��6   ��5*   
   �� 5+       �� ImageSource$ /Images/Library.jpg��6    j� Stretch$
 None=�5,      ._�5/   
   �� $��3,3,3,3q�50      $ 15��51       J� Opacity$	 0.9Q�52      ��54      �� 55        BorderColor1 �� Color# [ 6"   6J   ��58      �� 59       �� 
StartPoint$	 1,1&�6&    �� EndPoint$	 1,0&�67   .��5:      �   BackgroundColor1 � Color# [ 6#    � Offset$ 0Q�6M   � 5;        BackgroundColor2# [ 6#   $ 0.723Q�6M   5<      ._�5?      � -   5         �Name$ MainGrid��5?       � RowDefinitions 5@      �� 5A      $��35 �6$   �� 5B      .+�5E      � -   5        $ 	NestdGrid��5E      $��0��6*   $��2��67    � ColumnDefinitions 5F      �� 5G      $��* �6+   �� 5H      $��30 �6+   �� 5I      $��30 �6+   �� 5J      $��30 �6+   .+�5M      �� -   5         ��Name$ btnMinimize��5N      $��1��5O      $��0,0,0,4q�5P      $��27��5Q      $��23��5R      $��0q�5S       � Cursor$
 Hand��5T      ��5V      �� 5W      " ��6$   .�5X   "   ��  � ��  ButtonColor1# [ 6?    �� Triggers 5Y   "   P� 5Z   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5[   *   ��  � �� �	#FFCFCFCF6G   5\   '   5^      ��5`      �� 5a       �� 
TargetType" ��6.   .R�5b   "   � .+�5c   &   �� #��z��6-   $ 5��5d   )   �� 5e   &   $��Center=�67   $��Center=�5f   #   5g   #   5h      ��5j      �� 5k       �� Orientation$ 
Horizontal=�5l      .+�5m   "   "  FontAwesome.WPF.ImageAwesome  $	��Top=�5n   !   $��Center=�5o   !   $��10��5p   !   $��10��5q   !       Icon$  WindowMinimize=�5r   !   !   
Foreground
! �   �5s   !   5t      5v      �� 5x      -   5        $ btnMaximize��5y      $��2��5z      $��0,0,0,4q�5{      $��27��5|      $��23��5}      $��0q�5~      $
 Hand��5      ��5�      �� 5�      " ��6$   .�5�   "   ��  � ��# [ 6?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �	#FFCFCFCF6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   � .+�5�   &   �� #��z��6-   $ 5��5�   )   �� 5�   &   $��Center=�67   $��Center=�5�   #   5�   #   5�      ��5�      �� 5�      $ 
Horizontal=�5�      .+�5�   "     -   5        "  Name$" btnMaximizeIcon��5�   !   $	��Top=�5�   !   $��Center=�5�   !   $��12��5�   !   $��12��5�   !   $  WindowMaximize=�5�   !   
! �   �5�   !   5�      5�      �� 5�      -   5        $ btnClose��5�      $��3��5�      $��0,0,0,4q�5�      $��27��5�      $��23��5�      $��0q�5�      $
 Hand��5�      ��5�      �� 5�      " ��6$   .�5�   "   ��  � ��# [ 6?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �	#FFCFCFCF6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   � .+�5�   &   �� #��z��6-   $ 5��5�   )   �� 5�   &   $��Center=�67   $��Center=�5�   #   5�   #   5�      ��5�      �� 5�      $ 
Horizontal=�5�      .+�5�   "     $	��Top=�5�   !   $��Center=�5�   !   $��10��5�   !   $��10��5�   !   $  Close=�5�   !   
! �   �5�   !   5�      5�      5�      �� 5�      -   5        # ��Name$# panel1��5�      $	��370��5�      $
��auto��5�      $��1��5�      $��1��5�      .+�5�      �� $��/Images/LMS1.png��5�      $	��Top=�5�      $��0,0,0,0q�5�      $	��200��5�      $	��200��5�      �� 5�      -	   5        $ ��Name$$ lblTitle��5�      $	��Top=�5�      $��Center=�5�      $��
0,-20,0,20q�5�      $��25(�5�      
�������$��
Montserrat)�5�      $��Library Management System��5�      �� 5�      -
   5        $$ lblUsername��5�      $
��Left=�5�      $��30,0,0,0q�5�      $��15(�5�      
�������$
��Play)�5�      $��Username��5�      �� 5�      -   5        % ��Name$% txtUsername��5�      #��[  5�      $��Center=�5�      $��0,0,0,0q�5�      $	��300��5�      $��25��5�      $��15(�5�      
�������$��
Montserrat)�5�      $��0,0,0,2q�5�      $��25,0,0,0q�5�      ��5�      �� *
Username+.��5�   (   ��5�      �� 5�      $ /Images/user.png��6)   $ Uniform=�5�   %   & j� 
AlignmentX$
& Left=�5�   %   .��5�   .   5      �� 5     -   5        $$ lblPassword��5     $��15(�5     $
��Left=�5     $��30,5,0,0q�5     
�������$
��Play)�5     $��Password��5	     1   +Test_WPF.CustomControls.BindablePasswordBox  5     $��25��5     $	��300��5     '   Password' 5     �� *
Password+$ TwoWay=�( �� UpdateSourceTrigger$( PropertyChanged=�5     �� 5     $��25��5     $	��300��5       
TextColor2#��[ 5     $��13(�5     $
��Play)�5     $��Medium"�5     $
��Wrap=�5     $��0,5,0,0q�5     ��5     �� *ErrorMessage+5     �� 5     -   5        $ btnLogin��5     $	��100��5     $��35��5      $��15(�5!     
���   �$��3q�5#     $
��Play)�5$     $��DemiBold"�5%     $��0q�5&     $��0,20,0,0q�5'     $
 Hand��5(     $��Login��5)     ��5     �� *LoginCommand+��5*     �� 5+     " ��6$   .�5,  "   ��  � ��# [ 6?    5-  "   P� 5.  &    �@J�IsMouseOver$
 True��6E   . �5/  *   ��  � �� �	#FFCFCFCF6G   50  '   52     ��54     �� 55     " ��6.   .R�56  "   � .+�57  &   �� #��z��6-   $ 10��58  )   �� 59  &   $��Center=�67   $��Center=�5:  3   5;  #   5<     5>     5?     5B     5C     5D     5E     