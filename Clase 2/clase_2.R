## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)
set.seed(100)
options(repos=c(CRAN="Chile"))



## ----echo=TRUE,results="hide",warning=FALSE,eval=FALSE-------------------
## install.packages("ggplot2") #install the ggplot package


## ----echo=TRUE,results="hide",eval=FALSE---------------------------------
## library("sp")


## ---- echo=TRUE,eval=FALSE-----------------------------------------------
## library("devtools")
## install_github("amvallone/estdaR")


## ---- echo=TRUE,eval=FALSE-----------------------------------------------
## setwd("path")
## getwd()


## ----echo=TRUE,eval=FALSE------------------------------------------------
## read.csv(file, header = TRUE, sep = ",", dec = ".", ...)
## write.csv(x, file, , sep = ",", dec = ".", ...)


## ---- echo=TRUE,eval=FALSE-----------------------------------------------
## library("openxlsx")
## read.xlsx(file, sheet = 1, startRow = 1,...)
## write.xlsx(x,file,...)


## ----echo=TRUE,eval=FALSE------------------------------------------------
## data_cars <- read.csv("mtcars.csv", header=TRUE, sep=",")


## ----echo=TRUE,eval=FALSE------------------------------------------------
## crime <- read.table("crime.txt",sep="\t",dec=".")


## ----echo=TRUE,eval=FALSE------------------------------------------------
## muni <- read.xlsx("muni17.xlsx")


## ---- echo=TRUE,eval=FALSE-----------------------------------------------
## url <- "https://en.wikipedia.org/wiki/List_of_states_
##        and_territories_of_the_United_States_by_population"
## require(rvest)
## raw_data <- html_table(read_html(url))
## data <- raw_data[[3]]


## ----echo=TRUE-----------------------------------------------------------
data(mtcars)
carb4 <- mtcars[mtcars$carb==4, ] # cars with 4 carb.


## ---- echo=TRUE,results="hide"-------------------------------------------
carb4 <- subset(mtcars, mtcars$cyl==4)
str(mtcars)
names(mtcars)
cyl <- mtcars$cyl #Extract the variable number of cylinders


## ----echo=TRUE-----------------------------------------------------------
cyl4 <- mtcars[mtcars$cyl==4, ]
cyl4_1 <- subset(mtcars, cyl==4)


## ----echo=TRUE-----------------------------------------------------------
cyl4_hp90 <- mtcars[mtcars$cyl==4 & mtcars$hp>90, ]
cyl4_hp90_1 <- subset(mtcars,cyl==4 & hp>90)


## ----echo=TRUE-----------------------------------------------------------
hp60_200 <- mtcars[mtcars$hp>200 | mtcars$hp <60, ]
hp60_200_1 <- subset(mtcars,hp>200 | hp <60)


## ----echo=TRUE-----------------------------------------------------------
which(mtcars$cyl==6)


## ----echo=TRUE-----------------------------------------------------------
table(mtcars$cyl,mtcars$carb)


## ----echo=TRUE-----------------------------------------------------------
aggregate(cyl ~carb, mtcars, mean)


## ----echo=TRUE,eval=FALSE------------------------------------------------
## install.packages("gapminder")
## help(packages="gapmainder")
## str(gapminder) #también pude mirar la ventana del Global.
## cont <- as.character(gapminder$continent)
## aggregate(gdpPercap ~ year + continent, gapminder, mean )

