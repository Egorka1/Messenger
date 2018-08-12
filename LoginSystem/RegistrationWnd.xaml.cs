using System;
using System.Windows;
using System.Windows.Media;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text.RegularExpressions;

namespace LoginSystem
{
    public sealed partial class RegistrationWnd : Window
    {
        public RegistrationWnd()
        {
            InitializeComponent();
            Loaded += (sender1, e1) => txtLoginR.Focus();
            passShowR.PreviewMouseLeftButtonDown += (sender1, e1) =>
            {
                txtPasswordR.Visibility = Visibility.Collapsed;
                showPassR.Visibility = Visibility.Visible;
                showPassR.Text = txtPasswordR.Password;
            };
            passShowR.PreviewMouseLeftButtonUp += (sender1, e1) =>
            {
                txtPasswordR.Visibility = Visibility.Visible;
                showPassR.Visibility = Visibility.Collapsed;
                txtPasswordR.Focus();
            };
        }

        private async void Confirm_Click(object sender, RoutedEventArgs e)
        {
            int count = 0;
            string connectionString = @"server=localhost;user id=root;password=12345;persistsecurityinfo=False;database=mydatabase";
            string querry = @"INSERT INTO users (Username, Password) VALUES (@login, @password)";
            string check = @"SELECT COUNT(*) FROM users WHERE BINARY Username = @login";
            string login = txtLoginR.Text;
            string pass = txtPasswordR.Password;
            if(new Regex(@"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[^\s]{6,15}$").IsMatch(pass) && new Regex(@"^\w{3,10}$").IsMatch(login))
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    await connection.OpenAsync();
                    MySqlCommand cmd = new MySqlCommand(check, connection);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@login", login);
                    count = Convert.ToInt32(await cmd.ExecuteScalarAsync());
                }
                if (count < 1)
                {
                    using (MySqlConnection connection = new MySqlConnection(connectionString))
                    {
                        await connection.OpenAsync();
                        MySqlCommand command = new MySqlCommand(querry, connection);
                        command.CommandType = CommandType.Text;
                        command.Parameters.AddWithValue("@login", login);
                        command.Parameters.AddWithValue("@password", txtPasswordR.Password);
                        await command.ExecuteNonQueryAsync();
                        ChatsWindow chWnd = new ChatsWindow();
                        chWnd.Closed += (sender1, e1) => Close();
                        chWnd.Show();
                        Close();
                        Application.Current.MainWindow.Visibility = Visibility.Collapsed;
                        chWnd.frame.Source = new Uri("PageSettings.xaml", UriKind.RelativeOrAbsolute);
                    }
                }
                else
                {
                    txtLoginR.BorderBrush = Brushes.Red;
                    txtPasswordR.BorderBrush = Brushes.Red;
                    showPassR.BorderBrush = Brushes.Red;
                    warningR.Opacity = 1;
                    warningR.ToolTip = @"This login is already taken.";
                }
            }
            else
            {
                txtPasswordR.BorderBrush = Brushes.Red;
                txtLoginR.BorderBrush = Brushes.Red;
                showPassR.BorderBrush = Brushes.Red;
                warningR.Opacity = 1;
                warningR.ToolTip = "The login must contain:\n- 3-10 charactersn\n- lowercase and uppercase letters, digits and '_'\nThe password must contain:\n- 6-15 characters\n- lowercase letter\n- uppercase letter\n- number";
            }
        }
    }
}