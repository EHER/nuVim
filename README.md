# 🗡️  nuVim
Personal Neovim config tailored for productive PHP coding

## Main keys

The leader key is <kbd>space</kbd>

 - <kbd>K</kbd> Show hover information
 - <kbd>[</kbd> <kbd>b</kbd> Previous buffer
 - <kbd>]</kbd> <kbd>b</kbd> Next buffer
 - <kbd>g</kbd> <kbd>I</kbd> Go to implementation
 - <kbd>g</kbd> <kbd>Y</kbd> Go to type declaration
 - <kbd>g</kbd> <kbd>y</kbd> Go to type definition
 - <kbd>space</kbd> <kbd>W</kbd> Write all buffers (save all)
 - <kbd>space</kbd> <kbd>b</kbd> <kbd>h</kbd> Hide other buffers
 - <kbd>space</kbd> <kbd>c</kbd> Close the current buffer
 - <kbd>space</kbd> <kbd>e</kbd> Toggle the file explorer
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>C</kbd> Find commands
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>H</kbd> Find help
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>b</kbd> Find buffers
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>c</kbd> Find word under the cursor
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>e</kbd> Find files (explorer)
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>f</kbd> Find files
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>g</kbd> Find git files
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>h</kbd> Find history
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>l</kbd> Find buffer lines
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>o</kbd> Find visited paths
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>s</kbd> Find LSP symbols
 - <kbd>space</kbd> <kbd>f</kbd> <kbd>w</kbd> Find word
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>b</kbd> Git branches
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>c</kbd> Git commits
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>g</kbd> Open lazygit
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>h</kbd> Git hunks
 - <kbd>space</kbd> <kbd>g</kbd> <kbd>t</kbd> Open tig
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>R</kbd> Show references
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>a</kbd> Code actions
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>d</kbd> Go to type definition
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>f</kbd> Format code
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>k</kbd> Show signature help
 - <kbd>space</kbd> <kbd>l</kbd> <kbd>r</kbd> Rename
 - <kbd>space</kbd> <kbd>o</kbd> Open the file explorer
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>M</kbd> Update Mason plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>m</kbd> Manage Mason plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>u</kbd> Update plugins
 - <kbd>space</kbd> <kbd>p</kbd> <kbd>x</kbd> Clean plugins
 - <kbd>space</kbd> <kbd>q</kbd> Quit
 - <kbd>space</kbd> <kbd>u</kbd> <kbd>e</kbd> Open the user configuration file
 - <kbd>space</kbd> <kbd>u</kbd> <kbd>o</kbd> Source the user configuration file
 - <kbd>space</kbd> <kbd>v</kbd> Toggle comment
 - <kbd>space</kbd> <kbd>w</kbd> Write the current buffer (save)

## Unveiling the Configuration Chronicles
To embark on this voyage, you must first ensure the presence of Neovim on your
digital shores (an evident necessity!). As the stars above beckon, it is
advisable to steer your ship in the direction of the latest Neovim iteration.
This choice promises access to a treasure trove of new and dazzling features,
albeit with a few lurking bugs that add a touch of adventure.

For those whose journey includes the realm of PHP, a trusty companion by the
name of 'phactor' shall join as the language-server, illuminating the path
ahead.

Should you possess a prior configuration, a rebirth is in order; a mere
renaming shall grant it a new identity:

```shell
mv ~/.config/nvim ~/.config/nvim.bak
```

Upon the Linux landscape, the sanctum of NeoVim configuration rests within
`~/.config/nvim`. For an exclusive embrace of this configuration's embrace, a
direct transplant awaits—a swift cloning of its essence:

```shell
git clone https://github.com/EHER/nuVim.git ~/.config/nvim
```

Yet, if the yearning is to merely partake in the symphony, to pick and choose
the notes that resonate, fret not! The canvas is yours to study and select,
guided by your sensibilities.

Thus, with quill in one hand and curiosity in the other, I bid you: Revel in
the journey, for the script is yours to embrace.

## A Journey Through dotFiles
Gather 'round as I unveil the reimagined saga of my Neovim configuration—a tale
spun from the threads of simplicity tightly woven with potent capabilities.
Once upon a code, my previous dotFiles danced to the rhythm of composability
and flexibility, a harmonious symphony. Yet, a new dawn broke, and with it, a
different narrative emerged.

In this chapter, I embarked on a quest to liberate my configuration from the
shackles of external plugins. A journey of discernment led me to select only
the quintessential elements, casting aside the superfluous. These chosen
companions, unburdened by the chains of project-specific dependencies, pledged
to journey far and wide, gracing any realm with their presence.

Ah, but worry not, for the basic incantations remain etched within the sacred
scroll of :help, a guidepost for all seekers. And should the need arise, the
digital ethers hold untold knowledge to be sought.

In the tapestry of this rejuvenated configuration, you shall uncover the very
essence of my most frequented pathways—a mirror to my own digital wanderings.
Behold, not merely a blueprint, but an artist's palette, inviting all to wield
creativity upon its canvas.

So, with curiosity as your compass, step into this realm. Unearth its secrets,
weave your own chapters, and let your story meld with the ongoing epic of my
Neovim renaissance.
