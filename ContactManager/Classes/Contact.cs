using System;
using System.Collections.Generic;
using System.Text;

namespace ContactManager.Classes
{
    class Contact
    {
        public string AllContactProperties
        {
            get
            {
                return contactProperties + contactProperties.Replace(" ", "");
            }
        }
        private string contactProperties
        {
            get
            {
                return FirstName + LastName + FullName + PhoneNumberMobile + PhoneNumberPrivate + MailAddress + PostCode + City + Street + StreetNumber + FullAddress;
            }
        }

        public string FullName
        {
            get
            {
                if (LastName == "")
                {
                    return FirstName;
                }
                else if (FirstName == "")
                {
                    return LastName;
                }
                else
                {
                    return $"{LastName}, {FirstName}";
                }
            }
        }
        public string FirstName { get; set; }
        public string LastName { get; set; }


        public string PhoneNumberMobile { get; set; }
        public string PhoneNumberPrivate { get; set; }

        public string MailAddress { get; set; }


        public string FullAddress
        {
            get
            {
                if (PostCode == "" && City == "")
                {
                    return $"{Street} {StreetNumber}";
                }
                else if (Street == "")
                {
                    return $"{PostCode} {City}";
                }
                else
                {
                    return $"{PostCode} {City}, {Street} {StreetNumber} ";
                }
            }
        }
        public string PostCode { get; set; }
        public string City { get; set; }
        public string Street { get; set; }
        public string StreetNumber { get; set; }


        public bool isFavourite { get; set; }
    }
}
