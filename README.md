# Fractal Relational Match-to-Sample Task

This repository contains code and files referenced in the Kmiecik et al. paper(s) on the relational match-to-sample task developed in the [Krawczyk Reasoning Lab](https://www.utdallas.edu/reasoninglab/) at The University of Texas at Dallas. Please direct any questions to [Matt Kmiecik](https://mattkmiecik.com/cv.html) via email: mkmiecik14 (at) gmail.com.

# Contents

The fractal-like images used in experiment 1 and 2 were generated based on an algorithm described in Miyashita et al. (1991) that I used to loosely to code a MATLAB script. This script is titled `Miyashita1991.m`. When run, this script will ask how many images you would like to create. After typing in a number it will generate them in the present working directory.

*Note.* Because this script utilizes random numbers to generate fractal-like shapes, it will generate a new set each time. If this is not desired, simply use the `rng` function to set the seed: https://www.mathworks.com/help/matlab/ref/rng.html

Experiments 1 and 2 are contained in their separate folders. They are identical except for a single line of instructions in Experiment 2 and contain the e-Prime 2.0 Studio and Run files, as well as the original and resized images.

Counterbalancing and stimulus presentation order were organized using the `fractalExperiment.xlsx` Excel spreadsheet.