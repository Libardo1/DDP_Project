---
title       : Tax Calculator Project
subtitle    : Developing Data Products
author      : Libardo Lopez
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Settings   

title       : Tax Calculator Project  
subtitle    : Developing Data Products  
author      : Libardo Lopez  
job         :   
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}  
highlighter : highlight.js  # {highlight.js, prettify, highlight}  
hitheme     : tomorrow      #   
widgets     : []            # {mathjax, quiz, bootstrap}  
mode        : selfcontained # {standalone, draft}  
knit        : slidify::knit2slides  

## Instructions:  

To figure your annual taxes, please fill the form, INCOME & RELIEFS.  
Please note all fields has been fixed to 0; so change them with your info.  
Once you have your data complete, click the **ENTER** button.  
The results will be shown.  
It is just an academic exercise. Don't use it for real issues.

---  

## How it works?

First al all, you must have your verifiable info for Income & Reliefs  
The app figures some intermediate results as:  
* Net Employment Income NEI    
* Total Income TI    
* Assessable Income ASI    
* Chargeable Income CI    
* Net tax Payable NTP  

To obtain the NTP, we apply a rate (11.5%) to the Chargeable Income CI, after add all income and minus all discounts authorized.

--- 

## Lay out

For Legibility, we separate the info in:
* INCOME, 
* RELIEFS & 
* RESULTS 

--- 

## Conclusions & Future Work


* Slidify and Shiny are powerful tools to develop and implement Apps fast and in an easy way
* In order to have an useful App, we must take into account all requirements from the taxes authority
* Aditionally, we must include a communications protocol to submit the users declaration directly to the taxes authority
* The responsability is for the user
* Just Relax. Simon Maple @sjmaple says: "APIs are like jokes. If you have to explain them, they're no good!"

