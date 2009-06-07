# ck-rockband #

ChucK program that lets you play your Rock Band USB drum kit on a computer.

## Prerequisites ##

- [ChucK](http://chuck.cs.princeton.edu/)
- [XBox 360 Controller](http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller)

### Optional ###

- [Cymbal samples](http://www.freesound.org/packsViewSingle.php?id=889)
- [Drum samples](http://www.freesound.org/packsViewSingle.php?id=890)

## Installation ##

Once chuck and the XBox drivers are installed, unzip both sample zip files in
the same a subdirectory called data.

## Running ##

To start playing, in a terminal, type:
    chuck drumkit.ck

To record yourself, download
[rec-auto.ck](http://chuck.cs.princeton.edu/doc/examples/basic/rec-auto.ck) in
the same directory and type:
    chuck drumkit.ck rec-auto.ck

