</div>
<div align="center">
    <h1> Frogprog Vim Dotfiles</h1>
    <h4> A light Vim configuration for linux. With gruvbox (I absolutely looove gruvbox).</h4>
</div>
</div>

Hey! This is my useful yet light vim configuration, I've added here just a couple of plugins such as:
| Plugin | Name |
|---|---|
| File tree | [Nerdtree](https://vimawesome.com/plugin/nerdtree-red) |
| Parenthesis | [Pear-tree](https://vimawesome.com/plugin/pear-tree) |
| Easy comments | [Vim-commentary](https://vimawesome.com/plugin/commentary-vim) |
| Theme | [Gruvbox](https://vimawesome.com/plugin/gruvbox) |

I've tried to make vim more usable and still not bloated. Mostly I use vim for some fast and light editing, like fast fix in configs. For some heavy projects I prefer lunarvim (still haven't found anything better).

![image alt](https://github.com/FrogProg09/my-vim/blob/9a4dcf0d3dbbedc97d19d50aade3a02d7900f2c9/screenshots/vim_show.png)

## Insallation

Personally, I use vim-plug as a plugin manager for vim, so that is why you have to install it first in order to use my setup:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
This command will create all necessary direcotries and files

Next, if you still haven't done it, I recommend you install gvim instead of just vim, you don't have to use it if you don't want to, just type vim in the terminal as you normally would, but gvim package will ensure that every option of vim is enabled, for ex clipboard:

For Arch based distroes:
```bash
sudo pacman -Suy
sudo pacman -S gvim
```

For Debian based distroes:
```bash
sudo apt-get update
sudo apt-get install gvim
```

And to finally install my setup, you can run these 3 commands:
```bash
git clone https://github.com/FrogProg09/my-vim.git
cd my-vim
bash install.sh
```
Don't worry about your own configs, my setup will put them into ~/.vim-oldconfigs/*version* direcory.
Enjoy your new light setup!

## Copying
This repo is under **BSD-3** license, so if you want to do anyting with this project, do it! Just under BSD-3 license :D
