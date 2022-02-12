---
title: "Buffers"
date: "2020-02-03"
---

# Buffers

Buffers in vim are the in-memory text of files. Your window is a viewport on a buffer. You can switch between open buffers, this is similar to tabs in other editors. Vim does have a concept of tabs too, but they are slightly different, read more about tabs in the [Windows section](/working-with-vim/windows/).

I generally keep it pretty simple and just use buffers. They handle my multiple-files-open-at-the-same-time needs. You don't have to take just my word. Here is a post about [Buffers vs Tabs](https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/), and the author agrees just using buffers is easier.

Buffers tend to be the default mode for multiple files, so it is what I learned and use.

## Opening Multiple Files

You can specify opening multiple files on the command-line. For example, `vim *.md` or `vim file file fle` each file opens in its own buffer.

From within vim, use `:ed FILE` to open additional files in new buffers.

💡If you have a command-line program that returns a list of files you want to open, use `vim $(command)`. For example, working in a git repository, open the set of changed files using:

vim $(git diff --name-only)

## Main Buffer Commands

`:buffers` or `:ls` : Show open buffers

`:b {bufname}` : Use buffer name, supports partial and tab completion

`:bd` : Close current buffer

`:bn` : Switch to Next buffer

`:bp` : Switch to Previous buffer in list

`:b#` : Last buffer visited, actual # sign

`:b1` : Switch to buffer #1

`:bm` : Switch to next modified buffer

## Buffer Navigation

Use the above commands to navigate and switch between buffers. The `:b {bufname}` might be the most useful. Type `:b` and then start typing the filename, partials work if it is unique, or use tab completion.

### My Shortcuts

Buffer navigation is so critical for my workflow, I have a set of shortcuts I use to make t it easier. I map `<Leader>3` to jump back to last buffer, this makes it easy to bounce between two files.

I map `<Leader>n` to navigate to next buffer, I map `Q` to close current buffer, and map `<Leader>,` to open the buffer list to select a buffer.

Here is what the mappings look like in my `.vimrc`, see [configuration section](/working-with-vim/configuration) for more about mapping and leader.

" Buffer Navigation  
nnoremap <Leader>3 :b#<CR>      " previous buffer  
nnoremap <Leader>n :bn<CR>      " next buffer  
nnoremap Q :bd!<CR>             " close buffer  
nnoremap <Leader>, :Buffers<CR> " browse buffers

The `:Buffers` command above is slightly different and comes from the [fzf.vim plugin](https://github.com/junegunn/fzf.vim). This allows for a more forgiving fuzzy matching of buffer names. See my article [Unix is my IDE](https://mkaz.blog/code/unix-is-my-ide/) for more explanation on how I setup vim using fzf and ripgrep for advanced searching, which includes this quick way to switch buffers using fzf.​​

Buffer navigations

## Split Buffers

You can open buffers in a split window, using the follow. This opens a second window with the buffer loaded. If you want to close the split, and keep the buffer open, use `:close` or `ctrl-w c` and not `:bd`. Using `:bd` will close the buffer, and if it is in the only buffer open in a split window, it will also close the window.

`:sb 1` : Open buffer #1 in a split

`:sb {bufname}` : Open buffer `bufname` in a split

`:sbn` : Open next buffer in a split

`:sbp` : Open previous buffer in a split

`:sba` : Open all buffers in split windows
