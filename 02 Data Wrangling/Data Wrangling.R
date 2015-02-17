require("dplyr")
require("tidyr")
vocab %>% spread(SEX,EDUCATION) %>% tbl_df