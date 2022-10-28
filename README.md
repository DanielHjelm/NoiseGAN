# Noise generation for neutrino simulations using Generative Adversarial Networks 

This repository contains all the code for the Noise generation for neutrino simulations using Generative Adversarial Networks project. The projected which was done as an Erasmus Internship between 29/8-28/10/22 by Daniel Hjelm. The project outline was done within the guidelines of the course [Project in Embedded Systems](https://www.uu.se/en/admissions/freestanding-courses/course-syllabus/?kpid=29423&kKod=1TE721) and the report is available [here](https://drive.google.com/file/d/1ZfqVr4L8ocML3DDFMSNtupJ6pZiTY1Fk/view?usp=sharing).
<!-- Report available here: [report](https://github.com/nu-radio/NuRadioMC) -->


## Installation

```bash
$ git clone git@github.com:DanielHjelm/NoiseGAN.git
$ cd NoiseGAN/
$ sudo pip3 install -r requirements.txt
```

## Usage

### How to generate noise

```python

# Import NoiseGenerator class
from noiseGenerator import NoiseGenerator

# Create NoiseGenerator
noiseGenerator = NoiseGenerator(path_to_generator = 'models/best/', path_to_data='data/data_example.npy')

# Decide how many noise events to generate
number_of_events = 100

# Generate noise using NoiseGenerator
test = noiseGenerator.generate_noise(number_of_events, normalized=False)

```
Another way to generate noise without the NoiseGenerator class is displayed in [generateNoise.ipynb](https://github.com/DanielHjelm/NoiseGAN/tree/main/models/generateNoise.ipynb)
 in the [models](https://github.com/DanielHjelm/NoiseGAN/tree/main/models) folder.
### Data

An small subset of the actual raw and preprocessed data is available in the [data](https://github.com/DanielHjelm/NoiseGAN/tree/main/data) folder.
There is not enough to train the network but it at least gives an good overview on how
the data looks like.

The code for how the data is created and preprocessed is in the files named [create_data.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/create_data.py) and [data_preprocessing.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/data_preprocessing.py) respectively.

### Models

Several models are available in the [models](https://github.com/DanielHjelm/NoiseGAN/tree/main/models) folder. The model called 2048 is generating traces with 2048 samples. However, this model was not investigated in detail or optimized which is reflected in the performance.

Example on how to load, train and analyze the performance of a model is shown in the [train.ipynb](https://github.com/DanielHjelm/NoiseGAN/tree/main/models/train.ipynb) notebook in the same folder.


### WGAN implementation

The code for the implementation of the GANs is in [wgan.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/wgan.py), [generator.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/generator.py) and [discriminator.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/discriminator.py).

### Metrics

The code for the statistical and visual metrics are in [analyze.py](https://github.com/DanielHjelm/NoiseGAN/blob/main/analyze.py).
The code for the astroparticle tests are in the folders [template](https://github.com/DanielHjelm/NoiseGAN/blob/main/template) and [threshold](https://github.com/DanielHjelm/NoiseGAN/blob/main/threshold).

## Contact
Created by [Daniel Hjelm](mailto:dnl1@live.se) - feel free to contact me!



