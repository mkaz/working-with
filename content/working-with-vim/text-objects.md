+++
title = "Text Objects"
weight = 80
+++

# Text Object Selection

See `:help text-object` Vim can operate on text based on its objects and structure. The inner object `i` is quite useful to select chunks of text inside parentheses, brackets, quotes, tags and other pairs, use `a` to also select the delimiters.

An example might help illustrate. To select text inside an html tag you can use the tag text object `t`. With your cursor between the tags, use `v` to enter visual mode, `i` for inner, `t` for tag. So `vit` will select interior content between two tags. Use `vat` to select content with tags. Using tag selection

## Selection Commands

`(`  
: Parentheses

`{` `[` `>`  
: Brackets

`'` `"` `` ` ``  
: Quotes and Ticks

`t`  
: Tag block

`w`  
: Words

`s`  
: Sentences

`p`  
: Paragraphs

Combine the text objects with operators. For example, to copy the arguments in a function use `yi(`

If you want delete a block of code in a `{ ... }` with your cursor inside the block, type `di{`

For text in quotes, type `yi"` to copy the word without the quotes. If you want copy to include the quotes use `a` instead of `i`.

💡 Use the inner selection motion with the cursor in the middle of a word, sentence, or paragraph to select the full object, without having to first navigate to the start.
