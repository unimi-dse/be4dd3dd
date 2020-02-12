#' @title alcons function
#'
#' @description The "alcons" function is an easy way to visualize the dataset
#'
#' The function needs the argument "alcons".
#' The output shows a graph built using the "ggplot2 package"
#'
#' @author Anna Errichiello <anna.errichiello@studenti.unimi.it>
#'
#' @export
#'
#'
#'
#'
#'
#'
#'
#'

alcons <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/alcohol-consumption/drinks.csv", sep=",")
head(alcons)
save(alcons, file="C:/Users/Anna Errichiello/Desktop/progetto/be4dd3dd/ShinyApp/be4dd3dd/data/alcons.rda")

