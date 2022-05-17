#import dataset
setwd("C:/Users/Mhezhye/Desktop/UoS/ASDM/COURSEWORK/Task 4")
Tourism<-read.csv("30 Hotels Reviews.csv", header =TRUE)

install.packages("tm")
library(tm)

#inspect dataset
names(Tourism)
head(Tourism)
tail(Tourism)
summary(Tourism)
str(Tourism)
dim(Tourism)

#Filter the hotels from the dataset and create 30 separate datasets
Review_H.R_1<- subset(Tourism,Hotel.Restaurant.name=="Ann Restaurant")
Review_H.R_2<- subset(Tourism,Hotel.Restaurant.name=="Baba Soul Food")
Review_H.R_3<- subset(Tourism,Hotel.Restaurant.name=="Black Cat")
Review_H.R_4<- subset(Tourism,Hotel.Restaurant.name=="Buffalo Steak House - Karon Beach")
Review_H.R_5<- subset(Tourism,Hotel.Restaurant.name=="Chai Thaifood Restaurant")
Review_H.R_6<- subset(Tourism,Hotel.Restaurant.name=="Curry Night Indian Restaurant")
Review_H.R_7<- subset(Tourism,Hotel.Restaurant.name=="Dino Park")
Review_H.R_8<- subset(Tourism,Hotel.Restaurant.name=="Fatty's")
Review_H.R_9<- subset(Tourism,Hotel.Restaurant.name=="Green Tamarind Kitchen")
Review_H.R_10<-subset(Tourism,Hotel.Restaurant.name=="Il Tagliere da Massimo")
Review_H.R_11<-subset(Tourism,Hotel.Restaurant.name=="Kantok Restaurant at Burasari Resort")
Review_H.R_12<-subset(Tourism,Hotel.Restaurant.name=="Kin Dee Restaurant")
Review_H.R_13<-subset(Tourism,Hotel.Restaurant.name=="Laem Hin Seafood")
Review_H.R_14<-subset(Tourism,Hotel.Restaurant.name=="Lucky 13 Sandwich Rawai")
Review_H.R_15<-subset(Tourism,Hotel.Restaurant.name=="Mare Italian Restaurant")
Review_H.R_16<-subset(Tourism,Hotel.Restaurant.name=="Napoli Ristorante Pizzeria")
Review_H.R_17<-subset(Tourism,Hotel.Restaurant.name=="Ohlala")
Review_H.R_18<-subset(Tourism,Hotel.Restaurant.name=="Panwa House")
Review_H.R_19<-subset(Tourism,Hotel.Restaurant.name=="Poo Nurntong Restaurant")
Review_H.R_20<-subset(Tourism,Hotel.Restaurant.name=="Restaurant at Lillo Island Resort")
Review_H.R_21<-subset(Tourism,Hotel.Restaurant.name=="Rum Jungle")
Review_H.R_22<-subset(Tourism,Hotel.Restaurant.name=="Sam's Steaks and Grill")
Review_H.R_23<-subset(Tourism,Hotel.Restaurant.name=="Siam Deli")
Review_H.R_24<-subset(Tourism,Hotel.Restaurant.name=="Suay Restaurant")
Review_H.R_25<-subset(Tourism,Hotel.Restaurant.name=="Taste Bar & Grill")
Review_H.R_26<-subset(Tourism,Hotel.Restaurant.name=="The Corner Restaurant")
Review_H.R_27<-subset(Tourism,Hotel.Restaurant.name=="The Place")
Review_H.R_28<-subset(Tourism,Hotel.Restaurant.name=="Toto Italian Restaurant")
Review_H.R_29<-subset(Tourism,Hotel.Restaurant.name=="Vista")
Review_H.R_30<-subset(Tourism,Hotel.Restaurant.name=="You and Me Patong")

#inspect the review column
head(Review_H.R_1$Review)
head(Review_H.R_2$Review)
head(Review_H.R_3$Review)
head(Review_H.R_4$Review)
head(Review_H.R_5$Review)
head(Review_H.R_6$Review)
head(Review_H.R_7$Review)
head(Review_H.R_8$Review)
head(Review_H.R_9$Review)
head(Review_H.R_10$Review)
head(Review_H.R_11$Review)
head(Review_H.R_12$Review)
head(Review_H.R_13$Review)
head(Review_H.R_14$Review)
head(Review_H.R_15$Review)
head(Review_H.R_16$Review)
head(Review_H.R_17$Review)
head(Review_H.R_18$Review)
head(Review_H.R_19$Review)
head(Review_H.R_20$Review)
head(Review_H.R_21$Review)
head(Review_H.R_22$Review)
head(Review_H.R_23$Review)
head(Review_H.R_24$Review)
head(Review_H.R_25$Review)
head(Review_H.R_26$Review)
head(Review_H.R_27$Review)
head(Review_H.R_28$Review)
head(Review_H.R_29$Review)
head(Review_H.R_30$Review)

