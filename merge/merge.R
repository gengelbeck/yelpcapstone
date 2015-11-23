## Load the Data
setwd("~/Documents/R/Capstone/final2/merge")
load("../data/reviews.RData")
load("../data/users.RData")
load("../data/businesses.RData")

## Combine reviews and users data
reviews$biz.open <- 0
reviews$biz.stars <- 0
reviews$biz.review.count <- 0

row.names(businesses) <- businesses$business_id

for (r in 1:nrow(reviews)) {
  brow <- businesses[reviews$business_id[r], ]
  reviews$biz.open <- brow$open
  reviews$biz.stars <- brow$stars
  reviews$biz.review.count <- brow$review_count
  
  if (r %% 1000 == 0) print(paste(r, '\n'))
}

ds <- merge(reviews, users, by="user_id")
nrow(ds)

bucket.votes <- function(votes) {
  if (votes == 0) return("0-40")
  if (votes == 1) return("50-60")
  if (votes <  3) return("70")
  if (votes <  5) return("80")
  if (votes < 444) return("90")
  if (votes >= 11) return("100")
  return(NA)
}

ds$vote.category <- unlist(lapply(ds$votes, bucket.votes))

save(ds, file="../data/ds.RData")




