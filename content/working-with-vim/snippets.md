---
title: "Snippets"
date: "2020-02-03"
---

# Snippets

I use the [Ultisnips plugin](https://github.com/SirVer/ultisnips) to provide all my snippet needs. Snippets have replaced templates for me. Previously I setup a template file to automatically load on a new empty file. For example, a new HTML file would load a stubbed out html-head-body set of tags.

However, setting it up automatically got annoying when doing temporary things. Plus, it was fragile when templates didn't exist for a filetype. Now I just use snippets, it is easier to manually insert the template I want.

## Install

See the plugins section for full explanation. I add the following to my .vimrc:

```vim
Plug 'sirver/ultisnips'
```

## Configuration

My configuration setting the directory and python version:

```vim
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsUsePythonVersion = 3
```

## Defining Snippets

Create a file in the snippet directory based on your filetype, for example `html.snippets`. This file holds all the snippets for the HTML filetype.

Define an individual snippet. The following defines the `lorem` snippet. The text between the start and end is what will be inserted.

```
snippet lorem
Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore
magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat.
endsnippet
```

You can define as many snippets as you like in a single snippets file.

💡 Place `$1` in the snippet definition where you want the cursor to be after the snippet is entered.

## Use a Snippet

While in INSERT mode, type the name of your snippet and hit \[TAB\] and it will be replaced.

Ultisnips has a rich set of features including dynamic snippets and numerous other features, read their document using `:help UltiSnips` or [online in the repo](https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt)

Snippets example