#create text vectors
H.R_1<-Review_H.R_1$Review
H.R_2<-Review_H.R_2$Review
H.R_3<-Review_H.R_3$Review
H.R_4<-Review_H.R_4$Review
H.R_5<-Review_H.R_5$Review
H.R_6<-Review_H.R_6$Review
H.R_7<-Review_H.R_7$Review
H.R_8<-Review_H.R_8$Review
H.R_9<-Review_H.R_9$Review
H.R_10<-Review_H.R_10$Review
H.R_11<-Review_H.R_11$Review
H.R_12<-Review_H.R_12$Review
H.R_13<-Review_H.R_13$Review
H.R_14<-Review_H.R_14$Review
H.R_15<-Review_H.R_15$Review
H.R_16<-Review_H.R_16$Review
H.R_17<-Review_H.R_17$Review
H.R_18<-Review_H.R_18$Review
H.R_19<-Review_H.R_19$Review
H.R_20<-Review_H.R_20$Review
H.R_21<-Review_H.R_21$Review
H.R_22<-Review_H.R_22$Review
H.R_23<-Review_H.R_23$Review
H.R_24<-Review_H.R_24$Review
H.R_25<-Review_H.R_25$Review
H.R_26<-Review_H.R_26$Review
H.R_27<-Review_H.R_27$Review
H.R_28<-Review_H.R_28$Review
H.R_29<-Review_H.R_29$Review
H.R_30<-Review_H.R_30$Review

#convert all texts to lower case
H.R_1<-tolower(H.R_1)
H.R_2<-tolower(H.R_2)
H.R_3<-tolower(H.R_3)
H.R_4<-tolower(H.R_4)
H.R_5<-tolower(H.R_5)
H.R_6<-tolower(H.R_6)
H.R_7<-tolower(H.R_7)
H.R_8<-tolower(H.R_8)
H.R_9<-tolower(H.R_9)
H.R_10<-tolower(H.R_10)
H.R_11<-tolower(H.R_11)
H.R_12<-tolower(H.R_12)
H.R_13<-tolower(H.R_13)
H.R_14<-tolower(H.R_14)
H.R_15<-tolower(H.R_15)
H.R_16<-tolower(H.R_16)
H.R_17<-tolower(H.R_17)
H.R_18<-tolower(H.R_18)
H.R_19<-tolower(H.R_19)
H.R_20<-tolower(H.R_20)
H.R_21<-tolower(H.R_21)
H.R_22<-tolower(H.R_22)
H.R_23<-tolower(H.R_23)
H.R_24<-tolower(H.R_24)
H.R_25<-tolower(H.R_25)
H.R_26<-tolower(H.R_26)
H.R_27<-tolower(H.R_27)
H.R_28<-tolower(H.R_28)
H.R_29<-tolower(H.R_29)
H.R_30<-tolower(H.R_30)

#remove links from review
H.R_1<-gsub("http\\S+\\s*","", H.R_1)
H.R_2<-gsub("http\\S+\\s*","",H.R_2)
H.R_3<-gsub("http\\S+\\s*","",H.R_3)
H.R_4<-gsub("http\\S+\\s*","",H.R_4)
H.R_5<-gsub("http\\S+\\s*","",H.R_5)
H.R_6<-gsub("http\\S+\\s*","",H.R_6)
H.R_7<-gsub("http\\S+\\s*","",H.R_7)
H.R_8<-gsub("http\\S+\\s*","",H.R_8)
H.R_9<-gsub("http\\S+\\s*","",H.R_9)
H.R_10<-gsub("http\\S+\\s*","",H.R_10)
H.R_11<-gsub("http\\S+\\s*","",H.R_11)
H.R_12<-gsub("http\\S+\\s*","",H.R_12)
H.R_13<-gsub("http\\S+\\s*","",H.R_13)
H.R_14<-gsub("http\\S+\\s*","",H.R_14)
H.R_15<-gsub("http\\S+\\s*","",H.R_15)
H.R_16<-gsub("http\\S+\\s*","",H.R_16)
H.R_17<-gsub("http\\S+\\s*","",H.R_17)
H.R_18<-gsub("http\\S+\\s*","",H.R_18)
H.R_19<-gsub("http\\S+\\s*","",H.R_19)
H.R_20<-gsub("http\\S+\\s*","",H.R_20)
H.R_21<-gsub("http\\S+\\s*","",H.R_21)
H.R_22<-gsub("http\\S+\\s*","",H.R_22)
H.R_23<-gsub("http\\S+\\s*","",H.R_23)
H.R_24<-gsub("http\\S+\\s*","",H.R_24)
H.R_25<-gsub("http\\S+\\s*","",H.R_25)
H.R_26<-gsub("http\\S+\\s*","",H.R_26)
H.R_27<-gsub("http\\S+\\s*","",H.R_27)
H.R_28<-gsub("http\\S+\\s*","",H.R_28)
H.R_29<-gsub("http\\S+\\s*","",H.R_29)
H.R_30<-gsub("http\\S+\\s*","",H.R_30)

