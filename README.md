# arch install script
This is a small set of scripts to help on installing arch linux from their own iso (no arch-anywhere or similar).

NOTE: Currently, most of the settings in these scripts are just hardcoded. This is basically personal scripts open-sourced if someone else might need them :)

WARNING: Check the scripts first. They might damage your system. When I needed this, the system was clean and I could wipe the partition-table without thinking more about it.

## How to use
Put the files in this project in a new partition on the installation usb. When you are done making the install-usb,
create a new partition from the free space left, and copy the files.

To install, run them one by one by number. You only haveto run a number once, but there can be multiple ways of executing a step. Example, if there are two scripts, `3_boot-bios.sh` and `3_boot-efi.sh`, you should only execute one.

