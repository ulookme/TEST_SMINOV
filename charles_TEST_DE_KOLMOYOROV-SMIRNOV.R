require(graphics)
require(dgof)
#Créer trois échantillons

#X1 de taille 100 qui suit la loi normale centrée réduite

#X2 de taille 100 qui suit la loi gama(1,0.8)

#X3 de taille 50 qui suit la loi normale de moyenne 10 et d’écart-type 5

#X1 et X2 proviennent-ils de la même loi ?
  
  #X1 et X3 proviennent-ils de la même loi ?
  
  #X1 provient-il d’une loi gamma avec 3 comme paramètre de
#forme et 2 pour le taux ?
  
  #X3 provient-il d’une loi normale
#creation des trois echantillons
x1<-rnorm(100,mean=0,sd=2)
x2<-rgamma(100,shape = 1,rate = 0.8)
x3<-rnorm(50, mean= 10, sd=5)

#x1 et x2 suive t'ils les meme loi
ks.test(x1,x2)
# p-value > alpha on refuse l'hypothese null 
#x1 et x2 proviennent t'il de la méme loi
ks.test(x1,x2)
# p-value > alpha on refuse toujours  l'hypothese null
# x1 et x3 proviennent'il de la mémme loi 
ks.test(x1,x3)
#p-value > alpha on acepte l(HO)

# X1 pronvienti'il d'une loi gamma ? 
#ks.test(x1,pgamma(3,2))
ks.test(x1,"pgamma",3,2)
# on refuse l'hypother null