#remove punctuations from review
H.R_1<-gsub("[[:punct:]]","", H.R_1)
H.R_2<-gsub("[[:punct:]]","",H.R_2)
H.R_3<-gsub("[[:punct:]]","",H.R_3)
H.R_4<-gsub("[[:punct:]]","",H.R_4)
H.R_5<-gsub("[[:punct:]]","",H.R_5)
H.R_6<-gsub("[[:punct:]]","",H.R_6)
H.R_7<-gsub("[[:punct:]]","",H.R_7)
H.R_8<-gsub("[[:punct:]]","",H.R_8)
H.R_9<-gsub("[[:punct:]]","",H.R_9)
H.R_10<-gsub("[[:punct:]]","",H.R_10)
H.R_11<-gsub("[[:punct:]]","",H.R_11)
H.R_12<-gsub("[[:punct:]]","",H.R_12)
H.R_13<-gsub("[[:punct:]]","",H.R_13)
H.R_14<-gsub("[[:punct:]]","",H.R_14)
H.R_15<-gsub("[[:punct:]]","",H.R_15)
H.R_16<-gsub("[[:punct:]]","",H.R_16)
H.R_17<-gsub("[[:punct:]]","",H.R_17)
H.R_18<-gsub("[[:punct:]]","",H.R_18)
H.R_19<-gsub("[[:punct:]]","",H.R_19)
H.R_20<-gsub("[[:punct:]]","",H.R_20)
H.R_21<-gsub("[[:punct:]]","",H.R_21)
H.R_22<-gsub("[[:punct:]]","",H.R_22)
H.R_23<-gsub("[[:punct:]]","",H.R_23)
H.R_24<-gsub("[[:punct:]]","",H.R_24)
H.R_25<-gsub("[[:punct:]]","",H.R_25)
H.R_26<-gsub("[[:punct:]]","",H.R_26)
H.R_27<-gsub("[[:punct:]]","",H.R_27)
H.R_28<-gsub("[[:punct:]]","",H.R_28)
H.R_29<-gsub("[[:punct:]]","",H.R_29)
H.R_30<-gsub("[[:punct:]]","",H.R_30)

#remove blank spaces at the beginning of review
H.R_1<-gsub("^ ","",H.R_1)
H.R_2<-gsub("^ ","",H.R_2)
H.R_3<-gsub("^ ","",H.R_3)
H.R_4<-gsub("^ ","",H.R_4)
H.R_5<-gsub("^ ","",H.R_5)
H.R_6<-gsub("^ ","",H.R_6)
H.R_7<-gsub("^ ","",H.R_7)
H.R_8<-gsub("^ ","",H.R_8)
H.R_9<-gsub("^ ","",H.R_9)
H.R_10<-gsub("^ ","",H.R_10)
H.R_11<-gsub("^ ","",H.R_11)
H.R_12<-gsub("^ ","",H.R_12)
H.R_13<-gsub("^ ","",H.R_13)
H.R_14<-gsub("^ ","",H.R_14)
H.R_15<-gsub("^ ","",H.R_15)
H.R_16<-gsub("^ ","",H.R_16)
H.R_17<-gsub("^ ","",H.R_17)
H.R_18<-gsub("^ ","",H.R_18)
H.R_19<-gsub("^ ","",H.R_19)
H.R_20<-gsub("^ ","",H.R_20)
H.R_21<-gsub("^ ","",H.R_21)
H.R_22<-gsub("^ ","",H.R_22)
H.R_23<-gsub("^ ","",H.R_23)
H.R_24<-gsub("^ ","",H.R_24)
H.R_25<-gsub("^ ","",H.R_25)
H.R_26<-gsub("^ ","",H.R_26)
H.R_27<-gsub("^ ","",H.R_27)
H.R_28<-gsub("^ ","",H.R_28)
H.R_29<-gsub("^ ","",H.R_29)
H.R_30<-gsub("^ ","",H.R_30)

