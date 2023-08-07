using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Security.Principal;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using Test_WPF.View;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace Test_WPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private void Application_Startup(object sender, StartupEventArgs e)
        {
            //var loginWindow = new LoginWindow();
            //loginWindow.Show();
            //loginWindow.IsVisibleChanged += (s, ev) =>
            //{
            //    if (loginWindow.IsVisible == false && loginWindow.IsLoaded)
            //    {
            //        var mainWindow = new MainWindow();
            //        mainWindow.Show();
            //        loginWindow.Close();
            //    }
            //};

            var mainWindow = new MainWindow();
            mainWindow.Show();
        }
    }
}
