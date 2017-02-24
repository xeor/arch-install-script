# arch install script
This is a small set of scripts to help on installing arch linux from their own iso (no arch-anywhere or similar).

NOTE: Currently, most of the settings in these scripts are just hardcoded. This is basically personal scripts open-sourced if someone else might need them :)

WARNING: Check the scripts first. They might damage your system. When I needed this, the system was clean and I could wipe the partition-table without thinking more about it.

WARNING 2: I am using my own ssh public key in this setup... Make sure you edit them as you want! This script bundle will NOT work for you out of the box.

## How to use
Download the scripts from the internet when you have booted the arch installer.
A simple `curl https://tinyurl.com/xeor-arch | sh` should do the trick

To install, run them one by one by number. You only haveto run a number once, but there can be multiple ways of executing a step. Example, if there are two scripts, `3_boot-bios.sh` and `3_boot-efi.sh`, you should only execute one. You might also want to edit them before executing, as they might contain stuff like what hostname you want.

