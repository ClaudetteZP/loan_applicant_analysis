#Research question: How do applicant features, specifically credit score, income, reliability,
#and payment history influence loan approval?

#Load dataset
data <- read.csv("C:/Users/Owner/OneDrive/Desktop/Loan_Applicants.csv")

hist(payment_data$Number.of.Missed.Late.Payments,
     main = "Missed/Late Payments Histogram",
     xlab = "Number of Missed or Late Payments",
     col = "steelblue",
     breaks = 20,
     border = "white")





# Histogram: Monthly Income
hist(data$Monthly.Income,
     main = "Monthly Income Histogram",
     xlab = "Monthly Income",
     col = "seagreen",
     breaks = 20,
     border = "darkgrey")



# Boxplot of Reliability
boxplot(data$Reliability,
        main = "Reliability Boxplot",
        ylab = "Reliability Score",
        col = "red")

# Load necessary package
library(corrplot)

#Load data
payment_data <- read.csv("C:/Users/Owner/OneDrive/Desktop/Loan_Applicants.csv")
num_data <- subset(payment_data, select = -c(Applicant.ID, Make.Loan))

# Compute Pearson correlation matrix
cor_matrix <- cor(num_data, use = "complete.obs")

# Visualize correlation matrix as a heatmap
corrplot(cor_matrix, method = "color", tl.cex = 0.8, number.cex = 0.7)


# Ensure Make.Loan is treated as a factor
data$Make.Loan <- as.factor(data$Make.Loan)

# Run t-test for Credit Score based on Make Loan groups
t_test_result <- t.test(Credit.Score ~ Make.Loan, data = data)

# Print results
print(t_test_result)






