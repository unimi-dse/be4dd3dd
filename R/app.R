#'description
#'
#'@export
appanna_app <- function() {

  library(shiny)
  ui <- pageWithSidebar(

    # App title ----
    headerPanel("Distribution Calculator by Anna Errichiello"),

    # Sidebar panel for inputs ----
    sidebarPanel(
      selectInput("Distribution","Please Select Distribution Type",
                  choices=c("Exponential","Normal")),
      sliderInput("sampleSize","Please Select Sample Size:",
                  min=100, max=5000, value=1000, step=100),
      conditionalPanel(condition = "input.Distribution == 'Normal",
                       textInput("Mean","Please Select the mean", 10),
                       textInput("sd","Please Select Standard Deviation")),
      conditionalPanel(condition="input.Distribution == 'Exponential",
                       textInput("lamda","Please Select Exponential Lamda:", 1))
    ),

    # Main panel for displaying outputs ----
    mainPanel(
      plotOutput("plot")
    )
  )


  server <- function (input, output, session) {

    output$`plot` <- renderPlot({

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

  shinyApp(ui=ui, server=server)

}
