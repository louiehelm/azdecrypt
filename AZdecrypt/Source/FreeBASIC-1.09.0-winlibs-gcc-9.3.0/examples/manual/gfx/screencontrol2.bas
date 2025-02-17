'' examples/manual/gfx/screencontrol2.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: https://www.freebasic.net/wiki/wikka.php?wakka=KeyPgScreencontrol
'' --------

'' include fbgfx.bi for some useful definitions
#include "fbgfx.bi"

Dim As String driver

#ifdef __FB_WIN32__
'' set graphics driver to GDI (Win32 only), before calling ScreenRes
ScreenControl FB.SET_DRIVER_NAME, "GDI"
#endif

ScreenRes 640, 480

'' fetch graphics driver name and display it to user
ScreenControl FB.GET_DRIVER_NAME, driver
Print "Graphics driver name: " & driver

'' wait for a keypress before closing the window
Sleep
	
