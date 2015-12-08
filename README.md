# oculus-rift-direct-mode

My X.Org configuration and scripts used to emulate direct mode on Linux.

I've been testing the Rift on Linux for a while and I came out with
a (almost) convenient way of emulating the Direct Mode on Linux.

## Configuration

The folder xorg.conf.d contains a modular X.Org configuration, you
will probably need to change some entries in __30-monitor.conf__ to
make this work on your setup, but it gives an idea on how X.Org
should treat the Rift as another Screen.

Here's my article about [configuring the Rift on Linux](http://blog.emarcs.org/oculus-rift-direct-mode-on-linux/)

## Using the scripts

Use the __rift_switch__ command using *on* or *off* to switch the Rift state:

```sh
rift_switch on
```

Use the __rift_run__ command to run a Rift application directly on the Rift,
for example:

```sh
rift_run ./Rift_App
```

__rift_run__ will check the Rift state and turn it on using the __rift_switch__
command, then launch the application on the Rift's X.Org Screen.

If you quit the Rift application using CTRL+C, the script will
handle that and switch off the Rift.

## Known Issues

*   With the NVidia proprietary driver On MATE, Xfce and LXDE if you
are using multiple displays the desktop area will cover both the
displays resulting in a huge desktop size spanning on both the
two monitors.

*   As noted above use this configuration only on Gnome 3 or KDE,
if you are using multiple displays.

*   On Gnome 3 when switching on/off the Rift some screens may get
corrupted, to restore them press ALT+F2 and put __r__ as a command
to refresh the Gnome desktop, the image should get normal again.

## Notes

*   [Proper oculus rift DK2 setup on linux](https://codelab.wordpress.com/2015/04/02/proper-oculus-rift-dk2-setup-on-gnulinux/)
*   [NVidia X.Org installation guide](http://us.download.nvidia.com/XFree86/Linux-x86/358.16/README/index.html)
*   [Configure multiple displays on one X screen](http://us.download.nvidia.com/XFree86/Linux-x86/358.16/README/configtwinview.html)
