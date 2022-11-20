layout1 <- matrix(c(0, 1, 0, 1),
                 ncol = 4, byrow = TRUE)


png("./1box.png", width = 1200, height = 900)
split.screen(layout1)

screen(1)
rect(0, 0, 1, 1)




close.screen(all= TRUE)
dev.off()
##################################################
layout2h <- matrix(c(0, 0.5, 0, 1,
                   0.5, 1, 0, 1),
                 ncol = 4, byrow = TRUE)
png("./2box horiz.png", width = 1200, height = 900)
split.screen(layout2h)

screen(1)
#rect(0, 0, 1, 1)
rect(-0.04, -0.035, 1.04, 1.035)
screen(2)
#rect(0, 0, 1, 1)
rect(-0.04, -0.035, 1.035, 1.035)
close.screen(all= TRUE)
dev.off()
##################################################
layout2v <- matrix(c(0, 1, 0.5, 1,
                   0, 1, 0, 0.5),
                 ncol = 4, byrow = TRUE)
png("./2box vert.png", width = 1200, height = 900)
split.screen(layout2v)
screen(1)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.035, 1.04)
screen(2)
#rect(0, 0, 1, 1)
rect(-0.04, -0.035, 1.035, 1.04)
close.screen(all= TRUE)
dev.off()
###################################################
layout33_67 <- matrix(c(0, 1, 0.33, 1,        # bottom section
                   0, 1, 0, 0.33),       # top half
                 ncol = 4, byrow = TRUE)
png("./2box vert 33-67.png", width = 1200, height = 900)
split.screen(layout33_67)
screen(1)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.035, 1.04)
screen(2)
#rect(0, 0, 1, 1)
rect(-0.04, -0.035, 1.035, 1.04)
close.screen(all= TRUE)
dev.off()
###################################################
layout4 <- matrix(c(0,   0.5, 0.5, 1,        # top-left section
                   0.5, 1,   0.5, 1,        # top-right section
                   0,   0.5, 0,   0.5,      # bottom-left section
                   0.5, 1,   0, 0.5),       # bottom-right section
                 ncol = 4, byrow = TRUE)
close.screen(all= TRUE)
png("./4box.png", width = 1200, height = 900)
split.screen(layout4)

screen(1)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.04, 1.04)
screen(2)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.035, 1.04)
screen(3)
#rect(0, 0, 1, 1)
rect(-0.04, -0.03, 1.04, 1.04)
screen(4)
#rect(0, 0, 1, 1)
rect(-0.04, -0.03, 1.035, 1.04)
close.screen(all = TRUE)
dev.off()
#################################################
layout8 <- matrix(c(0,    1,    0.9,  1,      #top screen for title
                   0,    0.33, 0.47, 0.9,    # row 1, plot 1
                   0.33, 0.67, 0.47, 0.9,    # row 1, plot 2
                   0.67, 1,    0.47, 0.9,    # row 1, plot 3
                   0,    0.33, 0.04, 0.47,   # row 2, plot 1
                   0.33, 0.67, 0.04, 0.47,   # row 2, plot 2
                   0.67, 1,    0.04, 0.47,   # row 2, plot 3
                   0,    1,    0,    0.04),  # bottom screen for citation
                 ncol = 4, byrow = TRUE)
png("./8box.png", width = 1200, height = 900)
split.screen(layout8)

screen(1)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.038, 1.04)
screen(2)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.04, 1.04)
screen(3)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.04, 1.04)
screen(4)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.035, 1.04)
screen(5)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.04, 1.04)
screen(6)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.04, 1.04)
screen(7)
#rect(0, 0, 1, 1)
rect(-0.04, -0.04, 1.035, 1.04)
screen(8)
#rect(0, 0, 1, 1)
rect(-0.04, -0.03, 1.038, 1.06)

dev.off()
