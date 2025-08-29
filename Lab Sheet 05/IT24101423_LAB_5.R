getwd()
setwd("C:\\Users\\it24101423\\Desktop\\lab 5")
#importing the data set
data<-read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")

#view file in seperate window
fix(data)
#Attach the files into the R, so we can call variables by their name
attach(data)

names(data) <- c("X1")
attach(data)
X1


histogram<-hist(X1,main ="histogram for deliver times",breaks = seq(20,70,length=10),right =FALSE)

#part 4
freq <- histogram$counts
cum.freq <- cumsum(freq)       # cumulative frequencies
breaks <- histogram$breaks     # class boundaries

# Plot ogive
plot(breaks, c(0, cum.freq), type="o", col="red", lwd=2,
     main="Cumulative Frequency Polygon (Ogive)",
     xlab="Delivery Time (minutes)", ylab="Cumulative Frequency",
     ylim=c(0, max(cum.freq)))