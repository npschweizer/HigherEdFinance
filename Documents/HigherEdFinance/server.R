library(shiny) 
library(dplyr)
library(ggplot2)
function(input, output, session) { 
#  observe({
#    SpendExceedTuitionPie <- unique(df_tot[Type == input$Type, Type]) 
#  updateSelectizeInput(
#    session, "Type",
#    choices = Type,
#    selected = Type[1])
#  })
  output$SpendExceedTuitionPie <- renderPlot( 
    df_tot %>%
      filter(Type == input$Type) %>%
      ggplot(
             aes(
               x = "",
               y = "count",
               fill = SpendingExceedsTuition
             )) + geom_bar(width = 1, stat = "identity") + coord_polar("y", start = 0) + labs(x="", y="") 
                + ggtitle("Institutions Where Spending Exceeds Revenue") 
                + scale_fill_discrete(labels = c("Spending Does Not Exceed Tuition", "Spending Exceeds Tuition"))
                + theme(axis.title.x = element_blank())
  )
  output$SpendRevRatioDist <- renderPlot(
  df_tot%>%
    filter(Type==input$Type) %>%
    ggplot( aes(SpendtoRevenueRatio))
  + geom_freqpoly(aes(y=..count../sum(..count..)), binwidth=.01) + ggtitle("Instructional Spending to Tuition Revenue Ratio Distribution")
  + xlab("Instructional Spending Divided By Revenue from Tuition and Fees") + ylab("Percentage of Institutions") + xlim(0,2)
    +scale_y_continuous(labels = scales::percent_format())
  )
  
  output$SpendRevDiffOverRevPerScatter <- renderPlot(
    df_tot%>%
      filter(Type==input$Type) %>%
    ggplot(
    aes(
      y = Revenue.from.tuition.and.fees..minus.spending.on.instruction,
      x = Tuition.and.fees.revenue.as.percentage.of.all.revenue,
      fill = Total.enrollment..fall.2017
    )
  ) +
  #ylim(-10000000, 10000000) +
  scale_fill_gradient(low = "red", high = "blue") +
  geom_point() + 
    labs(y = "Revenue from Tuition and Fees Minus Spending on Instruction", x = "Tuition and Fees as Percentage of All Revenue") 
  )
  
  
  
  }

