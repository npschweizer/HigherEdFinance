library(ggplot2)
library(rsconnect)
rsconnect::deployApp(getwd)
options(scipen=999) #Remove scientific notation

#Article statistics are derived from the commands below
median(df_tot$Revenue.from.tuition.and.fees..minus.spending.on.instruction)
median(df_tot$Revenue.from.tuition.and.fees..minus.spending.on.instruction/ df_tot$Total.enrollment..fall.2017)
median(df_tot$SpendtoRevenueRatio)
median(df_tot$Revenue.from.tuition.and.fees/df_tot$Spending.on.instruction)
median(df_tot$Revenue.from.tuition.and.fees..minus.spending.on.instruction)

summary(filter(df_tot, Type == "Private"))
summary(filter(df_tot, Type == "Public"))    
summary(filter(df_tot, Tuition.and.fees.revenue.as.percentage.of.all.revenue  <= 25))
summary(filter(df_tot, Type == "Public"))   


