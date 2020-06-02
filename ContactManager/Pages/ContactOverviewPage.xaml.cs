using ContactManager.Classes;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaktionslogik für ContactOverviewPage.xaml
    /// </summary>
    public partial class ContactOverviewPage : Page
    {
        public ContactOverviewPage()
        {
            InitializeComponent();

            //Setting up Sources and Filter
            ContactOverviewListView.ItemsSource = Classes.ContactManager.AllContactsCollectionView;
            Classes.ContactManager.AllContactsCollectionView.Filter = ContactFilter;
        }


        //Searchbar Logic
        private bool ContactFilter(object contact)
        {
            if (String.IsNullOrEmpty(SearchbarTextBox.Text))
            {
                return true;
            }
            else
            {
                return ((contact as Contact).AllContactProperties.IndexOf(SearchbarTextBox.Text, StringComparison.OrdinalIgnoreCase) >= 0);
            }
        }
        private void SearchbarTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(Classes.ContactManager.AllContactsCollectionView).Refresh();
        }


        //Button Logic
        private void AddSampleButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.ContactManager.AddSampleContacts();
        }

        private void AddNewContactButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.ContactManager.SetUpContactEditor(null, false);
            NavigationService.Navigate(new ContactEditorPage());
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedContact = ContactOverviewListView.SelectedItem as Contact;
            
            if(selectedContact != null)
            {
                Classes.ContactManager.SetUpContactEditor(selectedContact, true);
                NavigationService.Navigate(new ContactEditorPage());
            }
            else
            {
                MessageBox.Show("Please select contact");
            }
            
            
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.ContactManager.DeleteContact(ContactOverviewListView.SelectedItems);
        }

        private void ChangeCategory_Click(object sender, RoutedEventArgs e)
        {

        }


        //Listview Header Logic
        private void ContactOverviewHeader_Click(object sender, RoutedEventArgs e)
        {
            var _clickedColumn = sender as GridViewColumnHeader;
            var _collectionViewToSort = Classes.ContactManager.AllContactsCollectionView;
            Classes.ListViewManager.SortColumnByHeader(_collectionViewToSort, _clickedColumn);
        }

    }


}
