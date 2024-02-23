# Load necessary libraries
library(shiny)
library(plotly)

# Define the UI
ui <- fluidPage(
  titlePanel("Plotting Data in Shiny"),
  sidebarLayout(
    sidebarPanel(
      # You can add input widgets here if needed
    ),
    mainPanel(
      plotlyOutput("plot")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  
  # Sample data
  x <- c(1, 2, 3, 4, 5)
  y <- c(2, 4, 6, 8, 10)
  
  # Create a plot
  output$plot <- renderPlotly({
    plot_ly(x = x, y = y, type = 'scatter', mode = 'lines')
  })
}

# Run the application
shinyApp(ui = ui, server = server)
