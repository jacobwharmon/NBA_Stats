library(plotly)

vars <- colnames(data)[5:length(colnames(data))]
years <- c(2018,2019,2020)

pageWithSidebar(
  headerPanel('NBA Stats'),
  sidebarPanel(
    selectInput(inputId = 'years',
                label = 'Season',
                choices = years,
                selected = 2020),
    selectInput(inputId = 'xcol',
                label = 'X Variable',
                choices = vars,
                selected = "orb"),
    selectInput(inputId = 'ycol',
                label = 'Y Variable',
                choices = vars,
                selected = "drb")),
  mainPanel(
    plotlyOutput('plot1')
  )
)

