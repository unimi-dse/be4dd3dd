# DistributionCalculatorAlcons Package

This package provides a shiny app and a dataset with correlated plot.
The shiny app helps you to easily calculate the distribution of a sample, with a specific size, mean and you can choose between two types of distribution, Exponential and Normal. 
In the case of Normal disribution, it is important to indicate even the standard deviation, otherwise an error message appears: "invalid number of 'breaks'".
Tha plot 

## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/be4dd3dd')
```

## Dataset

The package provides a dataset containing information of the alcohol 

```R
# dataset documentation
?sample::repo
```

## Usage

```R
# load the package
require(sample)
```

### Grade

The function `grade()` evaluates the projects of the exam _Coding for Data Science and Data Management_, R module (2019/2020) from https://github.com/unimi-dse. It supports grading multiple (all) projects at once, and storing results into a csv file. Type `?grade` for a complete description of the function and its arguments.

__Note__: running the function several times or grading many projects at once may raise the error "API rate limit exceeded [...]". If so, create a GitHub token to authenticate requests and increase your rate limit, as explained in the error message.

### Fibonacci

The function `fibonacci()` is implemented in C++ and computes the Fibonacci Sequence.

```R
fibonacci(15)
```

### Shiny App

The function `sampleGUI()` runs a Graphical User Interface to evaluate the projects from https://github.com/unimi-dse 

```R
sampleGUI()
```

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


