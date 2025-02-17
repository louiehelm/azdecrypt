'' examples/manual/system/fileseteof1.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=KeyPgFileseteof
'' --------

#include "file.bi"

'' create a zero length file
Open "file.dat" For Binary As #1
FileSetEof 1
Close #1

'' open same file and extend to 10000 bytes size
Open "file.dat" For Binary As #1
Seek #1, (10000 + 1)
FileSetEof 1
Close #1

'' open same file and truncate to 5000 bytes size
Open "file.dat" For Binary As #1
Seek #1, (5000 + 1)
FileSetEof 1
Close #1

'' clean-up
Kill "file.dat"
