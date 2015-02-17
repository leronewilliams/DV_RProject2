require("dplyr")
#Displays first six rows
head(vocab)
#Displays last six rows
tail(vocab)
#Converts data to tbl class. tbl's are easier to examine than data frames. R displays only the data that fits on screen
tbl_df(vocab)
#Information dense summary of tbl data.
glimpse(vocab)
#Produces a summary data for each column of the dataframe
summary(vocab)

