   M S B A M L   `   `   `  ����I  EContactManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ContactManager.PagesContactManager.Pages  5      .    (ContactManager.Pages.ContactOverviewPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:ContactManager.Pages     5        N� Title$  ContactOverviewPage��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��6   $��0��5      $��2��5      
����d�.+�5      �� $��0��6   $��0��5      $��2��5        �� Orientation$ 
Horizontal=�5!      $��Right=�5"      .+�5$      �� -   5         ��Name$ SearchbarTextBox��5$      $	��300��5&      $��Center=�5'      $��16(�5(      �� 5+      -   5         ��Name$ AddSampleButton��5+      $
��30,0q�5-      .��6'   
Lore Ipsum63   �� 5/      -   5        $ AddNewContactButton��5/       � ToolTip$ Add new contact��51      $	��5,0q�52      ���	#00000000$��0q�54      .��55      �� $��/Images/AddContact.png��6   56      �� 57      -   5        $ 
EditButton��57      $ Edit selected contact��59      $	��5,0q�5:      ���	#00000000$��0q�5<      .��5=      �� $��/Images/Edit.png��6   5>      �� 5?      -   5        $ DeleteButton��5?      $ Delete selected contact��5A      $	��5,0q�5B      ���	#00000000$��0q�5D      .��5E      �� $��/Images/Delete.png��6   5F      5G      5H      �� 5K   
   $��0��6   $��1��5L      $
��3,20q�5M      $
��Auto=�5N      .��5O      �� -   5         ��Name$! ContactCategoryItemsControl��5O      ��5P      �� 5Q      .R�5R      �� $��3q�5S   !   $��20,10q�5T   !   
����İ�$��15(�5V   !   $
��Bold"�5W   !   ��5R   !   �� *Name+5W   !   5X      5Z      5[      �� 5^   
   -   5         ��Name$ ContactOverviewListView��5^      $��1��5_      $��1��5`      $��20q�5a      	 �� View	 5b      �� 5c      .P�5f      �� 
 �� CellTemplate
 5g      �� 5h      .R�5i   "   ��  d� 	IsChecked 6+   �� *isFavourite+5j      ��5l      �� 5m      -   5        
 � Tag$ isFavourite��5m   3   ��5o   "   �� 5p   &   $��/Images/Favourite.png��6,   $��17��5q   ,   5s      5u      �� 5x       �� DisplayMemberBinding 6%   �� *
FullName+��5y      �� 5z      -	   5        $
��Name��5z   3   $ FullName��5{   3   5|   3   5~      �� 5�       6%   �� *PhoneNumberPrivate+��5�      �� 5�      -
   5        $��Phone��5�   3   $ PhoneNumberPrivate��5�   3   5�   3   5�      �� 5�       6%   �� *MailAddress+��5�      �� 5�      -   5        $��Mail Address��5�   3   $ 
MailAdress��5�   3   5�   3   5�      �� 5�       6%   �� *FullAddress+��5�      �� 5�      -   5        $��Address��5�   3   $ FullAddress��5�   3   5�   3   5�      5�      5�      5�      5�      