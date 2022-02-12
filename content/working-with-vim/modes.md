---
title: "Modes"
date: "2020-02-03"
---

# Modes

Vim has different modes of operations. The main modes are NORMAL, INSERT, and VISUAL mode. I capitalize the modes because vim does, I'm not shouting them. The commands you use are based on what mode you are in. Vim's INSERT mode is like other editors, what you type will be inserted into the document.

## NORMAL Mode

To realize the strength of Vim, you need to **make NORMAL mode your default mode**. I don't like telling people what to do, no vim shaming here, but the majority of power and commands are used in NORMAL mode.

You use `Esc` to return to NORMAL mode after inserting text, so I will mash the Esc key often. Every time I finish an edit, or make a change, I'm constantly returning to NORMAL mode.

There is a reason it is called NORMAL mode; it is the mode where you can do all the extra vimmy stuff. INSERT mode is just typing text, any editor can do that.

Be NORMAL.

## VISUAL Mode

VISUAL mode is when you select text and can visually see it highlighted. It may seem formal to label a mode just when text is selected, but Vim commands work different when text is selected.

`v`  
: Enter VISUAL mode (character)

`V`  
: Enter VISUAL LINE mode (line)

`ctrl-v v`  
: Enter VISUAL BLOCK mode (column)

Press `v` in NORMAL mode to enter VISUAL mode. In VISUAL mode any cursor movement, or defined motion will select text as it moves. You can operate on just this highlighted area.

Press `V` in NORMAL mode, and the whole line is selected, this is VISUAL LINE mode. Any movement up or down will select by line.

Press `ctrl-v` for VISUAL BLOCK mode. Moving will select by a block region, not the entire line. This allows for operating on columns of text, see video example below.

Psst, don't tell the purists, but if you `set mouse=a` you can use your mouse to highlight things too.

VISUAL mode is pretty powerful, I use it frequently since it provides feedback seeing what is selected, and then unselected after the action.

VISUAL mode example

After performing an operation in VISUAL MODE the selection is no longer highlighted. Use `gv` to automatically reselect the area previously highlighted.

## Command-line Mode

Another mode to mention is Command-line mode. You enter by typing `:` while in NORMAL or VISUAL mode. This places your cursor at the bottom command-line, ready for you to type a command.

Typically, you exit command-line mode by issuing a command, however you can exit without a command by typing `Esc Esc`

A history of previous commands is kept, use the up arrow key after typing `:` to see previous commands, similar to bash. This is stored in `.viminfo` so persists between sessions.

## Additional Modes

In total, there are seven basic modes in Vim. For completeness, the other three modes are SELECT, EX, and TERMINAL. See `:help vim-modes` for full definitions.