#remove blank spaces at the end of review
H.R_1<-gsub(" $","",H.R_1)
H.R_2<-gsub(" $","",H.R_2)
H.R_3<-gsub(" $","",H.R_3)
H.R_4<-gsub(" $","",H.R_4)
H.R_5<-gsub(" $","",H.R_5)
H.R_6<-gsub(" $","",H.R_6)
H.R_7<-gsub(" $","",H.R_7)
H.R_8<-gsub(" $","",H.R_8)
H.R_9<-gsub(" $","",H.R_9)
H.R_10<-gsub(" $","",H.R_10)
H.R_11<-gsub(" $","",H.R_11)
H.R_12<-gsub(" $","",H.R_12)
H.R_13<-gsub(" $","",H.R_13)
H.R_14<-gsub(" $","",H.R_14)
H.R_15<-gsub(" $","",H.R_15)
H.R_16<-gsub(" $","",H.R_16)
H.R_17<-gsub(" $","",H.R_17)
H.R_18<-gsub(" $","",H.R_18)
H.R_19<-gsub(" $","",H.R_19)
H.R_20<-gsub(" $","",H.R_20)
H.R_21<-gsub(" $","",H.R_21)
H.R_22<-gsub(" $","",H.R_22)
H.R_23<-gsub(" $","",H.R_23)
H.R_24<-gsub(" $","",H.R_24)
H.R_25<-gsub(" $","",H.R_25)
H.R_26<-gsub(" $","",H.R_26)
H.R_27<-gsub(" $","",H.R_27)
H.R_28<-gsub(" $","",H.R_28)
H.R_29<-gsub(" $","",H.R_29)
H.R_30<-gsub(" $","",H.R_30)

#remove 'restaurant' from the review
H.R_1<-gsub("restaurant","",H.R_1)
H.R_2<-gsub("restaurant","",H.R_2)
H.R_3<-gsub("restaurant","",H.R_3)
H.R_4<-gsub("restaurant","",H.R_4)
H.R_5<-gsub("restaurant","",H.R_5)
H.R_6<-gsub("restaurant","",H.R_6)
H.R_7<-gsub("restaurant","",H.R_7)
H.R_8<-gsub("restaurant","",H.R_8)
H.R_9<-gsub("restaurant","",H.R_9)
H.R_10<-gsub("restaurant","",H.R_10)
H.R_11<-gsub("restaurant","",H.R_11)
H.R_12<-gsub("restaurant","",H.R_12)
H.R_13<-gsub("restaurant","",H.R_13)
H.R_14<-gsub("restaurant","",H.R_14)
H.R_15<-gsub("restaurant","",H.R_15)
H.R_16<-gsub("restaurant","",H.R_16)
H.R_17<-gsub("restaurant","",H.R_17)
H.R_18<-gsub("restaurant","",H.R_18)
H.R_19<-gsub("restaurant","",H.R_19)
H.R_20<-gsub("restaurant","",H.R_20)
H.R_21<-gsub("restaurant","",H.R_21)
H.R_22<-gsub("restaurant","",H.R_22)
H.R_23<-gsub("restaurant","",H.R_23)
H.R_24<-gsub("restaurant","",H.R_24)
H.R_25<-gsub("restaurant","",H.R_25)
H.R_26<-gsub("restaurant","",H.R_26)
H.R_27<-gsub("restaurant","",H.R_27)
H.R_28<-gsub("restaurant","",H.R_28)
H.R_29<-gsub("restaurant","",H.R_29)
H.R_30<-gsub("restaurant","",H.R_30)

#remove 'place' from the review
H.R_1<-gsub("place","",H.R_1)
H.R_2<-gsub("place","",H.R_2)
H.R_3<-gsub("place","",H.R_3)
H.R_4<-gsub("place","",H.R_4)
H.R_5<-gsub("place","",H.R_5)
H.R_6<-gsub("place","",H.R_6)
H.R_7<-gsub("place","",H.R_7)
H.R_8<-gsub("place","",H.R_8)
H.R_9<-gsub("place","",H.R_9)
H.R_10<-gsub("place","",H.R_10)
H.R_11<-gsub("place","",H.R_11)
H.R_12<-gsub("place","",H.R_12)
H.R_13<-gsub("place","",H.R_13)
H.R_14<-gsub("place","",H.R_14)
H.R_15<-gsub("place","",H.R_15)
H.R_16<-gsub("place","",H.R_16)
H.R_17<-gsub("place","",H.R_17)
H.R_18<-gsub("place","",H.R_18)
H.R_19<-gsub("place","",H.R_19)
H.R_20<-gsub("place","",H.R_20)
H.R_21<-gsub("place","",H.R_21)
H.R_22<-gsub("place","",H.R_22)
H.R_23<-gsub("place","",H.R_23)
H.R_24<-gsub("place","",H.R_24)
H.R_25<-gsub("place","",H.R_25)
H.R_26<-gsub("place","",H.R_26)
H.R_27<-gsub("place","",H.R_27)
H.R_28<-gsub("place","",H.R_28)
H.R_29<-gsub("place","",H.R_29)
H.R_30<-gsub("place","",H.R_30)

