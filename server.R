library(shiny)
# Tax Calculator

#Income

NEI <- function(EI, EE) EI - EE

#Total Income

TI <- function(EI, EE, TBProf, ivd, Inter, Rent, RChEst, Gain)  EI - EE + TBProf + ivd + Inter + Rent + RChEst + Gain

#Asseassable Income = Total Income - Approved Donations

ASI <- function(EI, EE, TBProf, ivd, Inter, Rent, RChEst, Gain, Don) EI - EE + TBProf + ivd + Inter + Rent + RChEst + Gain - Don

#chargeable income = ASI - PR

CI <- function(EI, EE, TBProf, ivd, Inter, Rent, RChEst, Gain, Don, EIrl, WHrl, QHrl, WMChrl, PHrl, GPHrl, BSHrl, PFrl, LInrl, CFrl, SRSrl) EI - EE + TBProf + ivd + Inter + Rent + RChEst + Gain - Don - (EIrl + WHrl + QHrl + WMChrl + PHrl + GPHrl + BSHrl + PFrl + LInrl + CFrl + SRSrl)

#Tax payable = CI* 0,115


NTP <- function(EI, EE, TBProf, ivd, Inter, Rent, RChEst, Gain, Don, EIrl, WHrl, QHrl, WMChrl, PHrl, GPHrl, BSHrl, PFrl, LInrl, CFrl, SRSrl) (EI - EE + TBProf + ivd + Inter + Rent + RChEst + Gain - Don - (EIrl + WHrl + QHrl + WMChrl + PHrl + GPHrl + BSHrl + PFrl + LInrl + CFrl + SRSrl))*0.115

# Define server logic required to calculate NTP
shinyServer(function(input, output) {
    output$NEI <- renderPrint({NEI(input$EI,input$EE)}) 
    output$TI <- renderPrint({TI(input$EI, input$EE, input$TBProf, input$ivd, input$Inter, input$Rent, input$RChEst, input$Gain)}) 
    output$ASI <- renderPrint({ASI(input$EI, input$EE, input$TBProf, input$ivd, input$Inter, input$Rent, input$RChEst, input$Gain, input$Don)}) 
    output$CI <- renderPrint({CI(input$EI, input$EE, input$TBProf, input$ivd, input$Inter, input$Rent, input$RChEst, input$Gain, input$Don, input$EIrl,  input$WHrl,  input$QHrl,  input$WMChrl,  input$PHrl,  input$GPHrl,  input$BSHrl,  input$PFrl,  input$LInrl,  input$CFrl,  input$SRSrl)}) 
    output$NTP <- renderPrint({NTP(input$EI, input$EE, input$TBProf, input$ivd, input$Inter, input$Rent, input$RChEst, input$Gain, input$Don, input$EIrl, input$WHrl, input$QHrl, input$WMChrl, input$PHrl, input$GPHrl, input$BSHrl, input$PFrl, input$LInrl, input$CFrl, input$SRSrl)}) 
}  
)