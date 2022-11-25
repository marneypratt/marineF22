# the code below will calculate descriptive statistics for a variable of interest grouped by another variable

desc.stat <- ___ %>% # put the name of the data frame here
  group_by(___) %>% # put the name of the grouping variable(s) here
  summarize(mean = mean(___), # put the name of the variable you want to summarize in this & following blanks
            median = median(___), 
            SD = sd(___), 
            IQR = IQR(___), 
            min = min(___),
            max = max(___),
            sample_size = n())

desc.stat