dfPublic = data.frame(read.csv("InstructionalSpendingPublic.csv", header = TRUE),
                stringsAsFactors = FALSE)
dfPublic$Type = c("Public")

dfPublic$Rank<- c(as.character(dfPublic$Rank))
dfPublic$Institution<- c(as.character(dfPublic$Institution))
dfPublic$Total.enrollment..fall.2017<- c(as.character(dfPublic$Total.enrollment..fall.2017))
dfPublic$Revenue.from.tuition.and.fees<- c(as.character(dfPublic$Revenue.from.tuition.and.fees))
dfPublic$Spending.on.instruction<- c(as.character(dfPublic$Spending.on.instruction))
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction<- c(as.character(dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction))
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue<- c(as.character(dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue))
dfPublic$Rank <- gsub("[.]", "", dfPublic$Rank)
dfPublic$Total.enrollment..fall.2017 <- gsub(",", "", dfPublic$Total.enrollment..fall.2017)
dfPublic$Revenue.from.tuition.and.fees <- gsub(",", "", dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Revenue.from.tuition.and.fees <- gsub("[$]", "", dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Spending.on.instruction <- gsub(",", "", dfPublic$Spending.on.instruction)
dfPublic$Spending.on.instruction <- gsub("[$]", "", dfPublic$Spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub(",", "", dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub("[$]", "", dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- gsub("%", "", dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPublic$Rank<-as.numeric(dfPublic$Rank)
dfPublic$Institution<- as.numeric(dfPublic$Insitution)
dfPublic$Total.enrollment..fall.2017<- as.numeric(dfPublic$Total.enrollment..fall.2017)
dfPublic$Revenue.from.tuition.and.fees <- as.numeric(dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Spending.on.instruction <- as.numeric(dfPublic$Spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- as.numeric(dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- as.numeric(dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPublic$RevenuePerStudent = dfPublic$Revenue.from.tuition.and.fees/dfPublic$Total.enrollment..fall.2017
dfPublic$SpendingPerStudent = dfPublic$Spending.on.instruction/dfPublic$Total.enrollment..fall.2017
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction.per.student = dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction/dfPublic$Total.enrollment..fall.2017
dfPublic$SpendingExceedsTuition = dfPublic$Spending.on.instruction>dfPublic$Revenue.from.tuition.and.fees

dfPublic = data.frame(read.csv("InstructionalSpendingPublic.csv", header = TRUE),
                      stringsAsFactors = FALSE)
dfPublic$Type = c("Public")

dfPublic$Rank<- c(as.character(dfPublic$Rank))
dfPublic$Institution<- c(as.character(dfPublic$Institution))
dfPublic$Total.enrollment..fall.2017<- c(as.character(dfPublic$Total.enrollment..fall.2017))
dfPublic$Revenue.from.tuition.and.fees<- c(as.character(dfPublic$Revenue.from.tuition.and.fees))
dfPublic$Spending.on.instruction<- c(as.character(dfPublic$Spending.on.instruction))
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction<- c(as.character(dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction))
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue<- c(as.character(dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue))
dfPublic$Rank <- gsub("[.]", "", dfPublic$Rank)
dfPublic$Total.enrollment..fall.2017 <- gsub(",", "", dfPublic$Total.enrollment..fall.2017)
dfPublic$Revenue.from.tuition.and.fees <- gsub(",", "", dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Revenue.from.tuition.and.fees <- gsub("[$]", "", dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Spending.on.instruction <- gsub(",", "", dfPublic$Spending.on.instruction)
dfPublic$Spending.on.instruction <- gsub("[$]", "", dfPublic$Spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub(",", "", dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub("[$]", "", dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- gsub("%", "", dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPublic$Rank<-as.numeric(dfPublic$Rank)
dfPublic$Institution<- as.numeric(dfPublic$Insitution)
dfPublic$Total.enrollment..fall.2017<- as.numeric(dfPublic$Total.enrollment..fall.2017)
dfPublic$Revenue.from.tuition.and.fees <- as.numeric(dfPublic$Revenue.from.tuition.and.fees)
dfPublic$Spending.on.instruction <- as.numeric(dfPublic$Spending.on.instruction)
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- as.numeric(dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- as.numeric(dfPublic$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPublic$RevenuePerStudent = dfPublic$Revenue.from.tuition.and.fees/dfPublic$Total.enrollment..fall.2017
dfPublic$SpendingPerStudent = dfPublic$Spending.on.instruction/dfPublic$Total.enrollment..fall.2017
dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction.per.student = dfPublic$Revenue.from.tuition.and.fees..minus.spending.on.instruction/dfPublic$Total.enrollment..fall.2017
dfPublic$SpendingExceedsTuition = dfPublic$Spending.on.instruction>dfPublic$Revenue.from.tuition.and.fees

library(ggplot2)
Pie <-
  ggplot(df_tot,
         aes(
           x = "",
           y = "count",
           fill = df_tot$SpendingExceedsTuition
         ))
Pie + geom_bar(width = 1, stat = "identity") + coord_polar("y", start = 0)



Point = ggplot(
  df_tot,
  aes(
    y = df_tot$SpendingPerStudent,
    x = df_tot$RevenuePerStudent
  ) + facet_grid()
)
Point + geom_point() + labs(y = "Instructional Spending Per Student", x = "Revenue from Tuition and Fees Per Student") #+


Histo = ggplot(df_tot, aes(df_tot$Revenue.from.tuition.and.fees..minus.spending.on.instruction.per.student))
Histo + geom_histogram()

HistoRat %>% ggplot(df_tot, aes(df_tot$SpendtoRevenueRatio))
HistoRat + geom_freqpoly()
