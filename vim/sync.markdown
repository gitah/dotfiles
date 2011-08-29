# Windows #
mklink /D "%HOMEPATH%\vimfiles" "%HOMEPATH%\Dropbox\dotfiles\vim\vimfiles"
mklink "%HOMEPATH%\_vimrc" "%HOMEPATH%\Dropbox\dotfiles\vim\_vimrc"

# UNIX #
ln -s ~/Dropbox/dotfiles/vimfiles ~/vimfiles
ln -s ~/Dropbox/dotfiles/\_vimrc ~/.vimrc
