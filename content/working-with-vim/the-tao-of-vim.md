+++
title = "The Tao of Vim"
date = "2020-02-03"
+++

# The Tao of Vim

The underlying principle of Vim is the operator-motion pair. You can think of Vim as a language. The operator and motion are the verbs and nouns that define the action on a subject.

For example, if you want to delete a line. Delete is the action, and a line is the subject. For Vim, `d` is the delete operator, and `_` is the line motion.

So, typing `d_` will delete a line.

This is the essence of Vim. Instead of trying to memorize hundreds of commands, you learn the verbs and nouns that make up the language, and then combine together.

The grammar of Vim defines the rules how to create the operation-motion pairs; there are basically two ways dependent on the mode.

## NORMAL Mode

In NORMAL mode, you specify the operator first and then the motion. For example, delete to beginning of the line. You type `d` for delete operator and then `^` as the motion to the beginning of the line.

If you type `^` with no operator, the cursor moves to the beginning of the line. Move is the default, so if a motion is specified with no operator the cursor will move and no action performed.

## VISUAL Mode

The second way of defining a pair is in VISUAL mode, you do the opposite. You specify the motion part first by selecting, and then specify the operator for what is highlighted.

Using same example, delete to beginning of line. Type `v` to enter VISUAL mode, then type `^` as the motion to the beginning of the line, then type `d` to delete.

This is obviously an extra step to select the text, but VISUAL mode shows you what is highlighted and being acted upon. Additionally, there is feedback when the operator is complete since the selection will no longer be highlighted.

Copy buffer in NORMAL mode using `ggyG`, but I prefer selecting. I see what is highlighted and get feedback when the yank operation is performed.

I find the feedback useful, particularly when copying.

For example, copying a whole buffer using VISUAL mode: Type `gg` to move to the top of the file, `shift-v` to enter VISUAL LINE Mode, and then `G` will move to end of file selecting all the lines. With the subject highlighted, use `y` to copy.
