# DistributionCalculator Package

This package provides a shiny app that helps you to easily calculate the distribution of a sample, with a specific size, mean and you can choose between two types of distribution, Exponential and Normal. 
In the case of Normal disribution, it is important to indicate even the standard deviation, otherwise an error message appears: "invalid number of 'breaks'".

## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/be4dd3dd')
```

## Usage

```R
# load the package
require(DistributionCalculator)
```


### Shiny App

The function `anna_app()` runs without object.
The function `anna_app` runs a Graphical User Interface that shows graphically the distribution.

```R
anna_app()
```



