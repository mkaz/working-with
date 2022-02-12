---
title: "Substitute"
date: "2020-02-03"
---

# Substitute

See `:help substitute` Substitute allows you to search and replace using regular expressions. The command `s/find/replace/g` will replace "find" with "replace", the `s` is for substitute, the `g` (global) option replaces every occurrence in a line, without the `g` it will only replace the first occurrence in a line.

Prefix the command with the range to work on, if no range is specified it will only search and replace on the current line.

The space between range and `s` is not necessary, but I find it more legible.

Use `%` to search and replace across the whole document:

`:% s/find/replace/g`

Use a line number range to replace all "find" with "replace" between lines 137 and 140:

`:137,140 s/find/replace/g`

You can define a range using VISUAL mode. First, highlight the area you want and then type `:` to go into command-line mode. Vim will automatically insert `'<,'>` this is it's magical incantation to operate over the selection, leave it there. Next, type your substitute command `s/find/replace`

Besides search and replace, you can use `g/find/d` to delete all lines that match find, or `v/find/d` to delete all lines that do not match find.

Substitute Examples

## Multiple Files

I found the easiest way to search and replace across multiple files is using the `:argdo` or `:bufdo` commands. To use, you first setup the files you want to operate against. For `:argdo` it uses the files on the argument list, for `:bufdo` it uses the current buffers list.

To setup the `:args` list, you can glob the files you want. For example, all markdown files `:args **/*.md` or all files `:args **/*`. You can see the files are the list, run `:args` with no parameters.

To run the substitute command across all the files, use:

```vim
:argdo %s/find/replace/g | update
```

This will run the given command, our substitute, across each file in the args list. The `| update` will save the file if any changes were made.

The same can be done with `:bufdo` for files in open buffers.
