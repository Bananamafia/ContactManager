using ContactManager.Pages;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using static ContactManager.Pages.ContactEditorPage;

namespace ContactManager.Classes
{
    class ContactManager
    {
        public static ObservableCollection<Contact> AllContacts = new ObservableCollection<Contact>();
        public static ICollectionView AllContactsCollectionView = CollectionViewSource.GetDefaultView(AllContacts);

        public static Contact EditorSampleContact = new Contact();

        private static bool isInEditMode;


        //Functions
        public static void AddSampleContacts()
        {
            AllContacts.Add(new Contact { FirstName = "Hans", LastName = "Wurst", PhoneNumberPrivate = "+49 123 568321", MailAddress = "HansdieWurst@mail.de", Street = "Langestraße", StreetNumber = "987", City = "Karlsruhe", PostCode = "76135", isFavourite = true });
            AllContacts.Add(new Contact { FirstName = "Thomas", LastName = "Müller", PhoneNumberPrivate = "+49 987 568321", MailAddress = "Thomas.Müller@mail.com", Street = "Kurze Straße", StreetNumber = "1", City = "Karlsruhe", PostCode = "76135" });
            AllContacts.Add(new Contact { FirstName = "Chicken", LastName = "Wing", PhoneNumberPrivate = "+49 654 568321", MailAddress = "CrispyChick@mailing.com", Street = "Gockelburg", StreetNumber = "56", City = "Karlsruhe", PostCode = "76135" });
            AllContacts.Add(new Contact { FirstName = "Benjamin", LastName = "Blümchen", PhoneNumberPrivate = "+49 321 568321", MailAddress = "Blümchen@ZooNeustadt.com", Street = "Turmbergstraße", StreetNumber = "3", City = "Karlsruhe", PostCode = "76135", isFavourite = true });
            AllContacts.Add(new Contact { FirstName = "Bibi", LastName = "Blocksberg", PhoneNumberPrivate = "+49 789 568321", MailAddress = "Kartoffelbrei@hexhex.com", Street = "Walpurgis Straße", StreetNumber = "66", City = "Karlsruhe", PostCode = "76135" });
            AllContacts.Add(new Contact { FirstName = "Arthur", LastName = "Bösewicht", PhoneNumberPrivate = "+49 111 568321", MailAddress = "streng@geheim.de", Street = "Düstergasse", StreetNumber = "666", City = "Karlsruhe", PostCode = "76135" });
        }

        public static void SetUpContactEditor(Contact selectedContact, bool editMode)
        {
            EditorSampleContact = selectedContact;
            isInEditMode = editMode;
        }
        public static void AddOrEditContact(Contact contactToAdd)
        {
            AllContacts.Add(contactToAdd);

            if (isInEditMode)
            {
                AllContacts.Remove(EditorSampleContact);
            }
        }
        public static void DeleteContact(IList selectedContacts)
        {
            List<Contact> contactsToDelete = new List<Contact>();

            foreach (Contact selected in selectedContacts)
            {
                contactsToDelete.Add(selected);
            }
            foreach (Contact toDelete in contactsToDelete)
            {
                AllContacts.Remove(toDelete);
            }

            contactsToDelete.Clear();
        }

    }


}
