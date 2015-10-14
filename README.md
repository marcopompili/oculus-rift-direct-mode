# oculus-rift-direct-mode
My X.Org configuration and scripts used to emulate direct mode on Linux.

I've been testing the Rift on Linux for a while and I came out with a 
convenient way of emulating the Direct Mode on Linux.

## Configuration
The folder xorg.conf.d contains a modular X.Org configuration, you will probably
need change some entries to make it work on your setup, but it gives an idea
on how X.Org should treat the Rift as another Screen.

Here's my article about configuring the Rift:
http://blog.emarcs.org/oculus-rift-direct-mode-on-linux/

## Using the scripts
Use the __rift_switch__ command using *on* or *off* to switch the Rift state:

```sh
rift_switch on
```
Use the __rift_run__ command to run a Rift application directly on the Rift, for example:

```sh
rift_run ./Rift_App
```

__rift_run__ will check the Rift state and turn it on using the __rift_switch__ command,
then launch the application on the Rift's X.Org Screen.

If you quit the Rift application using CTRL+C, the script will handle that and switch
off the Rift.

#### Notes
https://codelab.wordpress.com/2015/04/02/proper-oculus-rift-dk2-setup-on-gnulinux/
