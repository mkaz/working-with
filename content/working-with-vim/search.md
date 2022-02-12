+++
title = "Search"
date = "2020-02-03"
+++

# Search

## Quick Search

See `:help *` Use `*` and `#` to navigate to the word under the cursor, `*` forward and `#` backwards. This searches within the current buffer.

I'll use this to check the spelling of variables, by using `*` on a variable it highlights all the words spelled the same. A nice quick way to check for misspellings.

Quick Search Example

## Search Motions

Use `/term` to move forward to next "term", and use `?term` to move backwards to previous "term".

See `:help pattern-searches`

You can combine with delete and yank, and any other operator. For example: `d/apple` will delete from current spot to the string apple. Vim highlights the words to show and you press enter to confirm.

I don't use the delete or copy actions with regex searches. I primarily use regexes to navigate around.

### Remove Highlight

Search results remain highlighted after a search, this is useful when searching, but they often stick around too long. Use `:nohlsearch` to unhighlight the searches. I create the `<Leader><Space>` map for convenience.

```vim
" Unhighlight Search using ,SPC
nnoremap <silent> <Leader><Space> :nohlsearch<CR>
```

Try out the [vim-slash plugin](https://github.com/junegunn/vim-slash) to clear highlighting automatically when the cursor is moved. This works pretty nicely, though additional changes the `*` search.

I setup the shortcut above to clear highlights; but since installing the vim-slash plugin, I use it less frequently. The plugin ends up clearing it most of the time, so it may be all you need.

## Multiple Files

See `:help grep` Use `:grep pattern {file}` to search across multiple files.

For example: `:grep TODO *.go` would search all files with go extension for the text TODO.

Use `:cn` to jump to next match.

Use `:cp` to jump to previous match.

Use `:copen` to open list of matches in quickfix window

To recursively search through directories, use `**/*.go` or `**/*` as the `{file}` criteria.

### Ripgrep and FZF

The `:grep` search works, but is verbose and blunt tool for searching code. I prefer to use [ripgrep](https://github.com/BurntSushi/ripgrep) for search and [fzf](https://github.com/junegunn/fzf) for fuzzy matching. Ripgrep by default ignores items in .gitignore, binaries, hidden files, and other coding parts.

See my [Unix is my IDE](https://mkaz.blog/code/unix-is-my-ide/) for the full setup. Installing and using both are easier now that binaries are included in recent OS package repostiories.

I use the following two plugins for `fzf`. The first provides fzf commands in Vim, and the second creates some useful mappings leveraging those commands.

```vim
Plug 'junegunn/fzf',  { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'               " fuzzy search
```

I use a custom shortcut `<Leader>f` to use the fzf provided `:Rg` command to perform a search. Results are opened in a quickfix window and can be narrowed by typing additional in the window. Use arrow keys to navigate to result, enter to open. Use `<tab>` to select multiple items.

If you have the plugin installed, see `:help fzf-vim-commands` for details.

## Search and Replace

See [Substitute page](/working-with-vim/substitute/) for search and replace.
