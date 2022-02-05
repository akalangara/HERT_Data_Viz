#library(rsconnect)

#code to enter in console to update app on cloud, update filepath to folder where app.R is located
#rsconnect::deployApp('C:/Users/user/Documents/Emory/Orgs/HERT/Orientation')

#necessary packages
#install.packages(c("shiny","shinythemes","shinymanager")
library(shiny)
library(shinythemes)
library(shinymanager)

ui <- fluidPage(theme = shinythemes::shinytheme("united"),
                 navbarPage(theme = shinythemes::shinytheme("united"), title = "GEB & DEV Orientation",
                 tabPanel(title = "Burundi",
                          div(img(src='B.png'), style="text-align: center;")
                          ),
                 tabPanel(title = "Venezuela",
                          div(img(src='V.png'), style="text-align: center;")
                          ),
                 tabPanel(title = "Honduras",
                          div(img(src='HD1.png'), style="text-align: center;"),
                          div(img(src='HD2.png'), style="text-align: center;")
                         ),
                 tabPanel(title = "Burkina Faso",
                          div(img(src='BF.png'), style="text-align: center;")
                          ),
                 )
                
      )

server = function(input, output, session) {
  
}

shinyApp(server = server, ui = ui)
