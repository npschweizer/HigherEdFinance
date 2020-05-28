library(shiny)
source("global.R")
library(googleVis)
fluidPage( 
  titlePanel("Higher Education Instructional Expenditure"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput(inputId = "Type",
                     label = "Institution Type",
                     choices = unique(df_tot$Type)),
      width = 2
    ),
    mainPanel(tabsetPanel(#flowLayout(
      tabPanel(
        "Aggregate Spending and Revenue Dynamics",
        fluidRow(column(
          width = 4, plotOutput("SpendExceedTuitionPie")
        ), #Pie Chart, Proportion of Institutions Where Spending Exceeds Tuition Revenue
        column(width = 8, plotOutput(
          "SpendRevRatioDist"
        )), #Distribution, Distribution of Instructional Spending To Tuition Revenue Ratios),
        fluidRow(column(
          width = 12,
          plotOutput("SpendRevDiffOverRevPerScatter")
        ) #Scatter Plot, Mapping of Difference in Between Revenue and Spending against Tuition as Percentage of Revenue)
        ))),
     tabPanel(
       "Spending & Revenue Dynamics Per Students",
       fluidRow(
         column(
           width = 5, plotOutput("SpendingPerStudent")),
           column(
             width = 5, plotOutput("RevenuePerStudent")
           ),
         fluidRow(
           column(
             width=12, plotOutput("SpendingvsRevenue")
           )
         )
         )
       ),
     
     tabPanel(
       "Data",
       fluidRow(DT::dataTableOutput("table"))
     ),
     tabPanel(
       "Notes",
       print(h1("Notes")),
             print(h4("Dataset derived from analysis of Department of Education data performed
                by the Chronicle of Higher Education. To access the dataset, visit 
                      https://www.chronicle.com/article/Colleges-That-Spent-Far-Less/246669.
                      Data can also be accessed through the Department of Education at 
                      https://nces.ed.gov/ipeds/use-the-data."
                      )),
            print(h4("All revenue and expenditure amounts are for 2016-2017. Data cover 
                     degree-granting four-year public and private institutions in the 
                     United States that are eligible to participate in Title IV financial-aid 
                     programs and that had at least 500 students enrolled in the fall of 2017.
                     Tuition and fees excludes room and board. Intruction costs do not included expenses
                     categorized as academic support, such as academic administration 
                     and course development. For more information on the dataset visit
                     https://www.chronicle.com/article/Colleges-That-Spent-Far-Less/246669."
              
            )),
       print(h4("'Revenue' indicates funds derived from the payment of tuition and fees on an 
                aggregate or per student basis as noted. 'Spending' indicates funds expended
                on instructional costs on aggregate or per student basis, as noted."
                
       ))
       
         
     )
     )
     ) 
    )
    
    )
  

    