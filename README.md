Inferential Median Function for Ordinal Data

Inferentially determines the median of ordinal (e.g. Likert) data. The input data is outrightly assumed to be ordinal in nature and not normally distributed. Performs a series of one-sample Wilcoxon Rank tests to inferentially ascertain where the ordinal data tends to gravitate at a chosen confidence level (default is 0.95). iomedian stands for "inferential ordinal median".

@param input An array of ordinal data. Type: array of integers.

@param conflvl (optional) The desired confidence level. Default is 0.95. Type: positive real.

@return The inferential median. Type: integer.

@examples

iomedian(c(2,5,1,3,5,5,3,2,5,1,1),0.99)

iomedian(c(2,5,1,3,5,5,3,2,5,1,1))

@export
