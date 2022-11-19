library(ggplot2)

ggplot(data = pumpkins2[pumpkins2$Type == 'Long Gourd',]) +
  geom_point(aes(x = ott, y = est_weight, color = Type)) +
  ylim(0,10)

#Create max values for each type of fruit
Fmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Field Pumpkin'])
Pmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Pumpkin'])
Smax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Squash'])
Wmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Watermelon'])
Lmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Long Gourd'])
Tmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Tomato'])

#Plot histograms for each fruit in a grid
png("./pumpkins.png", width = 1200, height = 900)
par(mfrow = c(2,3))
## Field Pumpkins
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Field Pumpkin'],
     breaks = 20,
     main = 'Field Pumpkins',
     xlab = 'Weight in Pounds',
     xlim = c(0,250))
lines(x = c(Fmax, Fmax),
      y = c(0,150))
text(x = Fmax,
     y = 200,
     labels = paste("max\n", Fmax, "lbs"))
## Giant Pumpkins
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Pumpkin'],
     breaks = 20,
     main = 'Giant Pumpkins',
     xlab = 'Weight in Pounds',
     xlim = c(0,3000))
lines(x = c(Pmax, Pmax),
      y = c(0,500))
text(x = Pmax,
     y = 700,
     labels = paste("max\n", Pmax, "lbs"))
#####################
## Add overall title
#####################
mtext("Size Distribution of Different Fruit Classes", 
      side = 3, # 3 = top
      line = 3,
      at = 0,
      cex = 1.2)
## Giant Squash
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Squash'],
     breaks = 20,
     main = 'Giant Squash',
     xlab = 'Weight in Pounds',
     xlim = c(0,2500))
lines(x = c(Smax, Smax),
      y = c(0,90))
text(x = Smax,
     y = 125,
     labels = paste("max\n", Smax, "lbs"))
## Giant Watermelons
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Watermelon'],
     breaks = 20,
     main = 'Giant Watermelons',
     xlab = 'Weight in Pounds',
     xlim = c(0,400))
lines(x = c(Wmax, Wmax),
      y = c(0,100))
text(x = Wmax,
     y = 150,
     labels = paste("max\n", Wmax, "lbs"))
## Long Gourds
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Long Gourd'],
     breaks = 20,
     main = 'Long Gourds',
     xlab = 'Length in Inches',)
lines(x = c(Lmax, Lmax),
      y = c(0,250))
text(x = Lmax,
     y = 350,
     labels = paste("max\n", Lmax, "in"))
## Tomatoes
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Tomato'],
     breaks = 20,
     main = 'Tomatoes',
     xlab = 'Weight in Pounds',
     xlim = c(0,12))
lines(x = c(Tmax, Tmax),
      y = c(0,150))
text(x = Tmax,
     y = 200,
     labels = paste("max\n", Tmax, "lbs"))
par(mfrow = c(1,1))
dev.off()
