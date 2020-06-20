library(ggplot2)
library(rsconnect)
Y
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


((32000*12) + (21000*2)+(4000*12) +(12000) +(300*12))/7

summary(df_tot)


