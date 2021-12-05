## This .dotfiles are manage with gnu-stow
```sh
  stow --adopt -vt ~ *  #all
  stow --adopt -vt ~ vim #for only vim
```
### install apps
- Backup the packages
```sh
yay -Qqe > packages.txt   # Resulting file includes all explictly installed native and aur packages.
                          # you cam use 'pacman' or 'yay'
```
- Restore the packages
```sh
yay -S --needed - < packages.txt
```