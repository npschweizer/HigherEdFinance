library(shiny)
source("global.R")
fluidPage( 
  titlePanel("Higher Ed Finance"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput(inputId = "Type",
                     label = "Institution Type",
                     choices = unique(df_tot$Type)),
      
    ),
   mainPanel(
      tabsetPanel(
        #flowLayout(
          splitLayout(
      tabPanel("SpendExceedTuitionPie", plotOutput("SpendExceedTuitionPie")), #Pie Chart, Proportion of Institutions Where Spending Exceeds Tuition Revenue
      tabPanel("SpendRevRatioDist", plotOutput("SpendRevRatioDist")), #Distribution, Distribution of Instructional Spending To Tuition Revenue Ratios
         # )
      tabPanel("SpendRevDiffOverRevPerScatter", plotOutput("SpendRevDiffOverRevPerScatter")) #Scatter Plot, Mapping of Difference in Between Revenue and Spending against Tuition as Percentage of Revenue
      
        )
      )
  )
)
)
