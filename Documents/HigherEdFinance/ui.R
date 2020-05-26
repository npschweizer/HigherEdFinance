library(shiny)
fluidPage( 
  titlePanel("Higher Ed Finance"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput(inputId = "Type",
                     label = "Institution Type",
                     choices = unique(df_tot)),
      selectizeInput(inputId = "dest",
                     label = "Arrival airport",
                    choices = unique(flights$dest)),
      selectizeInput(inputId = "month",
                     label = "month",
                     choices = unique(flights$month))
    ),
    mainPanel(
      tabsetPanel(
      tabPanel("count", plotOutput("count")),
      tabPanel("delay",plotOutput("delay")),
      tabPanel("source", tableOutput("source"))
    )
  )
)
)