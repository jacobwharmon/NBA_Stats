library(shiny)
library(tidyverse)
library(plotly)

data <- read.csv("2018_2020_nba_career_averages.csv")


# Run the application 
shinyApp(ui = ui, server = server)
