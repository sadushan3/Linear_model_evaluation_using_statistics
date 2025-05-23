#reading the data-set
setwd("C:\\Users\\MSii\\Desktop\\Model Analysis")
data_set=read.csv("C:\\Users\\MSii\\Desktop\\Model Analysis\\ai_dev_productivity.csv")
head(data_set)

#checking the linearity for the significant variable 

predictor=setdiff(names(data_set),"hours_coding")

par(mfrow = c(ceiling(length(predictor)/2), 2))

for (var in predictor) {
  plot(data_set[[var]], data_set$hours_coding,
       main = paste("Scatter plot", var, "vs coding hours"),
       xlab = var, ylab = "coding hours")
  #abline(lm(hours_coding ~ data_set[[var]]), col="red")
}
