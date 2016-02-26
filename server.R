shinyServer(function(input, output, session) {
        # input$file1 will be NULL initially. After the user selects and uploads a 
        # file, it will be a data frame with 'name', 'size', 'type', and 'datapath' 
        # columns. The 'datapath' column will contain the local filenames where the 
        # data can be found.
        observe({
   
                updateSelectInput(session, "variable1", choices = colnames(datos_dis)[-c(1,3,4,9,10)])
                
        })

       output$map <- renderLeaflet({
             #  color <- colorFactor(topo.colors(20), datos_p[,9])
              rad<-datos_p[,10]
               map <- leaflet(datos_p) %>%
                       setView(lng = -3.65181698, lat = 40.57114699, zoom = 5) %>%
                       addProviderTiles("CartoDB.Positron", options = providerTileOptions(noWrap = TRUE)) %>%
                       # addMarkers(~long, ~lat)
                       addCircleMarkers(
                               lng=~Longitud,
                               lat=~Latitud,
                               radius=~log,
                               stroke=FALSE,
                               color="blue",
                               fillOpacity=0.75,
                               popup=~paste(
                                       as.character(X), "mil personas"
                               )
                       )
       })
        
})
