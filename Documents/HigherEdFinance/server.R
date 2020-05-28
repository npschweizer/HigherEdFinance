library(shiny) 
library(dplyr)
library(ggplot2)
library(DT)
shinyServer(function(input, output, session) { 
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
                + scale_fill_discrete(name = "", labels = c("Spending Does Not Exceed Tuition", "Spending Exceeds Tuition"))
                + theme(axis.title.x = element_blank()) + theme(legend.position = "bottom") 
  )
  output$SpendRevRatioDist <- renderPlot(
  df_tot%>%
    filter(Type==input$Type) %>%
    ggplot( aes(SpendtoRevenueRatio))
  + geom_freqpoly(aes(y=..count../sum(..count..)), binwidth=.1) + ggtitle("Instructional Spending to Tuition Revenue Ratio Distribution")
  + xlab("Instructional Spending Divided By Revenue from Tuition and Fees") + ylab("Percentage of Institutions") + xlim(0,2)
    +scale_y_continuous(labels = scales::percent_format()) 
  #+ theme(plot.title = element_text(size=22))
  )
  
  output$SpendRevDiffOverRevPerScatter <- renderPlot(
    df_tot%>%
      filter(Type==input$Type) %>%
    ggplot(
    aes(
      y = Revenue.from.tuition.and.fees..minus.spending.on.instruction,
      x = Tuition.and.fees.revenue.as.percentage.of.all.revenue
    )
  ) +
  ylim(-10000000, 10000000) +
  scale_color_gradient(low = "blue", high = "red") +
  geom_point() 
    +labs(y = "Revenue from Tuition and Fees Minus Spending on Instruction", x = "Tuition and Fees as Percentage of All Revenue") 
    +scale_y_continuous(labels = scales::dollar_format())
    +scale_x_continuous(labels = scales::percent_format())
    +ggtitle("Cost Difference as a Function of Revenue Proportions" )
  )
  
  output$SpendingPerStudent <- renderPlot(
    df_tot %>%
      filter(Type == input$Type) %>%
      ggplot(aes(SpendingPerStudent)) + geom_freqpoly(aes(y=..count../sum(..count..)), binwidth = 5000) 
    + ggtitle("Instructional Spending per Student")
    + xlim(0,50000)
    +scale_y_continuous(labels = scales::percent_format()) 
    +scale_x_continuous(labels = scales::dollar_format())
    + xlab("Instructional Spending Per Student")
    + ylab ("Percentage of Institutions")
  )
  
  output$RevenuePerStudent <- renderPlot(
    df_tot %>%
      filter(Type == input$Type) %>%
   ggplot(aes(RevenuePerStudent))
   + geom_freqpoly(aes(y=..count../sum(..count..)), binwidth = 5000)
   + scale_y_continuous(labels = scales::percent_format())
   + scale_x_continuous(labels = scales::dollar_format())
   + xlab("Revenue Per Student")
   + ylab ("Percentage of Institutions")
   + ggtitle("Revenue from Tuition and Fees per Student")
  )
  output$SpendingvsRevenue <- renderPlot(
    df_tot %>%
      filter(Type == input$Type) %>%
  ggplot(
    aes(
      y = SpendingPerStudent,
      x = RevenuePerStudent
    ) 
  )+
  geom_point() + labs(y = "Instructional Spending Per Student", x = "Revenue from Tuition and Fees Per Student") #+
  +scale_x_continuous(labels = scales::dollar_format())
  +scale_y_continuous(labels = scales::dollar_format())
  +ggtitle("Instructional Spending and Revenue from Tuition and Fees Per Student")
  )
  

  output$table <- DT::renderDataTable(
    df_display %>%
      filter(Type == input$Type) %>%
    datatable( rownames=FALSE) 
    %>%
      formatCurrency("Revenue from Tuition and Fees",dec.mark = ".")
    %>%
      formatCurrency("Spending on Instruction",dec.mark = ".")
      )
  }

)