


summary.data <- my.data %>% 

  #change from wide to long format to make one column for all behaviors
  #replace first blank with name of first behavior column
  #replace second blank with name of last behavior column
  pivot_longer(cols = ___:___,
               names_to = "behavior",
               values_to = "number_obs") %>% 

  #calculate the average number of animals observed doing a particular behavior
  #for each observational time period
  #make sure to group by any factors that want to have in your final data
  #replace the first blank with the name of the column with your factor you want to compare
  #replace the second blank with a unique identifier for each observational time period
  group_by(___, ___, behavior) %>% 
  summarize(ave_num = mean(number_obs)) %>% 

  #calculate the percentage of animals observed doing a particular behavior
  #replace the blank with the total animals present
  mutate(ave_percent_obs = ave_num/___*100) 
                                      