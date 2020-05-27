library(ggplot2)
Pie <-
  ggplot(df_tot,
         aes(
           x = "",
           y = "count",
           fill = df_tot$SpendingExceedsTuition
         ))
Pie + geom_bar(width = 1, stat = "identity") + coord_polar("y", start = 0)

options(scipen=999) #Remove scientific notation

Point = ggplot(
  df_tot,
  aes(
    y = df_tot$SpendingPerStudent,
    x = df_tot$RevenuePerStudent
  ) + facet_grid()
)
Point + geom_point() + labs(y = "Instructional Spending Per Student", x = "Revenue from Tuition and Fees Per Student") #+


Histo = ggplot(df_tot, aes(df_tot$Revenue.from.tuition.and.fees..minus.spending.on.instruction.per.student))
Histo + geom_histogram(binwidth = 500)



HistoRevProp = ggplot(df_tot, aes(df_tot$SpendingPerStudent))
HistoRevProp + geom_freqpoly(binwidth = 500) + ggtitle("Instructional Spending per Student")