#inspect vectors after cleaning
head(H.R_1)
head(H.R_2)
head(H.R_3)
head(H.R_4)
head(H.R_5)
head(H.R_6)
head(H.R_7)
head(H.R_8)
head(H.R_9)
head(H.R_10)
head(H.R_11)
head(H.R_12)
head(H.R_13)
head(H.R_14)
head(H.R_15)
head(H.R_16)
head(H.R_17)
head(H.R_18)
head(H.R_19)
head(H.R_20)
head(H.R_21)
head(H.R_22)
head(H.R_23)
head(H.R_24)
head(H.R_25)
head(H.R_26)
head(H.R_27)
head(H.R_28)
head(H.R_29)
head(H.R_30)

#convert vectors to corpus
Corpus_H.R_1 <- Corpus(VectorSource(H.R_1))
Corpus_H.R_2 <- Corpus(VectorSource(H.R_2))
Corpus_H.R_3 <- Corpus(VectorSource(H.R_3))
Corpus_H.R_4 <- Corpus(VectorSource(H.R_4))
Corpus_H.R_5 <- Corpus(VectorSource(H.R_5))
Corpus_H.R_6 <- Corpus(VectorSource(H.R_6))
Corpus_H.R_7 <- Corpus(VectorSource(H.R_7))
Corpus_H.R_8 <- Corpus(VectorSource(H.R_8))
Corpus_H.R_9 <- Corpus(VectorSource(H.R_9))
Corpus_H.R_10 <- Corpus(VectorSource(H.R_10))
Corpus_H.R_11 <- Corpus(VectorSource(H.R_11))
Corpus_H.R_12 <- Corpus(VectorSource(H.R_12))
Corpus_H.R_13 <- Corpus(VectorSource(H.R_13))
Corpus_H.R_14 <- Corpus(VectorSource(H.R_14))
Corpus_H.R_15 <- Corpus(VectorSource(H.R_15))
Corpus_H.R_16 <- Corpus(VectorSource(H.R_16))
Corpus_H.R_17 <- Corpus(VectorSource(H.R_17))
Corpus_H.R_18 <- Corpus(VectorSource(H.R_18))
Corpus_H.R_19 <- Corpus(VectorSource(H.R_19))
Corpus_H.R_20 <- Corpus(VectorSource(H.R_20))
Corpus_H.R_21 <- Corpus(VectorSource(H.R_21))
Corpus_H.R_22 <- Corpus(VectorSource(H.R_22))
Corpus_H.R_23 <- Corpus(VectorSource(H.R_23))
Corpus_H.R_24 <- Corpus(VectorSource(H.R_24))
Corpus_H.R_25 <- Corpus(VectorSource(H.R_25))
Corpus_H.R_26 <- Corpus(VectorSource(H.R_26))
Corpus_H.R_27 <- Corpus(VectorSource(H.R_27))
Corpus_H.R_28 <- Corpus(VectorSource(H.R_28))
Corpus_H.R_29 <- Corpus(VectorSource(H.R_29))
Corpus_H.R_30 <- Corpus(VectorSource(H.R_30))

#Inspect corpus
Corpus_H.R_1 
Corpus_H.R_2 
Corpus_H.R_3 
Corpus_H.R_4 
Corpus_H.R_5 
Corpus_H.R_6 
Corpus_H.R_7 
Corpus_H.R_8 
Corpus_H.R_9 
Corpus_H.R_10 
Corpus_H.R_11 
Corpus_H.R_12 
Corpus_H.R_13 
Corpus_H.R_14 
Corpus_H.R_15 
Corpus_H.R_16 
Corpus_H.R_17 
Corpus_H.R_18
Corpus_H.R_19 
Corpus_H.R_20
Corpus_H.R_21
Corpus_H.R_22
Corpus_H.R_23 
Corpus_H.R_24 
Corpus_H.R_25 
Corpus_H.R_26 
Corpus_H.R_27 
Corpus_H.R_28 
Corpus_H.R_29 
Corpus_H.R_30 

