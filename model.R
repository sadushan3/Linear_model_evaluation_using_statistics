                                                      # Checking the accuracy of the Model And The Other Charcters 


#reading the data-set
setwd("C:\\Users\\MSii\\Desktop\\Model Analysis")
data_set=read.csv("C:\\Users\\MSii\\Desktop\\Model Analysis\\ai_dev_productivity.csv")
head(data_set)

#testing linear regression for all variables
linear_testing=lm(hours_coding ~ . , data=data_set)
summary(linear_testing)

#Spitting data into training set and test set usually 80% and 20%

train_data=sample(1:nrow(data_set),round(0.8*nrow(data_set)))

training_data=data_set[train_data,]

test_data=data_set[-train_data,]

#training model

model_train=lm(hours_coding ~ ., data=training_data)
summary(model_train)

#predicting the values  for the test data set

predicting_data=predict(model_train,test_data)

predicting_actual=test_data$hours_coding



#calculating the errors for model performance 


MSE=mean((predicting_data-predicting_actual)^2)
RMSE=sqrt(MSE)

print(MSE)
print(RMSE)

print(predicting_data)
print(train_data)
print(test_data)

