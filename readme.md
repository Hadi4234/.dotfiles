## This .dotfiles are manage with gnu-stow
- Stow add
```sh
  stow --adopt -vt ~ *  #all
  stow --adopt -vt ~ vim #for only vim
```
- Stow remove
```sh
   stow -vDt ~ vim
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
