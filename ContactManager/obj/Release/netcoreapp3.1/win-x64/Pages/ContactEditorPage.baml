   M S B A M L   `   `   `  ���� I  EContactManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ContactManager.PagesContactManager.Pages  ,    &ContactManager.Pages.ContactEditorPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:ContactManager.Pages       N� Title$  ContactEditorPage��.��� 
������� � RowDefinitions �� $��* ��� $��60 �.+��  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+�� $��0��.+��� $��10q�$��RightToLeft=�$��17(�$
��Bold"�$
��Left=� d� 	IsChecked �� *isFavourite+ �� Mode$ OneWay=�.��Favorite Contact� $��1�� �� ��  � ColumnDefinitions �� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��2��$��20(�$
��Bold"�Name�� $��1��$��0��$��20,10q�.+��� Firstname:*�� -    ��Name$ FirstnameTextBox��$	��200������ *	FirstName+$ OneWay=��� $��1��$��1��$��20,10q�.+��� 
Lastname:*�� -   $ LastnameTextBox��$	��200������ *
LastName+$ OneWay=�� $��2�� �� �� ��  �� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��2��$��20(�$
��Bold"�Contact Information�� $��1��$��0��$��20,10q�.+��� Phonenumber Mobile:�� -   $ PhoneNumberMobileTextBox��$	��200������ *PhoneNumberMobile+$ OneWay=��� $��1��$��1��$��20,10q�.+��� Phonenumber Privat:*�� -   $ PhoneNumberPrivateTextBox��$	��200������ *PhoneNumberPrivate+$ OneWay=��� $��2��$��0��$��2��$��20,10q�.+��� Mail Address:*�� -   $ MailAddressTextBox��$	��300������ *MailAddress+$ OneWay=�� $��3�� �� �� ��  �� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��2��$��20(�$
��Bold"�	Address�� $��1��$��0��$��20,10q�.+��� 
Postcode:*�� -   $ PostcodeTextBox��$	��100������ *
PostCode+$ OneWay=��� $��1��$��1��$��20,10q�.+��� City:*�� -   $ CityTextBox��$	��200������ *City+$ OneWay=��� $��2��$��0��$��20,10q�.+��� 
Street:*�� -   $ StreetTextBox��$	��300������ *Street+$ OneWay=��� $��2��$��1��$��20,10q�.+��� Street Number:*�� -	   $ StreetNumberTextBox��$��50������ *StreetNumber+$ OneWay=��� $��1��$��Center=� �� Orientation$ 
Horizontal=�.+��� -
    ��Name$ ConfirmButton��$��20,10q�.��	Confirm�� -   $ CancleButton��$��20,10q�.��Cancle