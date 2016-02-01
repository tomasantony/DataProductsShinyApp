library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        
        tabsetPanel("Running R Code in the cloud",
                    tabPanel("Introduction",
                             h2("Titanic- The UNSINKABLE SHIP"),
                             p("The sinking of the RMS Titanic is one of the most infamous shipwrecks in history.
                               On April 15, 1912, during her maiden voyage, the Titanic sank after colliding with an iceberg, 
                               killing 1502 out of 2224 passengers and crew. This sensational tragedy shocked 
                               the international community and led to better safety regulations for ships. The datasets used
                               for this analysis is part of a Kaggle challenge. I used train and test datasets to predit the 
                               Survivability of a person. The dataset can be
                               downloaded from: https://www.kaggle.com/c/titanic/data"),
                             
                             p(" There are three tabs present other than Introduction. 
                                 1. Age repartition: In this tab, there are two plots. The first chart is a histogram of age 
                                 range; you can use a control to select the number of age ranges to consider in the plot. The 
                                 second chart shows the age distribution by class.
                                 2. Decision tree: The decision tree tab is generated with the package  rpart. Using the menu of check 
                                 boxes on the right, you can select the variables to use in building the decision tree. The algorithm
                                 starts with all of the data at the root node and scans all the variables for the best one to split.
                                 3. Did they survive ?: The Prediction tab provides a menu of characteristics that can be used as inputs to the
                                 decision tree. The decision tree is used to predict if a passenger will survive or not based on his or 
                                 her characteristics. In order to select all the characteristics we need to select those characterestics
                                 under the decision tree."),
                             
                             
                             
                             img(src="RMS_Titanic.jpg")
                             ),
                    
                  
                    
                    tabPanel("Age repartition",
                             sidebarLayout(position="right",
                                     sidebarPanel(sliderInput("ageBins", "Number of age ranges to consider", min=1, max=30, value=8)),
                                     
                                     mainPanel(
                                             h2("Survival by Age range"),
                                             plotOutput("ageHist"),
                                             plotOutput("dataBoxPlot")
                                     )
                             )),
                    
                    "Modeling",
                    
                    tabPanel("Decision tree", 
                             sidebarLayout(position="right" ,  
                                     
                                     sidebarPanel(
                                             checkboxGroupInput("treeVariables", label = h4("Variables to take into account"), 
                                                                choices = list("Sex" = "Sex", "Age" = "Age", "Class" = "Pclass", "Fare"="Fare", 
                                                                               "Embarkment Port"="Embarked", 
                                                                               "Title"="Title", "Number of Siblings on board"="SibSp"),
                                                                selected = list("Sex", "Age")
                                             )),
                                     
                                     mainPanel(
                                             h2("Decision tree obtained with rpart"),
                                             plotOutput("decisionTree")
                                     )
                             )),
                    
                    
                    tabPanel("Did they survive ?", 
                             sidebarLayout(position="right",  
                                     
                                     sidebarPanel(
                                             "Select the characteristic of the passenger :",
                                             radioButtons("Sex", "Sex", choices=list("Male"="male","Female"="female"), selected="male"),
                                             sliderInput("Age", "Age", min=0, max=100, value = 25),
                                             radioButtons("Pclass", "Class", choices=list("First"=1, "Second"=2, "Third"=3), selected=2),
                                             sliderInput("Fare", "Fare", min=1, max=100, value=10),
                                             selectInput("Embarked", "Embarked at", choices=list("Cherbourg"="C", "Queenstown"="Q", "Southhampton"="S"), selected="S"),
                                             sliderInput("FamilySize", "Family size", min=1, max=15, value=3),
#                                              textInput("FamilyName", "Family name", value="Smith"),
                                             selectInput("Title", "Title", choices=list("Mr"="Mr", "Mrs"="Mrs", "Miss"="Miss", "Master"="Master", "Dr"="Dr",
                                                                                        "Rev"="Rev", "Sir"="Sir", "Lady"="Lady", "Col"="Col"), selected="Mr"),
                                             sliderInput("Siblings", "Number of Siblings on board", min=0, max=10, val=2)
                                             
                                     ),
                                     
                                     mainPanel(
                                             h2("Prediction according to the current decision tree"),
                                             "According to the currently computed decision tree, this passenger must have",
                                             textOutput("didHeSurvive", container=strong), " !",
                                             br()
                                             
                                             
                                        
                                             
                                             
                                             
                                             
                                     )
                             )),

                 tabPanel("Github link",
                         
                                a("https://github.com/tomasantony/DataProductsShinyApp.git")       
         
                        )
                    
                    )
        
        
        
                    ))





                 
                  
                                                               
