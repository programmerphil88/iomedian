#' Inferential Median Calculator for Ordinal Data
#' 
#' Inferentially determines the median of ordinal (e.g. Likert) data. The input data is outrightly assumed to be ordinal in nature and not normally distributed. Performs a series of one-sample Wilcoxon Rank tests to inferentially ascertain where the ordinal data tends to gravitate. iomedian stands for "inferential ordinal median".
#' @param input A vector of ordinal data. Type: integer.
#' @param conflvl (optional) The desired confidence level. Default is 0.95. Type: non-negative real.
#' @return The inferential median. Type: integer.
#' @examples
#' iomedian(c(2,4,5,4,2,5,1,4,5,5,4,5,2,3,4,3,5,5,3,2,5,2,3,4,5,4,5,4,5,2),0.99)
#' iomedian(c(2,4,5,4,2,5,1,4,5,5,4,5,2,3,4,3,5,5,3,2,5,2,3,4,5,4,5,4,5,2))
#' @export
iomedian <- function(input,conflvl){
# iomedian stands for inferential ordinal median
#  
#                                         Set confidence level at 0.95 if not supplied by user  
#
    if(missing(conflvl)) conflvl <- 0.95
#  print(conflvl);
#  
#                                                                  Screen for non-integer input 
#
  for (i in 1:length(input)) {
#    print(i);
    if (input[i]-as.integer(input[i]) != 0) {print('This function only takes in integer ordinals. Exiting.');return()}
  }
#  output <- median(input);
#  minin <- min(input);
#  print(is.integer(input));
#
#                             Look for inferential median through series of Wilcoxon Rank tests  
#
    for (i in min(input):max(input)) {
#    print(i);
    pval <- wilcox.test(input,mu=i,alternative="greater",exact=FALSE)$p.value;
#    print(pval);
#    print(1-conflvl);
    if (pval >= 1-conflvl) {return(i)}
#    return(output);
  }
# 
#  return(output);
}