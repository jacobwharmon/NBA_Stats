function(input, output, session) {

  # Combine the selected variables into a new data frame
  # selectedData <- reactive({ data[, c(input$xcol, input$ycol)] })
  
  observeEvent(eventExpr = c(input$xcol, input$ycol, input$years),
    {
      data2 <- data %>% filter(season == input$years)
      xval <- data2[, input$xcol]
      yval <- data2[, input$ycol]
      output$plot1 <- renderPlotly({
                          a <- ggplot() +
                          geom_point(mapping = aes(xval, yval, text = paste(data2$name,"-", data2$team.x))) +
                          xlab(input$xcol) +
                          ylab(input$ycol)
                          ggplotly(a, tooltip = "text")
      }) 
    })
  
}
