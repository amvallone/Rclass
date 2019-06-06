## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)
set.seed(100)
options(repos=c(CRAN="Chile"))



## ---- echo=TRUE----------------------------------------------------------
x <- 2 #numeric
h <- 1L #interger 
z <- "a" #character 
p <- "one" #character 
m <- FALSE #logical 


## ---- echo=TRUE----------------------------------------------------------
z <- c(1,3,4,5)
j <- c("b","c","a")
k <- c(FALSE, TRUE, FALSE)


## ---- echo=TRUE----------------------------------------------------------
#create a character vector
gender <- c(rep("male",20), rep("female", 30)) 
#transform into a factor vector
gender <- factor(gender) 


## ---- echo=TRUE----------------------------------------------------------
 y <-matrix(1:20,nrow=5,ncol=4)
 y


## ---- echo=TRUE----------------------------------------------------------
d <- c(1,2,3,4)  #numerical vector
e <- c("red", "white", "red", NA)  #character vector
f <- c(TRUE,TRUE,TRUE,FALSE) #logical vector
mydata <- data.frame(d,e,f)
names(mydata) <- c("ID","Color","Passed")
mydata


## ---- echo=TRUE----------------------------------------------------------
w <- list("Fred", 1:5, y)
w
names(w) <- c("names","numbers","matrix")


## ---- echo=TRUE----------------------------------------------------------
m <- c(8,3,4,5,6,2)
m
m[3] #show the third element of m


## ----echo=TRUE-----------------------------------------------------------
m_1 <- m[c(1,3,4)] #extract element of m and create m_1
m_1
m_1[1] <- 3 #replace the first element of m_1
m_1


## ---- echo=TRUE----------------------------------------------------------
edades <- c("Juan"=23,"Marcelo"=34,"Andres"=40, "Javiera"=19)
names(edades)
edades["Javiera"]
edades [3]


## ---- echo=TRUE----------------------------------------------------------
z <- 1:9
names(z)
z[4]


## ---- echo =TRUE---------------------------------------------------------
m <- matrix(1:6, nrow = 2)
rownames(m) <- c("a","b")
colnames(m) <- LETTERS[1:3] 
m
m["a","C"]
m[2,3]
m["a",]
m[,"A"] 


## ----echo =TRUE----------------------------------------------------------
data <- data.frame("subject"=1:4,
     "sex"=c("M","F","F","M"),"size"=c(7,6,9,11))
data


## ---- echo=TRUE, results="hide"------------------------------------------
data[1,3]       ; data[c(1,2), 2]
data[1,"size"]  ; data[1:2, c("sex","size")]
data[1:2, ]     ; data[c(1,2), c(2,3)]
data[c(1,4), ]  ; data[1, ]
data[1:2, 2]    ; data[ ,"sex"]


## ---- echo=TRUE----------------------------------------------------------
w <- list("Fred", 1:5, y)
names(w)<-c("name","numbers","matrix")
w[[1]] # it is also possible use w[1] in this case
w[[2]][1] #combine list with vector
w[["numbers"]][4]
w[[3]][1, ] #combine list with matrix
w[[3]][ 1,2]
w[["matrix"]][3,1]


## ---- echo=TRUE,results="asis"-------------------------------------------
s <- runif(7, -1L , 1L)
s
positive_s <- s[ s>0 ]
positive_s


## ---- echo=TRUE----------------------------------------------------------
h <- c(1,3,4,6,9,3) 
h[-2]


## ---- echo=TRUE, results="hide"------------------------------------------
2 + 4


## ---- echo=TRUE----------------------------------------------------------
x <- c(2,1,8,3)
y <- c(9,4)
x+y # Element of y is recycled to 9,4,9,4
x-1 # Scalar 1 is recycled to 1,1,1,1


## ----echo=TRUE,results="hide"--------------------------------------------
mean(x, na.rm=FALSE)


## ----echo=TRUE,eval=FALSE------------------------------------------------
##  hist(x, breaks = "Sturges",
##         freq = NULL, probability = !freq,
##         include.lowest = TRUE, right = TRUE,
##         density = NULL, angle = 45, col = NULL, border = NULL,
##         main = paste("Histogram of" , xname),
##         xlim = range(breaks), ylim = NULL,
##         xlab = xname, ylab,
##         axes = TRUE, plot = TRUE, labels = FALSE,
##         nclass = NULL, warn.unused = TRUE, ...)


## ----echo=TRUE,results="hide"--------------------------------------------
mean(x, na.rm=FALSE)


## ---- echo=TRUE, results="hide"------------------------------------------
x <- c(2,1,8,3)
y <- 2 * (0.5 + log(x))


## ----echo=TRUE,eval=FALSE------------------------------------------------
## sum(x)
## mean(x)
## sd(x)
## median(x)
## quantile(x)
## range(x)
## sum(x)
## diff(x)
## sqrt(x)	
## ceiling(x)
## trunc(x)
## floor(x)
## round(x, digits=n)	
## lm(y~x)
## log(x)		
## exp(x)


## ----echo=TRUE,eval=FALSE------------------------------------------------
## substr(x, start=n1, stop=n2)	
## grep(pattern, x , ...)	
## sub(pattern, replacement, x,...)
## strsplit(x, split)		
## paste(..., sep="")	
## toupper(x)	
## tolower(x)


## ----echo=TRUE,eval=FALSE------------------------------------------------
## length(x)
## str(x)
## class(x)
## names(x)
## ls()
## rm(x)


## ----eval=FALSE,echo=TRUE------------------------------------------------
## matrix(x,nrow=x,ncol=m)
## seq(from , to, by)
## rep(x, ntimes)
## cbind(x,y, ...)
## rbind(x,y, ...)
## rnorm(n, m=0,sd=1)
## runif(n, min=0, max=1)
## as.character(x, ...)
## as.numeric(x, ...)
## as.matrix(x, ...)
## as.data.frame(x, ...)


## ----echo=TRUE,eval=FALSE------------------------------------------------
## setwd()
## getwd()
## dir()


## ----echo=TRUE,results="hide",warning=FALSE,eval=FALSE-------------------
## install.packages("ggplot2") #install the ggplot package


## ----echo=TRUE,results="hide",eval=FALSE---------------------------------
## library("sp")


## ---- echo=TRUE,eval=FALSE-----------------------------------------------
## library("devtools")
## install_github("amvallone/estdaR")

