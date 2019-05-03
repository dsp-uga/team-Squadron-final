library(caret)
library(tibble)
library(graphics)
library(olsrr)
library(bootstrap)
library(lattice)
library(DAAG)
library(lmridge)
library(data.table)
library(glmnet)
library(rsm)
library(lars)
library(readr)


df_train <- read.csv("train.csv")
df_train <- subset(df_train, select = -c(ID_code))

#create formula from set of features for models
fm <- "target ~ ."
print (fm)


###############################################################################
#Simple regression
linear_model<-lm(fm, data = df_train)

# define functions 
theta.linear_model <- function(a,b){lsfit(a,b)}
theta.predict <- function(linear_model,a){cbind(1,a)%*%linear_model$coef} 

cv_lm <- crossval(A,b,theta.linear_model,theta.predict,ngroup=10)
res <- cor(b,cv_lm$cv.fit)**2 # cross-validated R2
print ("cv_r_square = ")
print (res[1])
#0.1799866


###############################################################################
#Ridge regression
ridge_linear_model<-lmridge(fm , data = df_train, K=c(0.1,0.001))
# define functions 
theta.ridge_linear_model <- function(a,b){lsfit(a,b)}
theta.predict <- function(ridge_linear_model,a){cbind(1,a)%*%ridge_linear_model$coef} 

# matrix of predictors
A <- as.matrix(subset(df_train, select = -c(target)))
# vector of predicted values
b <- as.matrix(subset(df_train, select = c(target))) 

cv_ridge <- crossval(A,b,theta.ridge_linear_model,theta.predict,ngroup=10)
res <- cor(b,cv_ridge$cv.fit)**2 # cross-validated R2
print ("cv_r_square = ")
print (res[1])
#0.1799114


###############################################################################
#Lasso
lasso_m <- lars(A, df_train$target, type = 'lasso')

# define functions 
theta.lasso_m <- function(a,b){lsfit(a,b)}
theta.predict <- function(lasso_m,a){cbind(1,a)%*%lasso_m$coef} 

cv_lasso_m <- crossval(A,b,theta.lasso_m,theta.predict,ngroup=10)
res<- cor(b,cv_lasso_m$cv.fit)**2 # cross-validated R2
print ("cv_r_square = ")
print (res[1])
#0.1799598

