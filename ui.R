library(shiny)

data_years <- c("2012", "2013","2014", "2015")
data_graf <- c("By Year", "Top 10 States", "Comparison By 4 States")

fluidPage(
  pageWithSidebar(
    headerPanel("Dengue Cases in Malaysia from year 2012 -2015"),

    sidebarPanel(
      helpText("Please choose the year to see the sample of dengue data by year",
               "in a table form in DISPLAY DENGUE TABLE tab."),
      selectInput("datayear", label = "Select year", choices = data_years),
      helpText("Please click PLOT DENGUE CASES tab to see the graph.",
               "The plot display the general trend of dengue outbreak",
               "in Malaysia throughout the years from the dataset."),
      selectInput("graf1", label = "Select plot type", choices = data_graf),
      br(),
      a(href = "https://github.com/Yus2015/DevDataProducts.git", "The Shiny apps Source code")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("DISPLAY DENGUE TABLE", tableOutput("data_table")),
        tabPanel("PLOT DENGUE CASES", plotOutput("data_plot")))
      )
  )
)
