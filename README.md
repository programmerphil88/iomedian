Inferential Median Calculator for Ordinal Data

Inferentially determines the median of ordinal (e.g. Likert) data. The input data is outrightly assumed to be ordinal in nature and not normally distributed. Performs a series of one-sample Wilcoxon Rank tests to inferentially ascertain where the ordinal data tends to gravitate. iom stands for "inferential ordinal median".
@param input A vector of ordinal data. Type: integer.
@param conflvl (optional) The desired confidence level. Default is 0.95. Type: non-negative real.
@return The inferential median. Type: integer.
@examples
iom(c(2,4,5,4,2,5,1,4,5,5,4,5,2,3,4,3,5,5,3,2,5,2,3,4,5,4,5,4,5,2),0.99)
iom(c(2,4,5,4,2,5,1,4,5,5,4,5,2,3,4,3,5,5,3,2,5,2,3,4,5,4,5,4,5,2))
@export
