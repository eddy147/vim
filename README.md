# From Vanilla VIM to IDE 
[https://www.tonybtw.com/tutorial/vim/](https://www.tonybtw.com/tutorial/vim/)
 
## Steps:

git clone this repo in ~/.vim

[~/.vimrc]

```
source ~/.vim/vimrc
```

## Adding plugins

Add plugin in plugins.vim, and run

```
:so
```

## Converting identifier case

Use `<leader>cc` for `camelCase` and `<leader>cs` for `snake_case` on the
word under the cursor or a Visual selection. The leader key is Space.

`:CamelCase` and `:SnakeCase` convert the current line; they also accept line
ranges and Visual selections. Identifier letters are limited to ASCII.

