karar=read.table(file.choose(),header = T , sep=";")
str(karar)

#burada normalize yapmadan karar a??aclar??m??z daha kolay yapmak i??in fakt??riyele d??n????t??rd??k

karar$Hava.Durumu<- as.factor(karar$Hava.Durumu)
karar$Derece<- as.factor(karar$Derece)
karar$Nem<-as.factor(karar$Nem)
karar$Ruzgar<- as.factor(karar$Ruzgar)
karar$Futbol_oynanicakmi<- as.factor(karar$Futbol_oynanicakmi)

str(karar)

#??zet
summary(karar)

#??znitelik
attributes(karar)

head(karar)
show(karar)

attributes(karar)
head(karar)
show(karar)
View(karar)


library(RWeka)
m1<-J48(Futbol_oynanicakmi ~ . , data=karar)
print(m1)


summary(m1)


plot(m1)
#TR
#1.Kural Hava Durumu=Bulutlu ise futbol oynanacak
#2.Kural Hava Durumu=gunesli ve ruzgar=var ise futbol oynanmiyacak 
#3.Kural Hava Durumu=gunesli ve ruzgar=yok ise futbol oynanacak
#4.Kural Hava Durumu=yagmurlu ve nem=normal ise futbol oynanacak
#5.Kural Hava Durumu=yagmurlu ve nem=Yuksek ise futbol oynanmiyacak 

#EN
#1.Rule Weather=If it is cloudy, football will be played
#2.Rule: Football will not be played if the weather = sunny and windy.
#3.Rule: If the weather = sunny and wind = there is no wind, football will be played.
#4.Rule: If the weather = rainy and humidity = normal, football will be played.
#5.Rule: If the weather = rainy and humidity = high, football will not be played.

#DT
#1.Regelwetter=Wenn es bew??lkt ist, wird Fu??ball gespielt
#2.Regel: Fu??ball wird nicht gespielt, wenn das Wetter sonnig und windig ist.
#3.Regel: Wenn das Wetter = sonnig und windig = kein Wind ist, wird Fu??ball gespielt.
#4.Regel: Wenn das Wetter regnerisch und die Luftfeuchtigkeit normal ist, wird Fu??ball gespielt.
#5.Regel: Wenn das Wetter regnerisch und die Luftfeuchtigkeit hoch ist, wird kein Fu??ball gespielt.

