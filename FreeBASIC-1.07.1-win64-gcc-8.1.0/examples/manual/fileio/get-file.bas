'' examples/manual/fileio/get-file.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=KeyPgGetfileio
'' --------

' Load a small text file to a string

Function LoadFile(ByRef filename As String) As String
	
	Dim h As Integer
	Dim txt As String
	
	h = FreeFile
	
	If Open( filename For Binary Access Read As #h ) <> 0 Then Return ""
	
	If LOF(h) > 0 Then
		
		txt = String(LOF(h), 0)
		If Get( #h, ,txt ) <> 0 Then txt = ""
		
	End If
	
	Close #h
	
	Return txt
	
End Function

Dim ExampleStr As String
ExampleStr = LoadFile("smallfile.txt")
Print ExampleStr
