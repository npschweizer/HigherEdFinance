library(shiny) 
library(dplyr)
library(ggplot2)
function(input, output, session) { 
  observe({
    Type <- unique(df_tot[Type == input$Type, Type]) 
  updateSelectizeInput(
    session, "Type",
    choices = Type,
    selected = Type[1])
  })
  output$Type <- renderPlot( #what do I replace output$count with?
    df_tot %>%
      filter(Type == input$Type & SpendingExceedsTuition == input$SpendingExceedsTuition) %>%
      ggplot(df_tot,
             aes(
               x = "",
               y = "count",
               fill = SpendingExceedsTuition
             )) + geom_bar(width = 1, stat = "identity") + coord_polar("y", start = 0)
  )
  
  output$delay <- renderPlot(
    flights %>%
      filter(., origin == input$origin & dest == input$dest) %>%
      group_by(carrier) %>%
      summarise(
        n=n(),
        departure = mean(depdelay),
        arrival = mean(arr_delay)
        ) %>%
        gather(
          key = type,
          value = delay,
          delay, departure, arrival
        ) %>%
      ggplot(aes(x = carrier, y = delay, fill = type)) +
      geom_col(fill = "lightblue") +
      ggtitle("Average Delay")
  )
  output$source <- renderTable(
    flights
  )
  }

