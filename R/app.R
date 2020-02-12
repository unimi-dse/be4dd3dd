#'description
#'
#'@export
anna_app <- function() {


  ui <- shiny::pageWithSidebar(

    # App title ----
    shiny::headerPanel("Distribution Calculator by Anna Errichiello"),

    # Sidebar panel for inputs ----
    shiny::sidebarPanel(
      shiny::selectInput("Distribution","Please Select Distribution Type",
                         choices=c("Exponential","Normal")),
      shiny::sliderInput("sampleSize","Please Select Sample Size:",
                         min=100, max=5000, value=1000, step=100),
      shiny::conditionalPanel(condition = "input.Distribution == 'Normal",
                              shiny::textInput("Mean","Please Select the mean", 10),
                              shiny::textInput("sd","Please Select Standard Deviation")),
      shiny::conditionalPanel(condition="input.Distribution == 'Exponential",
                              shiny::textInput("lamda","Please Select Exponential Lamda:", 1))
    ),

    # Main panel for displaying outputs ----
    shiny::mainPanel(
      shiny::plotOutput("plot")
    )
  )

  server <- function (input, output, session) {

    output$`plot` <- shiny::renderPlot({

      distType <- input$Distribution

      size <- input$sampleSize

      if(distType == "Normal"){

        randomVec <- rnorm(size,mean = as.numeric(input$Mean), sd=as.numeric(input$sd))
      }
      else {

        randomVec <- rexp(size,rate = 1/as.numeric(input$lamda))
      }

      hist(randomVec, col = "Pink")


    })
  }

  shiny::shinyApp(ui=ui, server=server)

}

if(getRversion() >= "0.1.0")  utils::globalVariables("shiny")


