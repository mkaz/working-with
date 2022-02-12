+++
title = "Help Yourself"
weight = 30
+++

# Help Yourself

The first place to turn when you need help is Vim itself. It has extensive documentation on every command and feature.

Type `:help [command]` to see help for any command.

For example, `:help gg` will explain what the `gg` command does.

Help opens in a new window split horizontally, see [Windows section](/working-with-vim/windows/) for working with windows.

Close the window split using `ctrl-w c` or `:close`

To make help the only window, use `ctrl-w o` or `:only`. This removes the split but does not close help or your original buffer. Close the help buffer using `:bd`, to switch back to your original buffer.

Help is simply a read-only buffer. You can navigate, highlight, copy, paste, search, and do any vim things as any other buffer, except edit. See [Buffers section](/working-with-vim/buffers/) for more on working with buffers.

## Navigate Help Tags

The help pages include tags to other help sections, depending on your colorscheme it might be blue. With your cursor on an item type `ctrl-]` to jump to that definition.

Jumping to tag definitions actually works for any words in help regardless if they are tags. If a definition exists for the word, you will jump to it. Tags tell you that a definition does actually exist.

Example using :help
