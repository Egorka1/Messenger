using System;
using System.Windows;

namespace LoginSystem
{
    public sealed partial class ChatsWindow : Window
    {
        public ChatsWindow()
        {
            InitializeComponent();
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Set_Click(object sender, RoutedEventArgs e)
        {
            frame.Source = new Uri("PageSettings.xaml", UriKind.RelativeOrAbsolute);
        }

        private void Out_Click(object sender, RoutedEventArgs e)
        {
            Visibility = Visibility.Collapsed;
            Application.Current.MainWindow = new MainWindow();
            Application.Current.MainWindow.Visibility = Visibility.Visible;
            Application.Current.MainWindow.Closed += (sender1, e1) => Application.Current.Shutdown();
        }

        private void Msg_Click(object sender, RoutedEventArgs e)
        {
            frame.Source = new Uri("PageMessage.xaml", UriKind.RelativeOrAbsolute);
        }
    }
}