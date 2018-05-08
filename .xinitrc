#!/bin/sh

xrdb -merge $HOME/.Xdefaults

export LIGHTMODE

env LIGHTMODE=1 notion
