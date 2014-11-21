library(shiny)

# Tax Calculator & Estimator (Beta)
# Data Developing Products Project
# Libardo Lopez
shinyUI(fluidPage(
  # Application title
    titlePanel("Tax Calculator & Estimator (Beta)"),
    p("Instructions:  To figure your annual taxes, please fill the form, INCOME & RELIEFS. Once you 
      have your information complete, click the ENTER button.  The results will be shown."),
    p("It is just an academic exercise. Don't use it for real figures."),
  br(),
  
  fluidRow(
    
    column(4,
      wellPanel(
        h3("INCOME"),
                  h4('Employment Income'),
                  numericInput(	"EI", label = " ", min=0, max=100000000, value = 0),
                  h4('Less: Employment Expenses'),
                  numericInput("EE", label =" ", min=0, max=5000000, value = 0),
                  h4('Trade, Business, Profession or Vocation'),
                  numericInput("TBProf", label =" ", min=0, max=5000000, value = 0), 
                  h3('Add: OTHER INCOME'),
                  h4('Dividends'),
                  numericInput(	"ivd", label = " ", min=0, max=1000000, value = 0),
                  h4('Interest'),
                  numericInput(	"Inter", label = " ", min=0, max=1000000, value = 0),
                  h4('Rent from Property'),
                  numericInput(	"Rent", label = " ", min=0, max=1000000, value = 0),
                  h4('Royalty, Charge, Estate/Trust Income'),
                  numericInput(	"RChEst", label = " ", min=0, max=1000000, value = 0),
                  h4('Gains or Profits of an income Nature'),
                  numericInput(	"Gain", label = " ", min=0, max=5000000, value = 0)
      )),
    
    column(4,
      wellPanel(
        h3("RELIEFS"),
                  h4('Approved Donations'),
                  numericInput(	"Don", label = " ", min=0, max=5000000, value = 0),
                  h4('Earned income'),
                  numericInput(	"EIrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Spouse/handicapped spouse'),
                  numericInput(	"WHrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Qualifying/handicapped child'),
                  numericInput(	"QHrl", label = " ", min=0, max=5000000, value = 0),
                  h4("Working mother's child"),
                  numericInput(	"WMChrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Parent/handicapped parent'),
                  numericInput(	"PHrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Grandparent caregiver'),
                  numericInput(	"GPHrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Handicapped brother/sister'),
                  numericInput(	"BSHrl", label = " ", min=0, max=5000000, value = 0),
                  h4('CPF/provident Fund'),
                  numericInput(	"PFrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Life Insurance'),
                  numericInput(	"LInrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Course fees'),
                  numericInput(	"CFrl", label = " ", min=0, max=5000000, value = 0),
                  h4('Supplementary Retirement Scheme'),
                  numericInput(	"SRSrl", label = " ", min=0, max=5000000, value = 0),                      
                  submitButton('ENTER')        
      )),
    
    column(4,
      wellPanel(
        h3("SUMMARY TAX RESULTS"),
                  h4("NET EMPLOYMENT INCOME NEI"),
                  h4(textOutput("NEI")),
                  br(),
                  h4("TOTAL INCOME TI"),
		  h4(textOutput("TI")),
                  br(),
                  h4("ASSESSABLE INCOME ASI"),
		  h4(textOutput("ASI")),
                  br(),
                  h4("CHARGEABLE INCOME CI"),
		  h4(textOutput("CI")),
                  br(),
                  h4("NET TAX PAYABLE NTP"),
		  h4(textOutput("NTP"))
      ))
  )  
))