#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(forcats)
library(dplyr)
library(rsconnect)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Workout02"),
  fluidRow( 
    column(4,
      sliderInput("amount",
                  "Initial Amount",
                  min = 0,
                  max =100000,
                  value = 1000,
                  step = 500,
                  pre = "$"),
      sliderInput("contribution",
                  "Annual Contribution",
                  min = 0,
                  max = 50000,
                  step = 500,
                  value = 2000,
                  pre = "$")
    ),
    
    column(4, 
      sliderInput("return",
                  "Return Rate(in %)",
                  min = 0,
                  max =20,
                  value = 5,
                  step = 0.1),
      sliderInput("growth",
                  "Growth Rate(in %)",
                  min = 0,
                  max =20,
                  value = 2,
                  step = 0.1)
    ),
    column(4, 
      sliderInput("years",
                  "Years",
                  min = 0,
                  max = 50,
                  value = 20,
                  step = 1),
      selectInput("facet",
                  "Facet?",
                  choices = c('No'=1, 'Yes'=0),
                  selected = 1)
    )
  ),
  
      h4("Timelines"),
      plotOutput("Timelines"),
      h4("Balances"),
      verbatimTextOutput("Balances")
    
)
  

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  balances<- reactive({
    amount <- input$amount
    contrib<- input$contribution
    growth <-  reactive({
      growth <- input$growth/100
      return(growth)
      })
    rates<- reactive({
      rates <- input$return/100
      return(rates)
      })
    years = 0:input$years
    no_contrib = rep(amount, (input$years + 1))
    fixed_contrib= rep(amount, (input$years + 1))
    growing_contrib = rep(amount, (input$years + 1))
  
  
    for (y in years){
      no_contrib[y+1] <- amount * ((1 + rates())^y)
      fixed_contrib[y+1] <- no_contrib[y+1] + (contrib * ((1 + rates())^y - 1) / rates())
      growing_contrib[y+1] <- no_contrib[y+1] + contrib * ((1 + rates())^y - (1 + growth())^y) /(rates() - growth())
    }
    
    balances <- data.frame(
      years = years,
      no_contrib = no_contrib,
      fixed_contrib = fixed_contrib,
      growing_contrib = growing_contrib
    )
    
    return(balances)
  })
  
  balances2<- reactive({
    amount <- input$amount
    contrib<- input$contribution
    growth <-  reactive({
      growth <- input$growth/100
      return(growth)
    })
    rates<- reactive({
      rates <- input$return/100
      return(rates)
    })
    years = 0:input$years
    no_contrib = rep(amount, (input$years + 1))
    fixed_contrib= rep(amount, (input$years + 1))
    growing_contrib = rep(amount, (input$years + 1))
    
    
    for (y in years){
      no_contrib[y+1] <- amount * ((1 + rates())^y)
      fixed_contrib[y+1] <- no_contrib[y+1] + (contrib * ((1 + rates())^y - 1) / rates())
      growing_contrib[y+1] <- no_contrib[y+1] + contrib * ((1 + rates())^y - (1 + growth())^y) /(rates() - growth())
    }
    
    balances1 <- data.frame(
      years = years,
      value = no_contrib
    )
    balances1$mode = "no_contrib"
    
    balances2 <- data.frame(
      years = years,
      value = fixed_contrib
    )
    balances2$mode = "fixed_contrib"
    
    balances3 <- data.frame(
      years = years,
      value = growing_contrib
    )
    balances3$mode = "growing_contrib"
    
    balances <- rbind(balances1, balances2, balances3)
    balances <-mutate(balances, modality = fct_relevel(mode, "no_contrib", "fixed_contrib", "growing_contrib"))
    
    return(balances)
  })
  
   output$Timelines<- renderPlot({
     if(input$facet == 1){
      ggplot(data = balances()) +
        geom_line(aes(x = years, y = no_contrib, col="firebrick2"))+
        geom_point(aes(x = years, y = no_contrib, col="firebrick2"))+
        geom_line(aes(x = years, y = fixed_contrib, col="springgreen2"))+
        geom_point(aes(x = years, y = fixed_contrib, col="springgreen2"), size=0.5)+
        geom_line(aes(x = years, y = growing_contrib, col="steelblue2"))+
        geom_point(aes(x = years, y = growing_contrib, col="steelblue2"), size=0.5)+
        scale_colour_manual(values = c("firebrick2", "springgreen2", "steelblue2"),
                            labels = c("no_contrib", "fixed_contirb", "growing_contrib"), 
                            name="modality") +
       labs(x = "year", y = "balance", title = "Three modes of investing")
     }else{
       ggplot(data = balances2(), aes(x = years, y = value, color = modality, fill = modality)) +
         geom_line()+
         geom_point()+
         geom_area(alpha = 0.5) +
         labs(x = "year", y = "balance", title = "Three modes of investing") +
         facet_wrap(~modality) +
         theme_bw()
     }
   })
   output$Balances<- renderPrint({
     balances()
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

