
library(data.table) 
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

dfPrivate = data.frame(read.csv("InstructionalSpendingPrivate.csv", header = TRUE),
                       stringsAsFactors = FALSE)
dfPrivate$Type = c("Private")

dfPrivate$Rank<- c(as.character(dfPrivate$Rank))
dfPrivate$Institution<- c(as.character(dfPrivate$Institution))
dfPrivate$Total.enrollment..fall.2017<- c(as.character(dfPrivate$Total.enrollment..fall.2017))
dfPrivate$Revenue.from.tuition.and.fees<- c(as.character(dfPrivate$Revenue.from.tuition.and.fees))
dfPrivate$Spending.on.instruction<- c(as.character(dfPrivate$Spending.on.instruction))
dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction<- c(as.character(dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction))
dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue<- c(as.character(dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue))
dfPrivate$Rank <- gsub("[.]", "", dfPrivate$Rank)
dfPrivate$Total.enrollment..fall.2017 <- gsub(",", "", dfPrivate$Total.enrollment..fall.2017)
dfPrivate$Revenue.from.tuition.and.fees <- gsub(",", "", dfPrivate$Revenue.from.tuition.and.fees)
dfPrivate$Revenue.from.tuition.and.fees <- gsub("[$]", "", dfPrivate$Revenue.from.tuition.and.fees)
dfPrivate$Spending.on.instruction <- gsub(",", "", dfPrivate$Spending.on.instruction)
dfPrivate$Spending.on.instruction <- gsub("[$]", "", dfPrivate$Spending.on.instruction)
dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub(",", "", dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- gsub("[$]", "", dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- gsub("%", "", dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPrivate$Rank<-as.numeric(dfPrivate$Rank)
dfPrivate$Institution<- as.numeric(dfPrivate$Insitution)
dfPrivate$Total.enrollment..fall.2017<- as.numeric(dfPrivate$Total.enrollment..fall.2017)
dfPrivate$Revenue.from.tuition.and.fees <- as.numeric(dfPrivate$Revenue.from.tuition.and.fees)
dfPrivate$Spending.on.instruction <- as.numeric(dfPrivate$Spending.on.instruction)
dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction <- as.numeric(dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue <- as.numeric(dfPrivate$Tuition.and.fees.revenue.as.percentage.of.all.revenue)
dfPrivate$RevenuePerStudent = dfPrivate$Revenue.from.tuition.and.fees/dfPrivate$Total.enrollment..fall.2017
dfPrivate$SpendingPerStudent = dfPrivate$Spending.on.instruction/dfPrivate$Total.enrollment..fall.2017
dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction.per.student = dfPrivate$Revenue.from.tuition.and.fees..minus.spending.on.instruction/dfPrivate$Total.enrollment..fall.2017
dfPrivate$SpendingExceedsTuition = dfPrivate$Spending.on.instruction>dfPrivate$Revenue.from.tuition.and.fees

df_tot = rbind(dfPrivate, dfPublic)