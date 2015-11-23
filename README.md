# yelpcapstone

This is the repo for my Coursea capstone project on Data Science.

See the[specicialization website](https://www.coursera.org/specializations/jhudatascience).

# What Makes a Review Valuable? - Predicting the Value of Yelp Reviews to Review 

## Introduction
What makes a Yelp review valueable to review readers. The Yelp allows readers to rate reviews as useful, funny, or cool. This analysis uses these votes as a measure of review value: reviews with more reviewer votes should reflect the value of that review to readers.

Using the [*Yelp Academice Dataset*](http://www.yelp.com/dataset_challenge) I set out to predict the what makes a Yelp review more or less valuable than a different review. My goal was to create a model that did well and classifing reveiws but was easily understandable and could be used as guidance for review writers.

#### Findings
Using a tree model I was able to correctly classify 65 percent of reviews in my validation data set correctly: A 16 percent improvement over a *no information* model.

The final model suggests that the content of reviews dominates review reader voting and that review writers should focus first on writting *useful* reviews and then *cool* reviews.
