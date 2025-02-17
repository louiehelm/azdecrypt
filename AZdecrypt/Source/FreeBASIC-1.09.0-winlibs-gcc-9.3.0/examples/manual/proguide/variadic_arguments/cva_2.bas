'' examples/manual/proguide/variadic_arguments/cva_2.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=ProPgVariadicArguments
'' --------

' Variadic sub:
'    The first(fixed) parameter provides the number of elements.
'    The variable arguments are all UDT Ptr.

Type UDT
	Dim As String s
	Dim As Single d
End Type

Sub printUDT cdecl (ByVal count As Integer, ...)
	Dim args As Cva_List
	Dim pu As UDT Ptr
   
	Cva_Start(args, count)

	For i As Integer = 1 To count
		pu = Cva_Arg(args, UDT Ptr)
		Print pu->s, pu->d
	Next
	
	Cva_End(args)
End Sub

Dim As UDT u1, u2, u3
u1.s = "4*Atn(1)" : u1.d = 4 * Atn(1)
u2.s = "Sqr(2)"   : u2.d = Sqr(2)
u3.s = "Log(10)"  : u3.d = Log(10)

printUDT(3, @u1, @u2, @u3)

Sleep

' Output:
' 4*Atn(1)       3.141593
' Sqr(2)         1.414214
' Log(10)        2.302585
		
