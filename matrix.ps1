#Hello World ! :)
$width = ($Host.UI.RawUI.WindowSize.Width);
$height = ($Host.UI.RawUI.WindowSize.Height);
#cat /dev/urandom | tr -dc '0-9' | fold -w 211
# while true; do
# 	screen=$(timeout 0.06s cat /dev/urandom | tr -dc '0-9' | fold -w 211 | head -1)
# 	echo $screen
# 	sleep 1s
# done
$screen = " ";
$i = 0;
$ih = 0;
while (1)
{
while ($ih -le $height)
{
while ($i -le $width)
{
    $screen = -join($screen, " ", (Get-Random 10));
    $i++;
}
echo $screen;
$i = 0;
$ih++;


}
$screen = " ";
$ih = 0;
}