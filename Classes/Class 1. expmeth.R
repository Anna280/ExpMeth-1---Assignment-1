#CLASS 1 EXPMETH 1
box<-9 #define a object
box
class(box) #to see what kind of value is used
a_vector<-c(2,3,4) #defining a vector with numbers
a_vector+3 #adding a number to ALL the values of the vector
group1 <- c(a_vector, 10) #defining a group consisting of the values of the variable a_vector and the number 10
group1
a_vector[1] #testing the first number of the a_vector
length(a_vector) #testing the lentgh of a vector, mathematical. If the number should be remembered, it has to be defined
a_new_vector<-a_vector+3

a_new_vector[-1]
a_new_vector[c(-1,-2)] #removing more values 
a_new_vector[-c(1,2)] #removing by placing the minus before the c

a_brand_new_vector<-a_new_vector[-c(1,2)] #it is also possible to just "rewrite" and redifine it to the first original name

rm(box) #deliting a line, you have to remove it just run this ONE line

#doing math

a_vector2<-c(5,10,30)
sum(a_vector2) #summere værdier

#se som numerisk!

a_new_vector<-as.numeric(a_new_vector)

#EXCERCISE 1- 

#1. create a vector of the studygroup- members names

Name_vector<-c("Gustav", "Anna", "Maria", "Helle", "Andrea")
#2. Create a vector of the amount of siblings they may have
Guess_on_siblings<-c(1,0,2,2,1)
#add 2 to each vector
Name_vector+2
Guess_on_siblings+2
#what happens? on the first it mixes numeric and string variables, and in the second it is just numeric
class(Guess_on_siblings)
class(Name_vector)
sum(Guess_on_siblings)
Guess_on_siblings[1]*Guess_on_siblings[2]

#EXCERCISE 2
#make a dataframe of the vectores
dataFrameVectores<-data.frame(Name_vector, Guess_on_siblings)
dataFrameVectores
#Add gender
Vector_gender<-c("male","female","female","female","female")
dataFrameVectores2<-data.frame(Name_vector, Guess_on_siblings, Vector_gender)
dataFrameVectores2
#add colum use df$NewNameColumm<-add things     Ad row: df<-rbind(add things)

dataFrameVectores2$Name_vector<-as.character(dataFrameVectores2$Name_vector) #preparing to add another person, showing the new row is chacecters
rbind(dataFrameVectores2, c("Fabio",1,"male")) #adding the new person

mean(Guess_on_siblings) #mean of siblings

dataFrameVectores2$ActualSiblings<-c(3,0,1,3,4)
dataFrameVectores2
ActualSiblings<-c(3,0,1,3,4)
dataFrameVectores2$Difference_in_guess<-c(ActualSiblings-Guess_on_siblings) #subtract the numbers of siblings from each other

dataFrameVectores2

#EXCERCIE 3

SiblingsOver3<-subset(dataFrameVectores2, ActualSiblings ==3) #find out who has 3 siblings
SiblingsOver3<-subset(dataFrameVectores2, ActualSiblings >3) #over 2

GuessedRight<-subset(dataFrameVectores2, ActualSiblings ==Guess_on_siblings) #compare how many is guessed right
GuessedRight




