# Unofficial Cider2 Flatpak

*If you're looking for the flatpak of **Cider Classic** you can find it [here](https://flathub.org/apps/sh.cider.Cider). This repository is only for Cider 2.*

A flatpak for the unofficial Apple Music client [Cider 2](https://cider.sh), which itself is a rewrite of [Cider Classic](https://cider.sh/classic).

**No support will be offered by the developers when using Cider2 as a Flatpak.** You should report issues with this flatpak package on this repository instead unless you can 100% confirm it is an upstream issue not caused by the flatpak.

## Installation

**Due to Cider 2 being a proprietary and paid application the AppImage that is required to build this flatpak has not been included in this repository.** You will pay for/login to [Cider2 on itch.io](https://cidercollective.itch.io/cider) in order to build & use this flatpak.

### Building

*This guide assumes you already have Flatpak & [Flathub](https://flathub.org/setup) installed and configured on your system.*

First and foremost you should [download](https://github.com/Blooym/sh.cider.Cider2/archive/refs/heads/main.zip) this repository locally **or** clone it using git to somewhere on your system and navigate into the folder in your terminal.

Now you will now need to download the newest Cider2 AppImage from itch.io and place it inside of the `bin` directory and rename it to `cider.AppImage` - this is the executable that will be turned into a flatpak application and installed locally.

In order to build the flatpak you need to install `flatpak-builder` using your distro package manager. this package is usually included in most major distro package repositories by default and should be easy to install.

Once you have `flatpak-builder` installed run either of the following commands inside of the repository directory to build the Cider2 flatpak.

To install for the current user only - *requires Flathub remote set up for the current user*

```sh
flatpak --user install app/org.electronjs.Electron2.BaseApp/x86_64/23.08 -y \
&& flatpak-builder build-dir --install --user --force-clean sh.cider.Cider2.yml \
&& flatpak --user remove app/org.electronjs.Electron2.BaseApp/x86_64/23.08 -y \
&& echo "Cider2 installed successfully."
```

To install system-wide - *requires root and Flathub remote set up for the entire system*

```sh
flatpak install app/org.electronjs.Electron2.BaseApp/x86_64/23.08 -y \
&& flatpak-builder build-dir --install --force-clean sh.cider.Cider2.yml \
&& flatpak remove app/org.electronjs.Electron2.BaseApp/x86_64/23.08 -y \
&& echo "Cider2 installed successfully."
```

A few seconds after the installation has finished you should see an application named `Cider` show up in your desktop environments applications list. Congratulations, you are finished.

After you confirm everything is working correctly you are safe to remove this repository from your system.

### Updating

To update in the future you can simply repeat the current process with the new `.AppImage` file from the release assets when a new one is available. If you kept this repository on your system after installing instead of deleting it, you should first run `git pull` to make sure it is fully up-to-date incase any new changes are present.