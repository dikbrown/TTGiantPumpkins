windows(12, 9) # set window to a 4:3 ratio

#Create Histograms of Fruit Sizes

#Create variable for max size for each type of fruit
Fmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Field Pumpkin'])
Pmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Pumpkin'])
Smax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Squash'])
Wmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Watermelon'])
Lmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Long Gourd'])
Tmax <- max(pumpkins2$weight_lbs[pumpkins2$Type == 'Tomato'])
#Create variable for mean size for each type of fruit
Fmean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Field Pumpkin']))
Pmean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Pumpkin']))
Smean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Squash']))
Wmean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Watermelon']))
Lmean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Long Gourd']))
Tmean <- round(mean(pumpkins2$weight_lbs[pumpkins2$Type == 'Tomato']))


#Plot histograms for each fruit in a grid
#Create a 2x3 layout for plots with top panel for title
#    and bottom panel for citation
layout <- matrix(c(0,1,0.9,1, #top screen for title
                   0, 0.33, 0.47, 0.9, # row 1, plot 1
                   0.33, 0.67, 0.47, 0.9, # row 1, plot 2
                   0.67, 1, 0.47, 0.9, # row 1, plot 3
                   0, 0.33, 0.06, 0.47,   # row 2, plot 1
                   0.33, 0.67, 0.06, 0.47, #row 2, plot 2
                   0.67, 1, 0.06, 0.47, # row 2, plot 3
                   0, 1, 0, 0.04), # bottom screen for citation
                 ncol = 4, byrow = TRUE)
par(bg = '#f2dfbb')
split.screen(layout)
screen(1)
text("Size Distribution of Different Fruit Classes", 
     x = 0.5, 
     y = 0.7,
     cex = 2)
text("as reported in Great Pumpkin Commonwealth competitions, from 2013-2021",
     x = 0.5,
     y = 0.2,
     cex = 0.8)

## Field Pumpkins
screen(2)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Field Pumpkin'],
     breaks = 20,
     main = 'Field Pumpkins',
     xlab = 'Weight in Pounds',
     ylab = "# of Fruit",
     xlim = c(0,250),
     ylim = c(0, 500),
     col = '#73c470'
     )
lines(x = c(Fmax, Fmax),
      y = c(0,150))
text(x = Fmax,
     y = 250,
     cex = 0.9,
     labels = paste("max\n", Fmax, "lbs"))
lines(x = c(Fmean, Fmean),
      y = c(0, 450))
text(x = Fmean,
     y = 500,
     cex = 0.9,
     labels = paste("mean =", Fmean, "lbs"))

## Giant Pumpkins
screen(3)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Pumpkin'],
     breaks = 20,
     main = 'Giant Pumpkins',
     xlab = 'Weight in Pounds',
     ylab = '',
     xlim = c(0,3000),
     ylim = c(0, 1500),
     col = '#ed8021'
     )
lines(x = c(Pmax, Pmax),
      y = c(0,500))
text(x = Pmax,
     y = 760,
     cex = 0.9,
     labels = paste("max\n", Pmax, "lbs"))
lines(x = c(Pmean, Pmean),
      y = c(0, 1300))
text(x = Pmean,
     y = 1500,
     cex = 0.9,
     labels = paste("mean =", Pmean, "lbs"))

## Giant Squash
screen(4)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Squash'],
     breaks = 20,
     main = 'Giant Squash',
     xlab = 'Weight in Pounds',
     ylab = "",
     xlim = c(0,2500),
     ylim = c(0, 300),
     col = '#edb721'
     )
lines(x = c(Smax, Smax),
      y = c(0,90))
text(x = Smax,
     y = 150,
     cex = 0.9,
     labels = paste("max\n", Smax, "lbs"))
lines(x = c(Smean, Smean),
      y = c(0, 275))
text(x = Smean,
     y = 300,
     cex = 0.9,
     labels = paste("mean =", Smean, "lbs"))

## Giant Watermelons
screen(5)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Giant Watermelon'],
     breaks = 20,
     main = 'Giant Watermelons',
     xlab = 'Weight in Pounds',
     ylab = "# of Fruit",
     xlim = c(0,400),
     ylim = c(0, 350),
     col = '#288724'
     )
lines(x = c(Wmax, Wmax),
      y = c(0,100))
text(x = Wmax,
     y = 175,
     cex = 0.9,
     labels = paste("max\n", Wmax, "lbs"))
lines(x = c(Wmean, Wmean),
      y = c(0, 300))
text(x = Wmean,
     y = 350,
     cex = 0.9,
     labels = paste("mean =", Wmean, "lbs"))

## Long Gourds
screen(6)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Long Gourd'],
     breaks = 25,
     main = 'Long Gourds',
     ylab = "",
     xlab = 'Length in Inches',
     xlim = c(0,400),
     ylim = c(0,400),
     col = '#bcf2bb'
     )
lines(x = c(Lmax, Lmax),
      y = c(0,100))
text(x = Lmax,
     y = 200,
     cex = 0.9,
     labels = paste("max\n", Lmax, "in"))
lines(x = c(Lmean, Lmean),
      y = c(0, 375))
text(x = Lmean,
     y = 400,
     cex = 0.9,
     labels = paste("mean =", Lmean, "in"))

## Tomatoes
screen(7)
hist(pumpkins2$weight_lbs[pumpkins2$Type == 'Tomato'],
     breaks = 20,
     main = 'Tomatoes',
     xlab = 'Weight in Pounds',
     ylab = "",
     xlim = c(0,12),
     ylim = c(0, 600),
     col = '#ff6347'
     )
lines(x = c(Tmax, Tmax),
      y = c(0,150))
text(x = Tmax,
     y = 275,
     cex = 0.9,
     labels = paste("max\n", Tmax, "lbs"))
lines(x = c(Tmean, Tmean),
      y = c(0, 550))
text(x = Tmean,
     y = 600,
     cex = 0.9,
     labels = paste("mean =", Tmean, "lbs"))
## Citation window
screen(8)
text(x = 0.1, y = 0.5,
     labels = "data from BigPumpkins.com")
text(x = 0.8, y = 0.5, 
     labels = 'Plot by Dick Brown | @dikbrown | linkedin.com/in/dickbrown')
close.screen(all = TRUE)
