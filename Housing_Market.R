data <- read.csv("data.csv") 
print(head(data)) 
#Visualisation of dataset 
library(ggplot2) 
library(plotly) 
ggplot(data = data,aes(x=bedrooms,y=sqft_living))+geom_point() 
ggplot(data = data,aes(x=yr_built,y=condition))+geom_point() 
ggplot(data = data,aes(x=bedrooms))+geom_histogram() 
ggplot(data = data,aes(x=bathrooms))+geom_boxplot() 
plot_ly(data = data,labels=~bathrooms,type = "pie") 
#correlation test 
cor.test(data$price,data$sqft_living) 
cor.test(data$bedrooms,data$bathrooms) 
cor.test(data$price,data$floors) 
cor.test(data$condition,data$price) 
#Regression 
set.seed(10000) 
train_indices <- sample(1:nrow(mtcars),0.8*nrow(mtcars)) 
train_data <- data[train_indices,] 
test_data <- data[-train_indices,] 
mlr <- lm(bedrooms~price+sqft_living+sqft_lot, data = train_data) 
predicted_mpg_mlr <-predict(mlr, newdata = test_data) 
#Mean Square Error on Multiple Linear Regression Model 
mse_mlr <- mean((predicted_mpg_mlr-test_data$bedrooms)^2) 
print(mse_mlr) 
#Visualization 
plot(mlr,which=1) 