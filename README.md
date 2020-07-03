# Fractal Relational Match-to-Sample Task

This repository contains code and files for the relational match-to-sample tasks used in

Kmiecik, Perez, and Krawczyk (in press). Navigating Increasing Levels of Relational Complexity: Perceptual, Analogical, and System Mappings. _Journal of Cognitive Neuroscience_.  
This task was developed in the [Krawczyk Reasoning Lab](https://www.utdallas.edu/reasoninglab/) at The University of Texas at Dallas. Please direct any questions to [Matt Kmiecik](https://mattkmiecik.com/cv.html) via email: mkmiecik14@gmail.com. See the above referenced publication for methodological details.

We hope that those interested in relational reasoning and relational complexity find our materials useful and helpful in their own work. 

# Contents

The fractal-like images used in experiment 1 and 2 were generated based on an algorithm described in Miyashita et al. (1991) that I used to loosely code a MATLAB script. This script is titled `Miyashita1991.m`. When run, this script will ask how many images you would like to create. After typing in a number it will generate them in the present working directory.

*Note.* Because this script utilizes random numbers to generate fractal-like shapes, it will generate a new set each time. If this is not desired, simply use the `rng` function to set the seed: https://www.mathworks.com/help/matlab/ref/rng.html

Experiments 1 and 2 are contained in their separate folders. They are identical except for a single line of instructions in Experiment 2 and contain the e-Prime 2.0 Studio and Run files, as well as the original and resized images.

*Note.* These experiments were programmed and administered using a 17 inch Dell LCD monitor (1280 x 1024); therefore, the e-prime experiments contain image placements that are hardcoded for this resolution. It will be necessary to adapt the locations of the stimuli so that they are appropriate for your screen's size and resolution. In other words, running the experiments on your machine without changing the location of the stimuli will result in displaced stimulus locations.

Counterbalancing and stimulus presentation order were organized using the `fractalExperiment.xlsx` Excel spreadsheet.

