#Hello World ! :)
#Set-ExecutionPolicy -Scope CurrentUser Unrestricted
$width = ($Host.UI.RawUI.WindowSize.Width);
$height = ($Host.UI.RawUI.WindowSize.Height);

# save the current color // seems unenncesary in current version of PS
#$fc = $host.UI.RawUI.ForegroundColor;
#$bc = $Host.UI.RawUI.BackgroundColor;

#Sets UI colors
$Host.UI.RawUI.ForegroundColor = "Green";
$Host.UI.RawUI.BackgroundColor = "Black";
$ih = 0; #iterator for height
while (1) #Loop to infinity, while restarting the loop when screen height is reached, (does it serve anything, I don't know)
{
    while ($ih -le $height) #Print one line at the time
    {
        while (($screen.Length +1) -le $width) # Crate a console wide string ($screen) through adding random numbers and white spaces until the console width is filled, the (+1) is usede for padding, the classical < less than would probabaly work but i don't know how to do it ATM.
        {
           $screen = -join($screen, " ", (Get-Random 10));
        }
    Write-Output $screen;
    $screen = "";
    $ih++;
    }
$screen = "";
$ih = 0;
}