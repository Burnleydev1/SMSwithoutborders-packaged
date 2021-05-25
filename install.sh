#!/bin/bash


# fetch submodules
git submodule update --init --recursive

# mkdir at ~ and move files to there
mkdir -p $HOME/smswithoutborders/
