finding_d <- function(m1, m2, sd1, sd2, n1, n2, alpha = 0.05, var.equal = FALSE, 
                         steps = 0.01, dmax = 1) {
  
  factor <- dmax/steps
  
  require(TOSTER)
  pval <- vector(); dval = vector()
  i = 1;
  for (i in 1:factor) {
    
    d = steps*i
    #  print(d)
    invisible(capture.output(
      xx <- tsum_TOST(m1 = m1, m2 = m2, sd1 = sd1, sd2 = sd2, n1 = n1, n2 = n2,
                    low_eqbound = -d, high_eqbound = d, alpha = alpha, var.equal = var.equal)
    ))
    pval[i] <- xx$TOST$p[2]
    dval[i] <- d
    
   # print(xx$TOST_p1)
   # print(xx$TOST_p2)
   # print(d)
    # print(pval[i])
    
    
    if (pval[i] <= 0.05) {
      ibreak  = i
      
      d <- dval[ibreak]; p <- round(pval[ibreak],4); 
      df <- round(xx$TOST$df[2],2); t <- round(xx$TOST$t[2], 2)
      
      print(paste("The results from the equivalence test indicate that the observed effect is statistically equivalent to zero at a Cohen's value of d = ",
                  dval[i], ". (t(", df, ") = ", t, ", p = ", p, ")", sep = ""))
      
      break;
    }
    
  }
  
  if (i == 100) {print(paste("The results from the equivalence test indicate that the observed effect is statistically not equivalent to zero with a Cohen's value of d = ",
                             dval[i], ".", sep = "")) 
  }
  
  outputlist <- list("df" = round(xx$TOST$df[2],2), "t" = round(xx$TOST$t[2], 2),
                     "p" = round(xx$TOST$p[2], 4), d = dval[i])
  #return(outputlist) 
  
}

