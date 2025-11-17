// Use V like C, without needing any V specific features:
fn C.MessageBoxA(hwnd voidptr, text &char, caption &char, utype u32) int
C.MessageBoxA(0, c'Hello world.', c'Hi:', C.MB_OK)

// An alternative, is to do the commented lines instead, although it will produce a
// slightly larger executable (69KB, instead of 44KB), because it needs the `builtin`
// module for the .to_wide() methods, so you will need to edit the Makefile to
// also NOT pass `-no-builtin`:
// fn C.MessageBoxW(hwnd C.HWND, text &u16, caption &u16, utype u32) int
// C.MessageBoxW(0, 'Hello world.'.to_wide(), 'Hi:'.to_wide(), C.MB_OK)
