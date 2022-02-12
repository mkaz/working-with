+++
title = "Registers"
weight = 130
+++

# Registers

Vim stores the list of yanked or deleted text in a set of registers. To see what is stored across all registers use the `:reg` command.

The `""` register has no name, it is similar to the clipboard. Whatever is copied or deleted is placed in the `""` register automatically.

The numbered registers `0-9` keep a stack of recently copied or deleted text.

To paste an item from a register you use `"{reg}p`. For example, to paste an item from register `0`, you use: `"0p`

💡 Use `"0p` for paste copied content that accidentally got replaced because of a delete after a copy. Deleted text automatically goes to `""` register. This replaces any copied text there. The original copied text is register `0` so use `"0p` to paste.

## Named Registers

You copy items directly to named registers \[a-z\] by prepending your yank command with the register name. For example, yanking a word to register `a` use `"ayw` and then `"ap` to paste.

If you use a capital letter, \[A-Z\], the same corresponding named register is used, but the content is appended to the register, not replaced.

📄 Registers are stored in `~/.viminfo` and loaded each time vim starts. So, registers will persist between sessions.

## System Clipboard

The `+` register is a special register for the system clipboard. This allows you bidirectional copy and paste between Vim and the host OS.

For example, use `"+yy` to copy current line to the system clipboard, and `"+p` to paste from clipboard to vim buffer.

For system clipboard, Vim requires the clipboard support to be compiled in. Check for clipboard support using `:echo has('clipboard')` if the result is `0` than your version does not have it compiled. For Linux, try installing `vim-gtk` or similar GUI related package. Neovim has clipboard support by default, but requires `xclip` or `xsel` to be installed.

See `:help registers` for additional information about other special registers.
