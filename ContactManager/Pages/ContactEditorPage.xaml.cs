using ContactManager.Classes;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ContactManager.Pages
{
    /// <summary>
    /// Interaktionslogik für ContactEditorPage.xaml
    /// </summary>
    public partial class ContactEditorPage : Page
    {
        public static bool isInEditMode;

        public ContactEditorPage()
        {
            InitializeComponent();

            //Setting Up DataContext
            this.DataContext = Classes.ContactManager.EditorSampleContact;
        }

        private void ConfirmButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Contact contactToAdd = new Contact
            {
                FirstName = FirstnameTextBox.Text,
                LastName = LastnameTextBox.Text,
                PhoneNumberMobile = PhoneNumberMobileTextBox.Text,
                PhoneNumberPrivate = PhoneNumberPrivateTextBox.Text,
                MailAddress = MailAddressTextBox.Text,
                PostCode = PostcodeTextBox.Text,
                City = CityTextBox.Text,
                Street = StreetTextBox.Text,
                StreetNumber = StreetNumberTextBox.Text
            };

            Classes.ContactManager.AddOrEditContact(contactToAdd);

            NavigationService.Navigate(new Pages.ContactOverviewPage());
        }

        private void CancleButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.ContactOverviewPage());
        }
    }
}
