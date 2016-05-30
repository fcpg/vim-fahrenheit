Vim-whiplash
=============
Whiplash colorscheme for Vim:

- Base16 theme for the standard 256-color palette of most terminals
- Terminal & GUI support
- Simple, clean code created with [vim-rng](https://gist.github.com/5cd2f4ec222805f49eca.git)
- Airline, Lightline & CtrlP support out-of-the-box
- IF YOU DON'T HAVE THIS THEME, YOU WIND UP PLAYING IN A ROCK BAND

Screenshots
------------
Taken on minTTY with Office Code Pro font:

[![](img/whiplash_vim_thumb.png)](img/whiplash_vim.png)


Palette
--------
![whiplash_palette](img/whiplash_palette.png)

|  Hex  | Term |
|-------|-----:|
|#ffffff|    15|
|#ffffd7|   230|
|#ffd7af|   223|
|#d7af87|   180|
|#af875f|   137|
|#d7875f|   173|
|#ffaf5f|   215|
|#ffd787|   222|
|#ffd75f|   221|
|#d75f00|   166|
|#870000|    88|
|#875f5f|    95|
|#5f87af|    67|
|#a8a8a8|   248|
|#262626|   235|
|#000000|     0|
                
Installation
-------------
1. Install the bundle:
  *  [Pathogen][1] - `git clone https://github.com/fcpg/vim-whiplash ~/.vim/bundle/vim-whiplash`
  *  [NeoBundle][2] - `NeoBundle 'fcpg/vim-whiplash'`
  *  [Vundle][3] - `Plugin 'fcpg/vim-whiplash'`
  *  manual - copy all of the files into your `~/.vim` directory
2. Append the following line to your .vimrc file:
```VimL
colorscheme whiplash
```

FAQ
----
- How do I customize colors?  
  *  Either edit the 'colors/whiplash.vim' file (it's plain vim 'highlight' commands), if you don't mind merging when pulling/updating;
  *  Or override with autocommands in you .vimrc:
```VimL
augroup myBetterColors
  au!
  autocmd ColorScheme *  hi! Number ctermfg=103
augroup END
```
- Some weird chars show up in my status line!  
  Check vim help for 'fillchars': `:h 'fcs`. The lightline theme use the 'stl'
  char in 'fillchars' if it is defined; unset it in your .vimrc to turn on the 
  "solid" status line.
  
License
--------
[Attribution-ShareAlike 4.0 Int.](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: https://github.com/tpope/vim-pathogen
[2]: https://github.com/Shougo/neobundle.vim
[3]: https://github.com/gmarik/vundle
