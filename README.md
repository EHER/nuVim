# 🗡️  nuVim

Personalized Neovim configuration crafted for efficient PHP coding

## Revealing the Chronicles of Configuration

Before setting sail on this journey, ensure that Neovim graces your digital
shores (an absolute necessity!). Steer towards the latest iteration of Neovim,
for it offers a treasure trove of new features. However, it may also harbor
a few bugs, adding a hint of adventure.

For those venturing into the realm of PHP, let 'phactor' accompany you as the
language server, illuminating the path forward.

If you possess a previous configuration, a rebirth awaits. A simple renaming
will grant it a new identity:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

On the Linux landscape, the sanctuary of Neovim configuration resides within
~/.config/nvim. To fully embrace this configuration, a direct transplant
awaits—a swift cloning of its essence:

```bash
git clone https://github.com/EHER/nuVim.git ~/.config/nvim
```

However, if you wish to partake only in certain aspects of the symphony, fear
not! The canvas is yours to explore and select, guided by your sensibilities.

So, armed with quill and curiosity, I bid you: Embrace the journey, for the
script is yours to command.

## A Voyage Through dotFiles

Gather 'round as I unveil the reimagined saga of my Neovim configuration—a tale
woven from simplicity intertwined with potent capabilities. Once upon a code,
my previous dotFiles danced to the rhythm of composability and flexibility,
a harmonious symphony. But with a new dawn, a different narrative emerged.

In this chapter, I embarked on a quest to free my configuration from the
shackles of external plugins. A journey of discernment led me to select only
the essential elements, discarding the superfluous. These chosen companions,
unencumbered by project-specific dependencies, vowed to traverse far and wide,
gracing any realm with their presence.

Yet, fear not, for the fundamental incantations remain etched within the sacred
scroll of :help, guiding all seekers. And should the need arise, the digital
ethers hold boundless knowledge to be discovered.

Within this rejuvenated configuration, you shall uncover the essence of my most
traveled paths—a reflection of my digital wanderings. Behold, not merely
a blueprint, but an artist's palette, inviting all to unleash creativity upon
its canvas.

So, with curiosity as your compass, step into this realm. Uncover its secrets,
weave your own chapters, and let your story intertwine with the ongoing epic of
my Neovim renaissance.

## Keymap

The leader key is <kbd>space</kbd>

 - <kbd>K</kbd> Show hover information
 - <kbd>[</kbd> <kbd>b</kbd> Previous buffer
 - <kbd>]</kbd> <kbd>b</kbd> Next buffer
 - <kbd>ctrl</kbd>+<kbd>z</kbd> Toggle the terminal
 - <kbd>ctrl</kbd>+<kbd>q</kbd> Force quit
 - <kbd>ctrl</kbd>+<kbd>s</kbd> Force save
 - <kbd>g</kbd> <kbd>D</kbd> Go to type declaration
 - <kbd>g</kbd> <kbd>I</kbd> Go to implementation
 - <kbd>g</kbd> <kbd>y</kbd> Go to type definition
 - <kbd>space</kbd> <kbd>\</kbd> Split the window horizontally
 - <kbd>space</kbd> <kbd>b</kbd> <kbd>b</kbd> Show buffers
 - <kbd>space</kbd> <kbd>b</kbd> <kbd>h</kbd> Hide other buffers
 - <kbd>space</kbd> <kbd>c</kbd> Close the current buffer
 - <kbd>space</kbd> <kbd>e</kbd> Open file explorer
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>C</kbd> Find commands
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>H</kbd> Find help
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>c</kbd> Find word under the cursor
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>e</kbd> Find files (explorer)
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>f</kbd> Find files
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>g</kbd> Find git files
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>h</kbd> Find history
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>o</kbd> Find visited paths
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>w</kbd> Find word
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>A</kbd> Git commit amend
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>B</kbd> Git branch
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>C</kbd> Git commits on current buffer
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>D</kbd> Git diff all files
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>P</kbd> Git push
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>a</kbd> Git add
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>c</kbd> Git commit
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>d</kbd> Git diff current buffer
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>g</kbd> Open lazygit
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>h</kbd> Preview git hunk
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>p</kbd> Git pull
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>s</kbd> Git status
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>t</kbd> Open tig
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>D</kbd> Document diagnostics
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>R</kbd> Show references
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>a</kbd> Code actions
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>d</kbd> Go to type definition
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>d</kbd> Line diagnostics
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>f</kbd> Format code
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>k</kbd> Show signature help
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>r</kbd> Rename
 - <kbd>space</kbd> <kbd>o</kbd> Focus files explorer on buffer path
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>M</kbd> Update Mason plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>m</kbd> Manage Mason plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>u</kbd> Update plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>x</kbd> Clean plugins
 - <kbd>space</kbd> <kbd>q</kbd> Quit
 - <kbd>space</kbd> <kbd>s</kbd> <kbd>s</kbd> Select colorscheme
 - <kbd>space</kbd> <kbd>s</kbd> <kbd>s</kbd> Write curent colorscheme as nuvim
 - <kbd>space</kbd> <kbd>u</kbd> <kbd>e</kbd> Open the user configuration file
 - <kbd>space</kbd> <kbd>u</kbd> <kbd>o</kbd> Source the user configuration file
 - <kbd>space</kbd> <kbd>w</kbd> Write the current buffer (save)
 - <kbd>space</kbd> <kbd>|</kbd> Split the window vertically
