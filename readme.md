## Desktop Environment Installer (LXQt Variant) For Arch Linux.

**Disclaimer!**<br/>
This script was made for any Debian Based Distros that runs inside Proot, it won't work outside Proot (unless if you're brave enough to broke your Termux), but don't worry, the script won't run if you accidentally execute it outside Proot Container.

## To sum it all,again.....
A super simple script (not gonna lie) to install LXQt Desktop Environment for Arch/Manjaro Linux, it won't work outside these distros.

# Yeb, it has some depedencies too, pal....

1. sudo
2. procps

Can be satisfied by running `installdeps.sh` anyway....<br/>
Easy, right?<br/>
Of course! *I do care about those Debian users that somehow gets lost inside RHEL based Linux.*<br/>

# Here comes the features!

1. Nothing, just clone it and run it....

# How to basic.

Copy Paste this commands :<br/>
```
pacman -Syu
pacman -S git
git clone https://github.com/datbadwolf97/d_e-installer-arch-proot-lxqt
cd d_e-installer-arch-proot-lxqt-termux
chmod u+rwx installer.sh installdeps.sh
```
Then make it happen by :<br/>
```
bash installdeps.sh && bash installer.sh
```
## Future plannings.

1. Multimedia installer improvements.
2. Code optimisations.
3. More perks.
4. Some cute anime characters that dances inside this script.
5. Back to number two.

## Special thanks to.
[Yonle](https://github.com/Yonle)<br/>
He's a good guy, trust me, he helped me for all of these mess...<br/>
[Myself because nobody wants to make it](https://github.com/datbadwolf97)
## Another one...
[Desktop Environment Installer For Debian/Ubuntu (XFCE4 Variant) - PROOT Termux.](https://github.com/datbadwolf97/d_e-installer-proot-termux)
[YTMSDLv2 - A simple yet powerful YT Music Downloader](https://github.com/datbadwolf97/YTMSDLv2).<br/>
ID - [Sekrip Gabut - For those whom needs it, well, nobody need it anyway....](https://github.com/datbadwolf97/skrip-gabut)

## Extras

→ This script was entirely made in [Lenovo Thinkpad L540](https://www.lenovo.com/ph/en/commercial-notebook/thinkpad/thinkpad-l-series/L540/p/22TP2TBL540).<br/>
→ Call me a n00b because I'm using [nano](https://www.nano-editor.org/) as my main text editor, well, you can't blame on me since nano was easy to use.<br/>
→ [Proot-Distro](https://github.com/termux/proot-distro), a great Termux toolset for installing latest Linux Distros, unlike [Andronix](https://github.com/AndronixApp/AndronixOrigin), they're all outdated and mostly LTS.<br/>
→ Of course, our main star, it's [Proot](https://github.com/termux/proot)!<br/>
→ *Something's hiding inside this script, can you find it?*
