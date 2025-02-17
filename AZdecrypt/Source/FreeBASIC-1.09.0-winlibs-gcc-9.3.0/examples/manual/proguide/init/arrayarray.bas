'' examples/manual/proguide/init/arrayarray.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=ProPgInitialization
'' --------

Dim array(1 To 3, 1 To 5) As Integer = _
	{ _
		{11, 12, 13, 14, 15}, _
		{21, 22, 23, 24, 25}, _
		{31, 32, 33, 34, 35} _
	}

For I As Integer = 1 To 3
	For J As Integer = 1 To 5
		Print array(I, J),
	Next J
	Print
Next I

Sleep
		
