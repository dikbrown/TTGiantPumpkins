# D/L code comes from 
#     https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-10-19/readme.md
# Get the Data

# Read in with tidytuesdayR package 
# Install from CRAN via: install.packages("tidytuesdayR")
# This loads the readme and all the datasets for the week of interest

# Either ISO-8601 date or year/week works!

tuesdata <- tidytuesdayR::tt_load('2021-10-19')
tuesdata <- tidytuesdayR::tt_load(2021, week = 43)

pumpkins <- tuesdata$pumpkins


# Remove summary lines
remove <- grep("damaged)", pumpkins$city)
pumpkins[remove,]
pumpkins2 <- pumpkins[-remove,]

# Remove commas from numeric values and convert to numeric
pumpkins2$weight_lbs <- gsub(",", "", pumpkins2$weight_lbs)
pumpkins2$weight_lbs <- as.numeric(pumpkins2$weight_lbs)

pumpkins2$est_weight <- gsub(",", "", pumpkins2$est_weight)
pumpkins2$est_weight <- as.numeric(pumpkins2$est_weight)

pumpkins2$ott <- as.numeric(pumpkins2$ott)
pumpkins2$pct_chart <- as.numeric(pumpkins2$pct_chart)

# Split ID into Year + Type

pumpkins2$Year <- as.numeric(str_split_fixed(pumpkins2$id, "-", 2)[,1])
pumpkins2$Type <- str_split_fixed(pumpkins2$id, "-", 2)[,2]

# Replace Type abbreviation with full description
pumpkins2$Type[pumpkins2$Type == 'F']  <- 'Field Pumpkin'
pumpkins2$Type[pumpkins2$Type == 'P']  <- 'Giant Pumpkin'
pumpkins2$Type[pumpkins2$Type == 'S']  <- 'Giant Squash'
pumpkins2$Type[pumpkins2$Type == 'W']  <- 'Giant Watermelon'
pumpkins2$Type[pumpkins2$Type == 'L']  <- 'Long Gourd'
pumpkins2$Type[pumpkins2$Type == 'T']  <- 'Tomato'

#Remove empty "Variety" field
pumpkins2 <- pumpkins2[,-14]

#Transform 'Place' field to numeric
#  First, assign flag values to non-numeric places
pumpkins2$place[pumpkins2$place == 'EXH'] <- -1
pumpkins2$place[pumpkins2$place == 'DMG'] <- -2 
#  Then convert to numeric
pumpkins2$place <- as.numeric(pumpkins2$place)

first <- pumpkins2[pumpkins2$place == 1,]
