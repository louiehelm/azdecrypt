'' examples/manual/proguide/arrays/array1.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=ProPgArrays
'' --------

' Create an array of 3 elements all having the value zero (0.0f).
Dim array(1 To 3) As Single

' Assign a value to the first element.
array(1) = 1.2

' Output the values of all the elements ("1.2 0 0").
For position As Integer = 1 To 3
	Print array(position)
Next
	
