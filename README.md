# DistributionCalculatorAlcons Package

This package provides a shiny app and a dataset with correlated diagram.
The shiny app helps you to easily calculate the distribution of a sample, with a specific size, mean and you can choose between two types of distribution, Exponential and Normal. 
In case of Normal disribution, it is important to indicate even the standard deviation, otherwise an error message appears: "invalid number of 'breaks'".
The other part shows a graphic using the information taken from the dataset about the alcohol consumption.

## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/be4dd3dd')
```

## Dataset

The package provides a dataset containing information of the alcohol consumption in differnt countries, divided per "beer servings","wine_servings","spirit servings" considering average alcohol content and average serving size for each beverage and converting those numbers into standard serving sizes. For example french people consume more then wine than people of every other country, i.e. 370 glasses of wine per person per year, compared to just 84 glasses in the U.S. In the last column is indicated the standard amount of litres of pure alcohol consumed by people in each country.

```R
# dataset documentation
DistributionCalculatorAlcons::alcons
```

## Usage

```R
# load the package
require(DistributionCalculatorAlcons)
```

### plotalcons

The function `plotalcons` shows through a plot the relationship between "beer_servings", "country" and "total_litres_of_pure_alcohol". It takes the information from the dataset "alcons". 


### anna_app

The function `anna_app` runs a Graphical User Interface to easily calculate the distribution of a sample, with a specific size, mean and you can choose between two types of distribution, Exponential and Normal.

__NOTE__In case of Normal disribution, it is important to indicate even the standard deviation, otherwise an error message appears: "invalid number of 'breaks'".

```R
anna_app()
```
