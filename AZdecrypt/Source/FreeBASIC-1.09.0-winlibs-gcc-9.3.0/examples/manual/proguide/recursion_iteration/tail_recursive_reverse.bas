'' examples/manual/proguide/recursion_iteration/tail_recursive_reverse.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=ProPgRecursionIteration
'' --------

Function tailRecursiveReverse (ByVal s As String, ByVal cumul As String = "") As String
	If (s = "") Then                                                '' end condition
		Return cumul
	Else                                                            '' recursion loop
		Return tailRecursiveReverse(Mid(s, 2), Left(s, 1) & cumul)  '' tail recursive call
	End If
End Function
		
