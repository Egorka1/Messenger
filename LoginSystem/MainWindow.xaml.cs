using System;
using System.Windows;
using System.Windows.Media;
using System.Data;
using MySql.Data.MySqlClient;

namespace LoginSystem
{
    public sealed partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Loaded += (sender1, e1) =>
            {
                txtLogin.Focus();
            };
            passShow.PreviewMouseLeftButtonDown += (sender1, e1) =>
            {
                txtPassword.Visibility = Visibility.Collapsed;
                showPass.Visibility = Visibility.Visible;
                showPass.Text = txtPassword.Password;
            };
            passShow.PreviewMouseLeftButtonUp += (sender1, e1) =>
            {
                txtPassword.Visibility = Visibility.Visible;
                showPass.Visibility = Visibility.Collapsed;
                txtPassword.Focus();
            };
        }

        private async void Submit_Click(object sender, RoutedEventArgs e)
        {
            string connectionString = @"server=localhost;user id=root;password=12345;persistsecurityinfo=False;database=mydatabase";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                await connection.OpenAsync();
                string querry = @"SELECT COUNT(*) FROM users WHERE BINARY Username = @login AND Password = @password";
                MySqlCommand command = new MySqlCommand(querry, connection);
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@login", txtLogin.Text);
                command.Parameters.AddWithValue("@password", txtPassword.Password);
                int count = Convert.ToInt32(await command.ExecuteScalarAsync());
                if (count == 1)
                {
                    Visibility = Visibility.Collapsed;
                    ChatsWindow chWnd = new ChatsWindow();
                    chWnd.Closed += (sender1, e1) => Close();
                    chWnd.Show();
                }
                else
                {
                    txtLogin.BorderBrush = Brushes.Red;
                    txtPassword.BorderBrush = Brushes.Red;
                    warning.Opacity = 1;
                }
            }
        }

        private void Registr_Click(object sender, RoutedEventArgs e)
        {
            Visibility = Visibility.Collapsed;
            RegistrationWnd regWnd = new RegistrationWnd();
            regWnd.Closed += (sender1, e1) =>
            {
                txtLogin.Text = "";
                txtPassword.Password = "";
                warning.Opacity = 0;
                txtLogin.BorderBrush = Brushes.LightSlateGray;
                txtPassword.BorderBrush = Brushes.LightSlateGray;
                Visibility = Visibility.Visible;
            };
            regWnd.Show();
        }
    }
}