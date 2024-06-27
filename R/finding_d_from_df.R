finding_d_from_df <- function(group, value, 
                              alpha = 0.05, var.equal = F, steps = 0.01, dmax = 1) {
  group <- as.factor(group)
  
  if(length(levels(group))>2) {print("Only two groups can be compared. ")} else {
    df <- data.frame(group, value)
    m <- vector(); n <- vector(); sd <- vector()
    for (i in 1:2) {
      m[i] <- mean(df[which(df$group == levels(group)[i]),]$value)
      sd[i] <- sd(df[which(df$group == levels(group)[i]),]$value)
      n[i] <- length(df[which(df$group == levels(group)[i]),]$value)
    }
  }
  
  behavdata::finding_d(m1 = m[1], m2 = m[2],
                       sd1 = sd[1], sd2 = sd[2], 
                       n1 = n[1], n2 = n[2], 
                       alpha = alpha, var.equal = var.equal, 
                       steps = steps)
  
}