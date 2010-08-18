my .vim folder
==============
2010-08-18 11:19:16 Commands to set up vimrc link
Linux:
  ln -s .vim/vimrc .vimrc
Windows:
  mklink .vimrc .vim\vimrc

2010-08-03 14:44:24 Added [supertab](http://www.vim.org/scripts/script.php?script_id=1643)

2010-07-23 16:17:56 - Added [git-vim](http://github.com/motemen/git-vim)  Had to add runtime path to .vimrc to get vim to see plugins on Windows.  Also interesting, this only works if you open a file directly with vim, not with :e.  Otherwise git fails because it doesn't think it's in the repository.  I'm going to test at home on my mac to see if this is a Windows issue or a vim issue.


2010-07-23 - Added ir_black colorscheme taken from http://blog.infinitered.com/entries/show/8

