+++
title = "Lines"
weight = 70
+++

# Working with Lines

Vim has numerous built-in functions and features to operate specifically on lines.

## Copy / Delete Lines

Shortcuts exist for copying and deleting the current line.

Use `dd` to delete the current line.

Use `yy` to copy the current line.

Use `cc` to delete line and enter INSERT mode.

The above are equivalent to using the `_` motion. For example, `dd` is equivalent to `d_`. Since these are common actions, the double letter shortcuts are easier to remember and type.

You can paste a deleted or yanked line elsewhere, use `p` to paste.

Another useful shortcut is `D`, to delete from cursor to end of line, equivalent to `d$`

The change equivalent is `C`, to delete from cursor to end of line, and switch to insert mode.

## Line Motions

`0`  
: Go to first column

`^`  
: Go to first printable character

`$`  
: Go to end of line

`g_`  
: Go to last printable character

`:32` or `32G`  
: Go to line number 32

`gg`  
: Go to first line in buffer

`G`  
: Go to last line in buffer

## Line INSERT mode

`o`  
: Add new line below, enter INSERT mode

`O`  
: Add new line above, enter INSERT mode

`I`  
: Enter INSERT mode at start of line

`A`  
: Enter INSERT mode at end of line

## Merge lines

Use `J` to merge lines together. If you press `J` with nothing highlighted, it will remove the current line ending and white-space bringing the next line up. If multiple lines are highlighted, pressing `J` will merge them all into a single line.

## Wrap Lines at Length

Use `gq` to wrap lines to a specified length defined by `textwidth`. If the `textwidth` option is not set the default is 79. I use this daily in commit messages to fit within 80 characters. To use, just highlight the lines you want and then type `gq`

## Wrapped Line Navigation

Wrapped line navigation can be weird in Vim. Since, one actual line wraps to multiple displayed lines. The `j` and `k` keys tells Vim to move to the next line, thus skipping over the wrapped lines.

Use `gj` and `gk` to navigate via displayed lines. I configure this as my default using the following configuration.

Add the following to your `.vimrc`

```vim
" move updown by visual (wrapped) lines
noremap j gj
noremap k gk
```

See [Configuration section](/working-with-vim/configuration/) for more on working with your Vim config.

## Bubble Up Lines

Move a single line, or multiple lines, up and down using control + arrow keys. The multiline mapping below is complex, even for me, I picked it up somewhere on the interweb.

```vim
" Bubble single lines
nmap <C-Up> :m .-2<CR>
nmap <C-Down> :m  .+1<CR>

" Bubble multiple lines
vnoremap <silent> <C-Up>  @='"zxk"zP`[V`]'<CR>
vnoremap <silent> <C-Down>  @='"zx"zp`[V`]'<CR>
```
