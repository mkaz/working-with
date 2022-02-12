+++
title = "Terminal"
weight = 200
+++

# Terminal

Use the `:terminal` command to start a terminal session in a new buffer. This is a full terminal shell, just inside of Vim. The feature is relatively new, so, it requires Vim 8.1 or Neovim.

I normally use the terminal for quick one-off processes, like a build. If I'm going to do much more, I'll drop to the shell using `ctrl-z` and return using `fg` in bash.

## Script the Terminal

What I really like about the built-in terminal is you can script it. This makes automating some tasks quite easy and useful. For example, writing this tutorial I run my [wpsync program](https://github.com/mkaz/wpsync). This copies the markdown files I am authoring, in Vim of course, to my WordPress site.

I run this using: `:terminal wpsync`

## Build Your Program

You can create a config mapping to make it even easier. I map the following to build a Go binary using the `,b` shortcut.

```vim
autocmd FileType go nmap <leader>b :terminal go build<CR>
```
