# 🗡️  nuVim
Personal Neovim config tailored for productive PHP coding

## Main keys

The leader key is <kbd>space</kbd>

 - <kbd>space</kbd> <kbd>-</kbd> open left panel with files on the same path as the current file
 - <kbd>space</kbd> <kbd>/</kbd> search in files for the word under the cursor
 - <kbd>space</kbd> <kbd>k</kbd> open search result on the botton panel  
 - <kbd>space</kbd> <kbd>a</kbd> give code options based on the cursor position 
 - <kbd>space</kbd> <kbd>b</kbd> open buffer selection window 
 - <kbd>space</kbd> <kbd>c</kbd> open command selection window 
 - <kbd>space</kbd> <kbd>d</kbd> go to the definition of the element under the cursor 
 - <kbd>space</kbd> <kbd>g</kbd> open window to select a file tracked on git 
 - <kbd>space</kbd> <kbd>h</kbd> display information about what is under the cursor 
 - <kbd>space</kbd> <kbd>i</kbd> look up for implementations of the element under the cursor
 - <kbd>space</kbd> <kbd>l</kbd> apply code style fix 
 - <kbd>space</kbd> <kbd>n</kbd> open left panel with files on the root of the project 
 - <kbd>space</kbd> <kbd>o</kbd> keep just the current file visible 
 - <kbd>space</kbd> <kbd>r</kbd> rename the element under the cursor 
 - <kbd>space</kbd> <kbd>s</kbd> open git status on the top panel 
 - <kbd>space</kbd> <kbd>y</kbd> go to the definition of the type under the cursor 


## Unveiling the Configuration Chronicles
To embark on this voyage, you must first ensure the presence of Neovim on your
digital shores (an evident necessity!). As the stars above beckon, it is
advisable to steer your ship in the direction of the latest Neovim iteration.
This choice promises access to a treasure trove of new and dazzling features,
albeit with a few lurking bugs that add a touch of adventure.

For those whose journey includes the realm of PHP, a trusty companion by the
name of 'phactor' shall join as the language-server, illuminating the path
ahead.

Upon the Linux landscape, the sanctum of NeoVim configuration rests within
`~/.config/nvim`. For an exclusive embrace of this configuration's embrace, a
direct transplant awaits—a swift cloning of its essence:

```shell
git clone https://github.com/EHER/nuVim.git ~/.config/nvim
```

Should you possess a prior configuration, a rebirth is in order; a mere
renaming shall grant it a new identity:

```shell
mv ~/.config/nvim ~/.config/nvim.old
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
