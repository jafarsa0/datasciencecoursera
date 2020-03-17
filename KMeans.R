c1 = matrix(c(2,2,4,4,6,6) , nrow = 3 , ncol = 2 , byrow = TRUE)
c2 = matrix(c(0,4,4,0), nrow = 2 , ncol = 2 , byrow = TRUE)
c3 = matrix(c(5,5,9,9) ,nrow= 2 , ncol = 2 ,byrow = TRUE)
c4 = matrix(c(8,8) ,nrow = 1 , ncol = 2)


print(c1)
print(c2)
print(c3)
print(c4)

c_all = matrix(c(1,2,3,4,5,6,7,8) , nrow = 4 , ncol = 2 , byrow = TRUE)
c1[,1]
c_all[1,1] = mean(c1[,1])
c_all[1,2] = mean(c1[,2])
c_all[2,1] = mean(c2[,1])
c_all[2,2] = mean(c2[,2])
c_all[3,1] = mean(c3[,1])
c_all[3,2] = mean(c3[,2])
c_all[4,1] = c4[1,1]
c_all[4,2] = c4[1,2]
c_all


k = matrix(c(2,2,4,4,5,5,6,6,8,8,9,9,0,4,4,0) ,nrow = 8 , ncol = 2 , byrow = TRUE)
k
c_all[1,]
k[1,]
dist(rbind(c_all[1,], k[1,]))

d = matrix(c(0) , nrow = 8 , ncol = 4 , byrow = TRUE)
d

for(i in 1:4){
  for(j in 1:8)
    d[j,i] = dist(rbind(c_all[i,], k[j,]))
}
d

d


g = matrix(c(0) , nrow = 8 , ncol = 4 , byrow = TRUE)
g

for(i in 1:8){
  g[i , which.min(d[i,])] = 1
}

g



id = FALSE
while (id ==FALSE){
  g1 = g
  m = matrix(c(0) , nrow = 8 , ncol = 2 , byrow = TRUE)
  
  for (i in 1:4){
    
    x =  which(g[,i] == 1)
    c_all [i , 1 ] = mean(k[x,1])
    c_all [i , 2 ] = mean(k[x,2])
  }
  print(c_all)
 
  
  d = matrix(c(0) , nrow = 8 , ncol = 4 , byrow = TRUE)
  d
  
  for(i in 1:4){
    for(j in 1:8)
      d[j,i] = dist(rbind(c_all[i,], k[j,]))
  }
  print(d)
  
  
  
  
  g = matrix(c(0) , nrow = 8 , ncol = 4 , byrow = TRUE)
  
  g
  for(i in 1:8){
    g[i , which.min(d[i,])] = 1
  }
  
  print(g)
  
  id = all.equal(g,g1)
  
}
g
g1


