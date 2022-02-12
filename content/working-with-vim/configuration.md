+++
title = "Configuration"
weight = 170
+++

# Vimrc

You probably already know about `.vimrc` or if you use Neovim `.config/nvim/init.vim`. It is where you can put your configuration and shortcuts. I'm going to include several examples from my config to give you an idea of what you can do.

There is little difference between Vim and Neovim, I'll use both. My current setup is using Neovim, you can see my [init.vim in my dotfiles](https://github.com/mkaz/dotfiles/blob/master/extras/nvim/init.vim). I use the same config file for both, just different name and location.

I don't recommend just copying and pasting mine or anyone's vim config. Most config is just one person's preferences, especially for shortcuts. The important part is to be able to read and understand what shortcuts and features they are implementing; and see if it applies to improving your workflow.

Your muscle memory may want settings or mappings to use a different set of keys; learn how it works and shape Vim to fit you.

## Leader

First, the `<Leader>` is a special variable intended to be used for user definitions. Using a leader to prefix a command will help avoid conflicts with other default Vim commands, though this depends on what you set your leader variable to. By default the leader key is `\` but it is common to map it to `,` which I do. You set the `<Leader>` variable using:

```vim
let mapleader=","
```

## Create Your Own Commands

Here is a shortcut I use to open my config file using `:Edrc` command. User defined commands must start with a capital letter to distinguish from built-in commands.

```vim
" edit config file
command! Edrc edit $MYVIMRC
```

Use `!` when creating a command to overwrite previous command. This solves the issue if you re-source your config, otherwise Vim will display an error showing the command already exists.

## Mapping

You can map a set of key commands to another set. This allows you to create a simpler shortcut for a more complex set of keys. Mapping is modal, you need to tell Vim what MODE you want the mapping to work.

`nmap` or `nnoremap`  
: just normal mode

`imap` or `inoremap`  
: insert mode

`vmap` or `vnoremap`  
: visual and select mode

`xmap` or `xnoremap`  
: just visual mode

`cmap` or `cnoremap`  
: command-line mode

`tmap` or `tnoremap`  
: terminal mode

`map` or `noremap`  
: normal, visual, and select modes

A mapping entry consists of `[map-mode] {lhs} {rhs}` which simply stands for left and right hand sides.

The mapping translates what you typed on the left-hand side to the mapped keys on the right-hand side. The right-hand side is just a set of keys you might have typed.

The `noremap` command prevents recurisve remapping which can lead to errors if the `{rhs}` includes part of the `{lhs}`. It is a good best practice to use the `noremap` versions by default, to prevent errors.

If your `{rhs}` relies on a mapping defined elsewhere, for example a plugin, you will need to use the `map` version without the `noremap`, see the quote example below.

It is also a good idea to use `xmap` instead of `vmap` for VISUAL mode. The `xmap` applies only to VISUAL mode, while `vmap` also includes SELECT mode. It is best to limit the scope of a mapping to avoid potential conflicts.

### Example Mapping

Here is an example mapping for NORMAL mode to add a semi-colon to the end of the current line.

```vim
nnoremap <Leader>; g_a;<Esc>
```

The first part is the map mode `nnoremap`. This specifies it is a mapping for NORMAL mode, non-recursion.

The `{lhs}` is the next part, the command to type. `<Leader>;` for my leader definition is `,;`

The final part is the command the mapping will execute, this is exactly what you would type to achieve the results.

In this case `g_` moves to the last non-whitespace character on the line. The `a` enters INSERT mode after the cursor, and `;` adds the semi-colon. Finally, I add `<Esc>` to return to NORMAL mode.

A mapping just duplicates what you would type in the editor. With that mapping line set in my `.vimrc`, all I need to do is type `,;` to add a semi-colon on end of line in NORMAL mode.

### Instant Quotes

An example mapping to wrap a word in single or double quotes. This uses the [vim-surround plugin](https://github.com/tpope/vim-surround) an example that needs to be recursive.

```vim
" Surround with Quote
nmap <Leader>' ysiw'
nmap <Leader>" ysiw"
```

### Toggle Whitespace

An example mapping to toggle visible whitespace, the `!` is used as a toggle.

```vim
" toggle show whitespace
noremap <F3> :set list!<CR>
```

## Make me a Sandwich

My one great tip from my configuration, which I give credit to whoever I picked it up from years ago, this saves me so many times.

```vim
" :w!! to save with sudo
ca w!! w !sudo tee >/dev/null "%"
```

When you open a file and don't have write permissions, you can call `:w!!` and it will auto sudo the file for you. Saves me practically every time I edit a system file. [Sandwich reference](https://xkcd.com/149/)

## Auto Command

`Autocmd` is a powerful tool to configure vim to automatically run on a specific event. See `:help autocmd-events` for a listing of available events.

Here is a common usage, setting a parameter based on the type of file. In this case, I want PHP files to use tabs and not spaces, because that is the WordPress standard.

```vim
" PHP File Types (WordPress, use tabs)
autocmd FileType php set noexpandtab
```

If your vim config is sourced after loading, the autocmds will repeat and can double up the actions. I recommend using `augroup` to group together your set of autocmds in a block. You can then run `autocmd!` in that block to remove previously set commands.

Here is a simplified example from my config

```vim
augroup configgroup

    autocmd! " delete existing autocmds in group

    " golang
    autocmd BufRead,BufNewFile *.go set filetype=go
    autocmd FileType go nmap <Leader>r <Plug>(go-run)
    autocmd FileType go nmap <Leader>b :terminal go build<CR>
    autocmd FileType go nmap <Leader>t :terminal go test<CR>

augroup END
```
