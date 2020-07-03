# Praktikum FM 27
# Nama  : Ahmad Shofwan Afif
# NIM   : 17523178

# I. Analisis Deskriptif & Grafik
# a)
# Menginstall package Rcmdr
install.packages("Rcmdr")

# Mengecek library Rcmdr
library(Rcmdr)

# Mencari Mean Median Quartil
summary(FMB_calonsarjana)

# Mencari Standar Deviasi
numSummary(FMB_calonsarjana)

# b) Membuat Histogram dan Scatter Plot

# Histogram pada x
with(FMB_calonsarjana, Hist(x, scale = "frequency",breaks ="Sturges", col="darkgray"))
# Histogram pada y
with(FMB_calonsarjana, Hist(y, scale = "frequency",breaks ="Sturges", col="darkgray"))

# Scatterplot
scatterplot(y~x, regLine=FALSE, smooth=FALSE, boxplots=FALSE, data=FMB_calonsarjana)

# c) Mencari Korelasi dan Regresi

# Korelasi
#Deklarasi menggunakan fungsi data.frame
FMB_calonsarjana = data.frame(FMB_calonsarjana)
y = FMB_calonsarjana$y
x = FMB_calonsarjana$x
#Melakukan pencarian korelasi
cor(x,y)
cor.test(x,y)

# Regresi
#mencari regresi
lm(formula = FMB_calonsarjana)

#melakukan plotting regresi
plot (lm(formula = FMB_calonsarjana))


