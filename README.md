# st
st with custom patches

Runtime Dependencies:
- fontconfig
- libXft

Buildtime Dependencies:
- pkg-config
- fontconfig-devel
- libXft-devel

Patches:
- alpha (https://st.suckless.org/patches/alpha/)
- boxdraw (https://st.suckless.org/patches/boxdraw/)
- clipboard (https://st.suckless.org/patches/clipboard/)
- anysize (https://st.suckless.org/patches/anysize/)
- bold is not bright (https://st.suckless.org/patches/bold-is-not-bright/)
- scrollback (https://st.suckless.org/patches/scrollback/)
- xresources (https://st.suckless.org/patches/xresources/)
- xclearwin (https://st.suckless.org/patches/xclearwin/)
- w3m (https://st.suckless.org/patches/w3m/)
- cwd (custom patch)

In order for the custom cwd patch to work, you must update the PWD
after every command using this snippet of code:
```sh
if [ "$DISPLAY" ]; then
	export PROMPT_COMMAND='echo -en "\033_;${PWD}\007\033]2;\007"'
	echo -en "\033_;${PWD}\007\033]2;\007"
fi
```
You can add it to your shell rc.
