#' @title plotalcons function
#'
#' @description The "plotalcons" function is an easy way to visualize the dependence of the tranquilizer frequency on the tranquilizer use.
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


plotalcons <- function () {
  ggplot2::ggplot(data=alcons,
                  ggplot2::aes(x=alcons$beer_servings, y=alcons$country, col=alcons$total_litres_of_pure_alcohol)) +
    ggplot2::geom_point()+
    ggplot2::geom_abline()

}

