   M S B A M L   `   `   `  ���� I  EContactManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ContactManager.PagesContactManager.Pages  .    (ContactManager.Pages.ContactOverviewPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:ContactManager.Pages       N� Title$  ContactOverviewPage��.���  � RowDefinitions �� $��30 ��� $��* � � ColumnDefinitions �� $
��Auto ��� $��* �.+�� $��0��$��0��$��2��
����d�.+��� $��0��$��0��$��2�� �� Orientation$ 
Horizontal=�$��Right=�.+��� -    ��Name$ SearchbarTextBox��$	��300��$��Center=�$��16(��� -    ��Name$ AddSampleButton��$
��30,0q�.��
Lore Ipsum�� -   $ AddNewContactButton�� � ToolTip$ Add new contact��$	��5,0q����	#00000000$��0q�.���� $��/Images/AddContact.png���� -   $ 
EditButton��$ Edit selected contact��$	��5,0q����	#00000000$��0q�.���� $��/Images/Edit.png���� -   $ DeleteButton��$ Delete selected contact��$	��5,0q����	#00000000$��0q�.���� $��/Images/Delete.png���� $��0��$��1��$
��3,20q�$
��Auto=�.���� -    ��Name$! ContactCategoryItemsControl������ .R��� $��3q�$��20,10q�
����İ�$��15(�$
��Bold"����� *Name+�� -    ��Name$ ContactOverviewListView��$��1��$��1��$��20q�	 �� View	 �� .P��� 
 �� CellTemplate
 �� .R���  d� 	IsChecked �� *isFavourite+���� -   
 � Tag$ isFavourite������ $��/Images/Favourite.png��$��17����  �� DisplayMemberBinding �� *
FullName+���� -	   $
��Name��$ FullName����  �� *PhoneNumberPrivate+���� -
   $��Phone��$ PhoneNumberPrivate����  �� *MailAddress+���� -   $��Mail Address��$ 
MailAdress����  �� *FullAddress+���� -   $��Address��$ FullAddress��