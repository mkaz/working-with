+++
title = "Windows"
date = "2020-02-03"
+++

# Windows

As mentioned above windows are viewports into buffers. So, a window is a different editing pane. There is always one main window, but you can also have multiple windows at the same time. Multiple windows can be the same or different buffers, so you can have the same buffer open in two different windows.

`:split`  
: Horizontal split, current buffer

`:vsplit`  
: Vertical split, current buffer

`:new`  
: Horizontal split, new buffer

`:vnew`  
: Vertical split, new buffer

`ctrl-w s`  
: Horizontal split current buffer

`ctrl-w v`  
: Vertical split current buffer

`ctrl-w n`  
: Horizontal split, new buffer

`ctrl-w q`  
: Quit window, closes buffer

`ctrl-w c`  
: Close window, leave buffer

`ctrl-w o` or `:only`  
: Only one window, closes down to just one

To navigate between open windows, use `ctrl-w [hjkl]` or `ctrl-w [arrows]` mapping to the same directions used to navigate.

I rarely use multiple windows open at the same time, I'm comfortable bouncing around buffers that I tend not to need more things on the screen at the same time.

## Tab Page

A tab page is a collection of windows. So, tabs may be useful if you rely on multiple different window layouts. I rarely use windows, so tabs are just too much for me. If interested, you can learn more about tabs using `:help tab-page`

💡 Tab pages are nice to open help in. This will open help in a full window, instead of a split. Prefix with `:tab` first, for example `:tab help tab-page`

You can use `:tabclose` or `ctrl-w c` to close, the latter closes since closing the last window in a tab page, closes the tab.
