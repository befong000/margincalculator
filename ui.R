shinyUI(
  pageWithSidebar(
  headerPanel(" Publisher Revenue Calculator "),
  sidebarPanel(
    selectInput("os", "Select your platform", 
                choices = list("android", "ios")),
    selectInput("cy", "Select your country", 
                choices = list("US", "CA", "NZ")),
    selectInput("pt", "Select your placement", 
                choices = list("rewarded", "non_rewarded")),
    numericInput('ht', 'Enter your Request', 1, min = 1, max = 1000000000, step = 1),
    numericInput('wt', 'Enter your eCPM', 1, min = 0.01, max = 100, step = 0.01),
    actionButton("submit", "Submit")
  ),
  mainPanel(
    h3('Results'),
    h4('Your platform is:'),
    verbatimTextOutput("ost"),
    h4('Your country is:'),
    verbatimTextOutput("cyt"),
    h4('Your placement is:'),
    verbatimTextOutput("ptt"),
    h4('Your Request is:'),
    verbatimTextOutput("oht"),
    h4('Your eCPM is:'),
    verbatimTextOutput("owt"),
    h4('Your Est. Revenue is:'),
    verbatimTextOutput("prediction"),
    h6(em('Reactive output displayed as a result of server calculations.'))
  )
))
