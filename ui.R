shinyUI(fluidPage(
        titlePanel("Mapa sobre Discapacidad"),
        h3("How to use this app"),
        p(""),
        sidebarPanel(
                selectInput("variable1", "Variable de clasificación:",
                            list())
        ),
        mainPanel(
                h2(textOutput('caption')),
                
#                 h2('Contingency Table'),
#                 verbatimTextOutput('ct'),
#                 h2('Chi Square Test'),
#                 verbatimTextOutput('test'),
#                 h2('Barplot'),
#                 plotOutput('plot'),
#                 h2('Data'),
#                 tableOutput('contents'),
                leafletOutput("map")
        )
        
            

))
