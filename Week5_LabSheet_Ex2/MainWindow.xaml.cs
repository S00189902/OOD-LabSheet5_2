using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Week5_LabSheet_Ex2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Model1Container db = new Model1Container();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var query = from a in db.Bands
                        orderby a.Name
                        select a.Name;

            lbxBands.ItemsSource = query.ToList();
        }

        private void LbxBands_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int sel = Convert.ToInt32(lbxBands.SelectedValue);

            var query = from a in db.Albums
                        where a.BandId1 == sel
                        orderby a.Name
                        select a.Name;
            LbxAlbums.ItemsSource = query.ToList();
                        
                        
                        
        }
    }
}
