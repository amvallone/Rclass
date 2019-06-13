## ----setup, include=FALSE------------------------------------------------
library(ggplot2)
library(gapminder)
knitr::opts_chunk$set(echo = FALSE)
set.seed(100)
options(repos=c(CRAN="Chile"))



## ----echo=TRUE,eval=FALSE------------------------------------------------
## x <- rnorm(100,10,1)
## y <- rnorm(100,4,3)
## model <- lm(y ~ x)
## summary(model)


## ---- echo = TRUE, eval = FALSE------------------------------------------
## if(condition){
##         expr
## }


## ---- echo=TRUE, eval=FALSE----------------------------------------------
## x <- -3
## if (x < 0){
##         print("Negative")
##         }


## ---- echo = TRUE, eval =FALSE-------------------------------------------
## if(condition){
##             expr1
##             } else {
##             expr2
##             }


## ----echo=T,eval=F-------------------------------------------------------
## ifelse(condition,expr1,expr2)


## ---- echo=TRUE, eval=FALSE----------------------------------------------
## x <- -3
## if (x < 0){
##         print("Negative")
##         } else {
##         print("Non-negative")
##         }


## ---- echo = TRUE, eval =FALSE-------------------------------------------
## if(condition){
##             expr1
##             } else if {
##             expr2
##             } else {
##             expr3
## }


## ---- echo=TRUE, eval=FALSE----------------------------------------------
## x <- -3
##  if (x < 0){
##          print("Negative")
##          } else if (x == 0) {
##          print("Zero")
##          } else {
##          print("Poitive")
##          }


## ---- echo=TRUE, eval=FALSE----------------------------------------------
## x <- 2
##  if (x %% 2 == 0){
##          print("yes, by 2")
##          } else if (x %% 3 == 0) {
##          print("yes, by 3")
##          } else {
##          print("none")
##          }


## ----echo=T, eval=F------------------------------------------------------
## while (condition){
##         statement
## }


## ----echo=T, eval=F------------------------------------------------------
## x <- 5
## while(x > 0){
##         print(x)
##         x <- x - 1
##         }


## ----echo=T,eval=F-------------------------------------------------------
## x <- 5
## while(x > 0){
##         print(x)
##         x <- x + 1
##         if (x == 16) break
##         }


## ----echo=T, eval=F------------------------------------------------------
## for (sequence){
##            statement
## }


## ---- echo =T , eval =F--------------------------------------------------
## A <- matrix(rnorm(100),10,10)
## col.means <- c()
## for (i in 1:nrow(A)){
##        col.means[i] <- mean(A[,i])
##      }


## ---- echo =T , eval =F--------------------------------------------------
## A <- matrix(runif(100,100,500),10,10)
## s.A <- matrix(0,10,10)
## for(j in 1:ncol(A)){
##       Mean <- mean(A[,j])
##       st.dev <- sd(A[,j])
##       for (i in 1:nrow(A)){
##               s.A[i,j] <- (A[i,j]-Mean)/st.dev
##       }
##   }


## ----echo=T, eval=F------------------------------------------------------
## A <- matrix(runif(100,100,500),10,10)
## A.d.2 <- A
## for(j in 1:ncol(A)){
##       for (i in 1:nrow(A)){
##                if (i!=j) next
##                A.d.2[i,j] <- (A[i,j])ˆ2
##       }
##   }


## ----echo=T, eval=F------------------------------------------------------
## A <- matrix(0,10,10)
## for(i in 1:ncol(A)){
##     for (j in 1:nrow(A)){
##           if (i==j){
##                 break
##               } else {
##                 A[j,i] <- i*j
##               }
##       }
##   }


## ----echo=T,eval=F-------------------------------------------------------
## apply(X, MARGIN, FUN, ...)


## ----echo=T,eval=F-------------------------------------------------------
## A <- matrix(rnorm(100),10,10)
## col.means <- apply(A,2,mean)


## ----echo=T,eval=F-------------------------------------------------------
## apply(X, MARGIN, FUN, ...)


## ----echo=T,eval=F-------------------------------------------------------
## colSums (x, na.rm = FALSE)        colMeans(x, na.rm = FALSE)
## rowSums (x, na.rm = FALSE)        rowMeans(x, na.rm = FALSE)


## ----echo=T,eval=F-------------------------------------------------------
## lapply(X, FUN, ...)
## sapply(X, FUN, ...)


## ----echo=T,eval=F-------------------------------------------------------
## data <-list(A=matrix(1:25,5,5), B=matrix(letters[1:25],5,5))
## #usando lapply
## col.data <- lapply(data,'[',,2)
## 
## #usando sapply
## col.data <- sapply(data,'[',,2)
## 
## #un uso util de sapply para multiples data frame
## dim.data <- sapply(data,dim)
## 
## # Unn buen uso para lapply
## pkg <- c("ggplot2", "spdep" ,"rgdal","rvest")
## lapply(pkg,require, character.only = TRUE)


## ----echo=T,eval=F-------------------------------------------------------
## #set the iteration number
## n <- 10000
## # set the sample size
## s <- 1000
## # set a seed for replicability
## set.seed(111)
## # set betas values
## b1 <- 4 ; b2 <- 2
## # create the x variable
## x <- runif(s,200,400)
## b2_e <- rep(0,n)
## for (j in 1:n){
## 	e <- rnorm(s)
## 	y <- b1+b2*x+e	
## 	b2_e[j] <- lm(y~x)$coefficients[2]
## }
## hist(b2_e); mean(b2_e)


## ---- echo=T,eval=F------------------------------------------------------
## library(ggplot2)
## library(gapminder)
## # Varia la esperanza de vida entre continentes?
## ggplot(data = gapminder, aes(x = continent, y = lifeExp))
##               + geom_boxplot(aes(fill=continent))
## # Varia PIB per cápita entre continentes?
## ggplot(data = gapminder, aes(x = continent, y = gdpPercap))
##               + geom_boxplot(aes(fill=continent))
## # Hay alguna relación entre ambas variables?
## ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))
##               + geom_point(aes(color=continent))
## 
## ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))
##                + geom_point(aes(color=continent)) + scale_x_log10()
## 
## ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))
##               + geom_point(aes(color=continent)) + scale_x_log10()
##               + geom_smooth(method="lm")


## ------------------------------------------------------------------------
ggplot(data = gapminder, aes(x = continent, y = lifeExp)) + geom_boxplot(aes(fill=continent))


## ------------------------------------------------------------------------
ggplot(data = gapminder, aes(x = continent, y = gdpPercap))  + geom_boxplot(aes(fill=continent))


## ---- echot=T------------------------------------------------------------
ggplot(data = gapminder,aes(x = gdpPercap, y = lifeExp)) + geom_point(aes(color=continent))


## ------------------------------------------------------------------------
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point(aes(color=continent)) + scale_x_log10()


## ------------------------------------------------------------------------
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))  + geom_point(aes(color=continent)) + scale_x_log10() + geom_smooth(method="lm")

