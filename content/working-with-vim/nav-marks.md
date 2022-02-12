+++
title = "Nav Marks"
date = "2020-02-03"
+++

# Navigation Marks

See `:help marks` Navigation marks allow you to mark spots in your buffer and jump back and forth between marks. This is useful if you find yourself moving around a buffer, say for table of contents, imports, or constructors.

## Automatic Marks

Vim automatically creates these marks:

` `` ` or `''`  
: jump back to previous position

`` `.`` or `'.`  
: jump to last spot edited

## Navigation marks

Create your own named marks using a single letter `[a-z]`

`ma`  
: create named mark `a`

`` `a`` or `'a`  
: jump to mark named `a`

`:marks`  
: See all available marks

The lowercase navigation marks `[a-z]` are remembered as long as the file remains in the buffer list. If you remove the file, or delete the line that contains a mark, that mark is erased.

## File Marks

Use capital letters `[A-Z]` as file marks that allows you to jump to different files. Vim will even open the file if it is closed. File marks are stored in `~/.viminfo` and will persist between sessions. See the video in [Buffer section](/working-with-vim/buffers/) for an example.
