# Script to write a scrolling marquee to the console
$f = {
	for ($x = ' ' * 52 + (($args |% t*y) -join ' ' * 4); $x-match ' '){
		Write-Host "`r$(-join ($x=$x-replace'(?<! .*) ')[0..50])" -NoNewLine
		Start-Sleep -Milliseconds 99
	}
}
&$f 'Hello, world!'
