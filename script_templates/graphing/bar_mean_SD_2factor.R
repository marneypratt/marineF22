# this code will make a bar graph with means and standard errors

#first calculate the mean, sd & count the observations in each group
df.sum <- ___ %>%               #data frame name here
  group_by(___, ___) %>%        #name of 2 factors here
  summarise(mean = mean(___),   #continuous variable here
            sd = sd(___),       #same continuous variable as above here
            n = n()) 

#make bar graph
ggplot(
  data=df.sum, 
  aes(x=___, y=mean, fill=___)) + #behavior column for x, 2nd factor as fill
  geom_bar(stat="identity", position="dodge", width = 0.5)+
  geom_errorbar(aes(ymin=mean-sd, ymax=mean+sd), 
                position=position_dodge(width = 0.5), #this width must match width in geom_bar above
                width=0.2, size=0.5, show.legend = FALSE) +
  xlab("___") +  #replace blank with nicer looking label for the axis
  ylab("___") +  #replace blank with nicer looking label for the axis
  coord_cartesian(ylim = c(0,100), expand=FALSE) + 
  theme_classic(base_size=12) #adjust the size of the fonts as needed

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-barplot/
# https://ggplot2.tidyverse.org/index.html