#CLASS 2 EXPMETH 1

getwd() #seeing where a thing is stored
?read.table() #hjælp til data input

#choosing one of the argument-variations

Pers_Data <- read.csv("~/Desktop/ExpMeth-1---Assignment-1/Personality_test/Pers_Data.csv",header = TRUE)
Pers_Data
View(Pers_Data)
#Remember to save the file in a special way

#packages

install.packages("pacman") #just write it in the console, it will be on the compiter forevaar
#(just comment it out)

library(pacman)

pacman::p_load(tidyverse) #installs missing packages and just ignoring those that are downloaded

#filter function

#finding all people with shoesize 40

shoes40 <- filter(Pers_Data, shoesize == 40)
#if you need to show, type View(thing)

#if you forget the different coluums, type $ and choose the frames after naming the dataframe
#filter by several arguments

male_lefthanded <- filter(Pers_Data, gender == "male" & handedness == "Left-handed")

# important thing | alt+i

#EXCERCISE 1. fiter()
#have shoesize 39 or bigger

shoesize39plus <- filter(Pers_Data, shoesize >= 39)
View(shoesize39plus)

#were able to touch the floor

TouchFloor <- levels(Pers_Data$touch_floor) #seeing different types of awnsers for the specific coluum

TouchFloorYes <- filter(Pers_Data, Pers_Data$touch_floor == "Yes" | Pers_Data$touch_floor == "Yes, of course!!")
View(TouchFloorYes) #filters only those two posibilities

#were able to hold their breath longer than avarage

breath_average <- mean(Pers_Data$breath_hold) #calculating the mean
breath_average 

over_breath_average <- filter(Pers_Data, Pers_Data$breath_hold >=breath_average) #filtering the data above the mean
View(over_breath_average)

#Balancing a balloon between 13 and 60 seconds

Balancing_ballonInterval <- filter(Pers_Data, Pers_Data$balloon_balance>=13 & Pers_Data$balloon_balance<=60, shoesize >= 39)
                        
View(Balancing_ballonInterval)

#all of the above

All_of_the_above <- filter(Pers_Data, Pers_Data$balloon_balance>=13 & Pers_Data$balloon_balance<=60,Pers_Data$breath_hold >=breath_average, Pers_Data$touch_floor == "Yes" | Pers_Data$touch_floor == "Yes, of course!!")  
View(All_of_the_above) #seperating each part with a comma!

#EXERCISE 2 arrange
#sort the data by the student who was the slowest in the top
Descending_twister <- arrange(Pers_Data, desc(Pers_Data$tongue_twist))
View(Descending_twister)

#t data by onw argumentto find the student who perfomed best the romberg task. You define best
#example:
RankingTable <- arrange(Pers_Data, desc(shoesize), desc(balloon_balance))
View(RankingTable)

Romberg_Best <- arrange(Pers_Data, desc(Pers_Data$romberg_closed), desc(Pers_Data$romberg_open))
View(Romberg_Best)

Romberg_Best2<- filter(Pers_Data, Pers_Data$romberg_closed == Pers_Data$romberg_open)
View(Romberg_Best2)
#dette giver de 44 bedste... hvor den åbne og lukkede er ens

Very_best_Romberg <- filter(Pers_Data, Pers_Data$romberg_open>120)

Very_best_Romberg # This presents a value over 120 which was the absoulut max.


#How could you improce your Romberg ranking table?
#Have other types of factores


#EXERSICE 3 select()

select(Pers_Data, shoesize, shoesize)
ars = c(“name”, “shoesize”, “touch_floor”)

#arrange your dataframe with gender and shoesize first

rearrange <- select(Pers_Data, gender, shoesize, everything())
rearrange

View(rearrange)


#STOP AT MUTATE



