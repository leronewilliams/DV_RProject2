vocab %>% spread(SEX,EDUCATION) %>% tbl_df


library(rgl)
x <- vocab %>% select(YEAR)
y <- vocab %>% select(EDUCATION)
z <- vocab %>% select(PARTICIPANT_ID)
plot3d(x, y, z, col=rainbow(1000))

require("rgl")
require("RColorBrewer")
plot3d(vocab$YEAR,  # x variable
       vocab$EDUCATION,   # y variable
       vocab$VOCABULARY,  # z variable
       xlab = "YEAR",
       ylab = "EDUCATION",
       zlab = "VOCABULARY",
       col = rainbow(1000),
       size = 8)

# Scatterplot matrix using "pairs"
# Put histograms on the diagonal (from "pairs" help)
panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y,  ...)
  # Removed "col = "cyan" from code block; original below
  # rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...) 
}

pairs(vocab[c(1:5)], 
      panel = panel.smooth,  # Optional smoother
      main = "Scatterplot Matrix for Vocabulary and Education Data",
      diag.panel = panel.hist, 
      pch = 16, 
      col = "lightgray")

tbl_df(vocab)


