#Research question: How do applicant features, specifically credit score, income, reliability,
#and payment history influence loan approval?

#Load dataset
data <- read.csv("C:/Users/Owner/OneDrive/Desktop/Loan_Applicants.csv")

# Histogram: Number of Missed/Late Payments
hist(data$Number.of.Missed.Late.Payments,
     main = "Histogram of Missed/Late Payments",
     xlab = "Missed/Late Payments",
     col = "steelblue",
     breaks = 20)

# Histogram: Monthly Income
hist(data$Monthly.Income,
     main = "Histogram of Monthly Income",
     xlab = "Monthly Income",
     col = "seagreen",
     breaks = 25)



# Boxplot of Reliability
boxplot(data$Reliability,
        main = "Boxplot of Reliability",
        ylab = "Reliability Score",
        col = "red")

# Load necessary package
library(corrplot)

# Remove Applicant ID and Make Loan columns
num_data <- subset(data, select = -c(Applicant.ID, Make.Loan))

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