#cleanup corpus by removing stop words and whitespaces
Corpus_H.R_1 <- tm_map(Corpus_H.R_1, removeWords, stopwords("english"))
Corpus_H.R_1 <- tm_map(Corpus_H.R_1,stripWhitespace)
inspect(Corpus_H.R_1)
Corpus_H.R_2 <- tm_map(Corpus_H.R_2, removeWords, stopwords("english"))
Corpus_H.R_2 <- tm_map(Corpus_H.R_2,stripWhitespace)
inspect(Corpus_H.R_2)
Corpus_H.R_3 <- tm_map(Corpus_H.R_3, removeWords, stopwords("english"))
Corpus_H.R_3 <- tm_map(Corpus_H.R_3,stripWhitespace)
inspect(Corpus_H.R_3)
Corpus_H.R_4 <- tm_map(Corpus_H.R_4, removeWords, stopwords("english"))
Corpus_H.R_4 <- tm_map(Corpus_H.R_4,stripWhitespace)
inspect(Corpus_H.R_4)
Corpus_H.R_5 <- tm_map(Corpus_H.R_5, removeWords, stopwords("english"))
Corpus_H.R_5 <- tm_map(Corpus_H.R_5,stripWhitespace)
inspect(Corpus_H.R_5)
Corpus_H.R_6 <- tm_map(Corpus_H.R_6, removeWords, stopwords("english"))
Corpus_H.R_6 <- tm_map(Corpus_H.R_6,stripWhitespace)
inspect(Corpus_H.R_6)
Corpus_H.R_7 <- tm_map(Corpus_H.R_7, removeWords, stopwords("english"))
Corpus_H.R_7 <- tm_map(Corpus_H.R_7,stripWhitespace)
inspect(Corpus_H.R_7)
Corpus_H.R_8 <- tm_map(Corpus_H.R_8, removeWords, stopwords("english"))
Corpus_H.R_8 <- tm_map(Corpus_H.R_8,stripWhitespace)
inspect(Corpus_H.R_8)
Corpus_H.R_9 <- tm_map(Corpus_H.R_9, removeWords, stopwords("english"))
Corpus_H.R_9 <- tm_map(Corpus_H.R_9,stripWhitespace)
inspect(Corpus_H.R_9)
Corpus_H.R_10 <- tm_map(Corpus_H.R_10, removeWords, stopwords("english"))
Corpus_H.R_10 <- tm_map(Corpus_H.R_10,stripWhitespace)
inspect(Corpus_H.R_10)
Corpus_H.R_11 <- tm_map(Corpus_H.R_11, removeWords, stopwords("english"))
Corpus_H.R_11 <- tm_map(Corpus_H.R_11,stripWhitespace)
inspect(Corpus_H.R_11)
Corpus_H.R_12 <- tm_map(Corpus_H.R_12, removeWords, stopwords("english"))
Corpus_H.R_12 <- tm_map(Corpus_H.R_12,stripWhitespace)
inspect(Corpus_H.R_12)
Corpus_H.R_13 <- tm_map(Corpus_H.R_13, removeWords, stopwords("english"))
Corpus_H.R_13 <- tm_map(Corpus_H.R_13,stripWhitespace)
inspect(Corpus_H.R_13)
Corpus_H.R_14 <- tm_map(Corpus_H.R_14, removeWords, stopwords("english"))
Corpus_H.R_14 <- tm_map(Corpus_H.R_14,stripWhitespace)
inspect(Corpus_H.R_14)
Corpus_H.R_15 <- tm_map(Corpus_H.R_15, removeWords, stopwords("english"))
Corpus_H.R_15 <- tm_map(Corpus_H.R_15,stripWhitespace)
inspect(Corpus_H.R_15)
Corpus_H.R_16 <- tm_map(Corpus_H.R_16, removeWords, stopwords("english"))
Corpus_H.R_16 <- tm_map(Corpus_H.R_16,stripWhitespace)
inspect(Corpus_H.R_16)
Corpus_H.R_17 <- tm_map(Corpus_H.R_17, removeWords, stopwords("english"))
Corpus_H.R_17 <- tm_map(Corpus_H.R_17,stripWhitespace)
inspect(Corpus_H.R_17)
Corpus_H.R_18 <- tm_map(Corpus_H.R_18, removeWords, stopwords("english"))
Corpus_H.R_18 <- tm_map(Corpus_H.R_18,stripWhitespace)
inspect(Corpus_H.R_18)
Corpus_H.R_19 <- tm_map(Corpus_H.R_19, removeWords, stopwords("english"))
Corpus_H.R_19 <- tm_map(Corpus_H.R_19,stripWhitespace)
inspect(Corpus_H.R_19)
Corpus_H.R_20 <- tm_map(Corpus_H.R_20, removeWords, stopwords("english"))
Corpus_H.R_20 <- tm_map(Corpus_H.R_20,stripWhitespace)
inspect(Corpus_H.R_20)
Corpus_H.R_21 <- tm_map(Corpus_H.R_21, removeWords, stopwords("english"))
Corpus_H.R_21 <- tm_map(Corpus_H.R_21,stripWhitespace)
inspect(Corpus_H.R_21)
Corpus_H.R_22 <- tm_map(Corpus_H.R_22, removeWords, stopwords("english"))
Corpus_H.R_22 <- tm_map(Corpus_H.R_22,stripWhitespace)
inspect(Corpus_H.R_22)
Corpus_H.R_23 <- tm_map(Corpus_H.R_23, removeWords, stopwords("english"))
Corpus_H.R_23 <- tm_map(Corpus_H.R_23,stripWhitespace)
inspect(Corpus_H.R_23)
Corpus_H.R_24 <- tm_map(Corpus_H.R_24, removeWords, stopwords("english"))
Corpus_H.R_24 <- tm_map(Corpus_H.R_24,stripWhitespace)
inspect(Corpus_H.R_24)
Corpus_H.R_25 <- tm_map(Corpus_H.R_25, removeWords, stopwords("english"))
Corpus_H.R_25 <- tm_map(Corpus_H.R_25,stripWhitespace)
inspect(Corpus_H.R_25)
Corpus_H.R_26 <- tm_map(Corpus_H.R_26, removeWords, stopwords("english"))
Corpus_H.R_26 <- tm_map(Corpus_H.R_26,stripWhitespace)
inspect(Corpus_H.R_26)
Corpus_H.R_27 <- tm_map(Corpus_H.R_27, removeWords, stopwords("english"))
Corpus_H.R_27 <- tm_map(Corpus_H.R_27,stripWhitespace)
inspect(Corpus_H.R_27)
Corpus_H.R_28 <- tm_map(Corpus_H.R_28, removeWords, stopwords("english"))
Corpus_H.R_28 <- tm_map(Corpus_H.R_28,stripWhitespace)
inspect(Corpus_H.R_28)
Corpus_H.R_29 <- tm_map(Corpus_H.R_29, removeWords, stopwords("english"))
Corpus_H.R_29 <- tm_map(Corpus_H.R_29,stripWhitespace)
inspect(Corpus_H.R_29)
Corpus_H.R_30 <- tm_map(Corpus_H.R_30, removeWords, stopwords("english"))
Corpus_H.R_30 <- tm_map(Corpus_H.R_30,stripWhitespace)
inspect(Corpus_H.R_30)

