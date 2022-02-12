+++
title = "Writing"
weight = 210
+++

## Vim for Writing

Vim is my primary tool for writing, it is great not just for programming, but also for writing documentation, blog posts, or whatever you need. See Vim Wiki.

## Spellcheck

See `:help spell` Vim has a built-in spellcheck, by default it is off. You can turn it on using `:setlocal spell`. To turn it off again, use `:set nospell`

I map `F5` to toggle spellcheck using the following in my config:

```
" Toggle Spellcheck
:noremap <F5> :setlocal spell! spelllang=en_us<CR>
```

With spellcheck on, the misspelled words are highlighted.

Use `]s` to navigate to the next misspelled word.

Use `z=` to open a list of suggested text to replace misspelled word.

Use `zg` to add the word to your spellfile, telling vim it is correctly spelled.

## Grammar Checking

I use the [wordy plugin](https://github.com/reedes/vim-wordy) for grammar checking. Wordy is a collection of special dictionaries that are used to provide a wide range of rules to check against. For example, business-jargon, weasel words, or passive-voice to name a few.

You run the plugin to check your text using `:Wordy [rule]` typing tab will show the full list of available rules.

For example, `:Wordy passive-voice` will check the text for use of the passive voice and highlight similar to spellcheck. Use `]s` to navigate to the highlighted text.

Use `:NoWordy` to turn off, or since Wordy uses the same spellcheck mechanism, I use my `F5` mapping to turn off.

See the [Wordy Github repository](https://github.com/reedes/vim-wordy) for full documentation.

This is a new word

## Word Counts

Type `g ctrl-g` to get a list of document information including character and wordcount.

I use the [Lightline plugin](https://github.com/itchyny/lightline.vim) for a fancy status line. See [my dotfiles](https://github.com/mkaz/dotfiles/blob/master/rcfiles/.vimrc) for my configuration to display the word count.

## How to type digraphs

See `:help digraph` A digraph is a character that cannot by entered by an ordinary keyboard. For example, with standard US keyboards digraphs are the numerous accent characters not part of the English language.

To type a digraph, in INSERT mode, type `ctrl-k {char} {char}`

The first character is the letter, the second the additional mark. For example, to add an tilde over an n, I would type `ctrl-k n ~` which gives me the Spanish `ñ` character.

Here are a set of the most common examples, see `:help digraphs-default` for a more complete list.

`!` or `` ` ``  
: Grave accent `à è ì ò ù`

`'`  
: Acute accent `á é í ó ú`

`>`  
: Circumflex `â ĉ ê ĝ ô û`

`?` or `~`  
: Tilde `ã ñ`

`:`  
: Diaeresis `ä ë ö ü`

## Extended ASCII

Digraphs are also used beyond accents; they include extended ASCII characters. Here are a few fun ones.

`0u` and `0U`  
: ☺ and ☻

`*1` and `*2`  
: ☆ and ★

`OK` and `XX`  
: ✓ and ✗

See the full table of all digraphs using `:digraphs`
