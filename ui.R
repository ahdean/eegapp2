# ui.R
shinyUI(fluidPage(
  titlePanel("EEGapp - an exploratory tool for analysis of spontaneous seizure data"),
  
  sidebarLayout(
    sidebarPanel(
      p("EEG data form the American Epilepsy Society Seizure Prediction Challenge at https://www.kaggle.com/c/seizure-prediction"),
      helpText("Interictal is brain activity from randomly selected baseline periods. Preictal is activity from just before a seizure is about to occur. Test is unknown data which we will classify into one of the two other categories."),
      
      selectInput("var", 
                  label = "Type",
                  choices = c("Inter_001", "Preict_001","Test_001"),
                  selected = "Inter_001"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100)),
      
      sliderInput("n", "Downsampling rate", 1, 10,
                  value = 1, step = 1)
      ),
    
    mainPanel(
      
      textOutput("text1"),
      textOutput("text2"),
      plotOutput("plot_inter")
      
    )
  )
))
