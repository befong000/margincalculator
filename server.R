#d <- read.csv("/Users/jazzsun/Downloads/Networkdata_2018-6-25.csv")
#df3 = data.frame(platform = d$platform,country=d$country,placement=d$view_rate,impression=d$impressions,spend=d$spend,ecpm=d$ecpm)
#df4 = data.frame(platform = os,country= cy ,placement=pt)
#network_result <- data.frame(merge(df3, df4))
#Necpm <- network_result$ecpm

REVENUE = function(request,ecpm){
#  d <- read.csv("/Users/jazzsun/Downloads/Networkdata_2018-6-25.csv")
#  df3 = data.frame(platform = d$platform,country=d$country,placement=d$view_rate,impression=d$impressions,spend=d$spend,ecpm=d$ecpm)
#  df4 = data.frame(platform = input$os,country= input$cy,placement=input$pt)
#  network_result <- data.frame(merge(df3, df4))
#  Necpm <- network_result$ecpm
#  return(1-((request*0.2*ecpm)/1000)/((request*0.2*Necpm)/1000))
   return(((request*0.2*ecpm)/1000))
}

shinyServer(
  function(input,output,session) {
    # Whenever a field is filled, aggregate all form data
    #formData <- reactive({
     # data <- sapply(fields, function(x) input[[x]])
      #data
  #  })
    # When the Submit button is clicked, save the form data
   # observeEvent(input$submit, {
    #  saveData(formData())
    #})
  #  df <- data.frame(platform = d$platform,country=d$country,placement=d$view_rate,impression=d$impressions,spend=d$spend,ecpm=d$ecpm)
   # REVENUE <- reactive({
    #  a <- subset(df, platform == input$os,country ==input$cy,placement ==input$pt)
     # Necpm <- a$ecpm
      #return(1-((request*0.2*ecpm)/1000)/((request*0.2*Necpm)/1000))
  #  })
    
    output$ost <- renderPrint({input$os})
    output$cyt <- renderPrint({input$cy})
    output$ptt <- renderPrint({input$pt})
    output$oht <- renderPrint({input$ht})
    output$owt <- renderPrint({input$wt})
    output$prediction <- renderPrint({REVENUE(input$ht, input$wt)})
  }
)