install.packages("SnowballC")
library(SnowballC)

#stem the words to their root of all reviews present in the corpus
Stem_Corpus_H.R_1 <- tm_map(Corpus_H.R_1, stemDocument)
Stem_Corpus_H.R_2 <- tm_map(Corpus_H.R_2, stemDocument)
Stem_Corpus_H.R_3 <- tm_map(Corpus_H.R_3, stemDocument)
Stem_Corpus_H.R_4 <- tm_map(Corpus_H.R_4, stemDocument)
Stem_Corpus_H.R_5 <- tm_map(Corpus_H.R_5, stemDocument)
Stem_Corpus_H.R_6 <- tm_map(Corpus_H.R_6, stemDocument)
Stem_Corpus_H.R_7 <- tm_map(Corpus_H.R_7, stemDocument)
Stem_Corpus_H.R_8 <- tm_map(Corpus_H.R_8, stemDocument)
Stem_Corpus_H.R_9 <- tm_map(Corpus_H.R_9, stemDocument)
Stem_Corpus_H.R_10 <- tm_map(Corpus_H.R_10, stemDocument)
Stem_Corpus_H.R_11 <- tm_map(Corpus_H.R_11, stemDocument)
Stem_Corpus_H.R_12 <- tm_map(Corpus_H.R_12, stemDocument)
Stem_Corpus_H.R_13 <- tm_map(Corpus_H.R_13, stemDocument)
Stem_Corpus_H.R_14 <- tm_map(Corpus_H.R_14, stemDocument)
Stem_Corpus_H.R_15 <- tm_map(Corpus_H.R_15, stemDocument)
Stem_Corpus_H.R_16 <- tm_map(Corpus_H.R_16, stemDocument)
Stem_Corpus_H.R_17 <- tm_map(Corpus_H.R_17, stemDocument)
Stem_Corpus_H.R_18 <- tm_map(Corpus_H.R_18, stemDocument)
Stem_Corpus_H.R_19 <- tm_map(Corpus_H.R_19, stemDocument)
Stem_Corpus_H.R_20 <- tm_map(Corpus_H.R_20, stemDocument)
Stem_Corpus_H.R_21 <- tm_map(Corpus_H.R_21, stemDocument)
Stem_Corpus_H.R_22 <- tm_map(Corpus_H.R_22, stemDocument)
Stem_Corpus_H.R_23 <- tm_map(Corpus_H.R_23, stemDocument)
Stem_Corpus_H.R_24 <- tm_map(Corpus_H.R_24, stemDocument)
Stem_Corpus_H.R_25 <- tm_map(Corpus_H.R_25, stemDocument)
Stem_Corpus_H.R_26 <- tm_map(Corpus_H.R_26, stemDocument)
Stem_Corpus_H.R_27 <- tm_map(Corpus_H.R_27, stemDocument)
Stem_Corpus_H.R_28 <- tm_map(Corpus_H.R_28, stemDocument)
Stem_Corpus_H.R_29 <- tm_map(Corpus_H.R_29, stemDocument)
Stem_Corpus_H.R_30 <- tm_map(Corpus_H.R_30, stemDocument)

#load negative and positive lexicon data
positive_lexicon <- read.csv("positive-lexicon.txt")
negative_lexicon <- read.csv("negative-lexicon.txt")

