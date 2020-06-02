using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace ContactManager.Classes
{
    class ListViewManager
    {

        public static string PreviouslyClickedColumn { get; set; }
        public static ListSortDirection SortDirection { get; set; }



        public static void SortColumnByHeader(ICollectionView _collectionViewToSort, GridViewColumnHeader _columnToSort)
        {
            string _sortBy = _columnToSort.Tag.ToString();
            bool _sameColumnSelected;

            if (PreviouslyClickedColumn == _sortBy)
            {
                _sameColumnSelected = true;

                _collectionViewToSort.SortDescriptions.Clear();
                ChangeSortDirection(_sameColumnSelected);
                _collectionViewToSort.SortDescriptions.Add(new SortDescription(_sortBy, SortDirection));
            }
            else
            {
                _sameColumnSelected = false;

                _collectionViewToSort.SortDescriptions.Clear();
                ChangeSortDirection(_sameColumnSelected);
                _collectionViewToSort.SortDescriptions.Add(new SortDescription(_sortBy, SortDirection));
            }

            PreviouslyClickedColumn = _sortBy;

        }


        public static void ChangeSortDirection(bool sameColumnSecelted)
        {
            if (sameColumnSecelted)
            {
                if (SortDirection == ListSortDirection.Ascending)
                {
                    SortDirection = ListSortDirection.Descending;
                }
                else
                {
                    SortDirection = ListSortDirection.Ascending;
                }
            }
            else
            {
                SortDirection = ListSortDirection.Ascending;
            }
        }


    }


}