#inspect lexicons
head(positive_lexicon)
tail(positive_lexicon)
head(negative_lexicon)
tail(negative_lexicon)

install.packages("wordcloud")
library(wordcloud)

#create function for sentiment analysis
Sentiment_func <- function(stem_corpus)
{
  #generate wordcloud
  wordcloud(stem_corpus, min.freq = 3, 
            colors = brewer.pal(8,"Dark2"), 
            random.color = TRUE, max.words = 20)
  #calculate count of total +ive and -ive words in each review
  
  #create variables and vectors
  total_positive_count <- 0
  total_negative_count <- 0
  positive_count_vector <- c()
  negative_count_vector <- c()
  
 #calc the size of the corpus
  size_of_corpus <- length(stem_corpus)

for (i in 1: size)
{
  #all the words in current review
  All_corpus_words<-list(strsplit(stem_corpus[[i]]$content, split= " "))
  
#positive words in current review
positive_word_count<- length(intersect(unlist(All_corpus_words),unlist(positive_lexicon)))
#negative words in current review
negative_word_count<- length(intersect(unlist(All_corpus_words),unlist(negative_lexicon)))

total_positive_count <- total_positive_count+positive_word_count
total_negative_count <- total_negative_count+negative_word_count

}
  #calc the overall percentage of +ive and -ive words of all reviews
  total_positive_count
  total_negative_count
  total_count<- total_positive_count+total_negative_count
  
  Positive_percentage<-(total_positive_count*100)/ total_count
  Negative_percentage<-(total_negative_count*100)/ total_count
  Positive_percentage
  
 #create a dataframe
  df<-data.frame(Review_Type= c("Positive","Negative"),
                   Count= c(total_positive_count, total_negative_count  ))
  print(df)
  
  Positive_percentage<-paste("Percentage of Positive Reviews:", 
                                     round(Positive_percentage,2), "%")
  return(Positive_percentage)
  
}

#use the sentiment_func() function to calculate percentage of positive reviews and wordcloud
Sentiment_func(Stem_Corpus_H.R_1)
Sentiment_func(Stem_Corpus_H.R_2)
Sentiment_func(Stem_Corpus_H.R_3)
Sentiment_func(Stem_Corpus_H.R_4)
Sentiment_func(Stem_Corpus_H.R_5)
Sentiment_func(Stem_Corpus_H.R_6)
Sentiment_func(Stem_Corpus_H.R_7)
Sentiment_func(Stem_Corpus_H.R_8)
Sentiment_func(Stem_Corpus_H.R_9)
Sentiment_func(Stem_Corpus_H.R_10)
Sentiment_func(Stem_Corpus_H.R_11)
Sentiment_func(Stem_Corpus_H.R_12)
Sentiment_func(Stem_Corpus_H.R_13)
Sentiment_func(Stem_Corpus_H.R_14)
Sentiment_func(Stem_Corpus_H.R_15)
Sentiment_func(Stem_Corpus_H.R_16)
Sentiment_func(Stem_Corpus_H.R_17)
Sentiment_func(Stem_Corpus_H.R_18)
Sentiment_func(Stem_Corpus_H.R_19)
Sentiment_func(Stem_Corpus_H.R_20)
Sentiment_func(Stem_Corpus_H.R_21)
Sentiment_func(Stem_Corpus_H.R_22)
Sentiment_func(Stem_Corpus_H.R_23)
Sentiment_func(Stem_Corpus_H.R_24)
Sentiment_func(Stem_Corpus_H.R_25)
Sentiment_func(Stem_Corpus_H.R_26)
Sentiment_func(Stem_Corpus_H.R_27)
Sentiment_func(Stem_Corpus_H.R_28)
Sentiment_func(Stem_Corpus_H.R_29)
Sentiment_func(Stem_Corpus_H.R_30)

install.packages("sentimentr")
library(sentimentr)
install.packages("tidyverse")
library(tidyverse)

#plot negative and positive sentiment 
Tourism %>%
  get_sentences() %>%
  sentiment() -> Tour_senti

Tour_senti %>%
  ggplot()+geom_boxplot(aes(y=Hotel.Restaurant.name, x=sentiment))

#generate a web sentiment analysis
Tour_senti %>%
  mutate(polarity_level =ifelse(sentiment> 0, "Positive","Negative")) %>%
  count(Hotel.Restaurant.name, polarity_level) %>%
  ggplot()+geom_col(aes(y=Hotel.Restaurant.name, x=n, fill=polarity_level))+
  theme_minimal()

Tourism %>%
  get_sentences() %>%
  sentiment_by(by=c("Location","Hotel.Restaurant.name"))

    Tourism$Review %>%
      get_sentences()%>%
      sentiment_by()%>%
      highlight()
    
