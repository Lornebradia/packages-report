## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame, then ...

read_csv("data/add-on-packages-freqtable.csv")  %>%
  ## if you use ggplot2, code like this will work:
  ggplot(aes(x = Built, y = n)) +
  geom_bar(stat = "identity", aes(fill = Built), show.legend = F) +
  coord_flip() +
  ggtitle("Frequency of builds per package",
          subtitle = "Lorenzo's packages")+
  theme_minimal()+
  theme(plot.title = element_text(size = 14, face = "bold")) +
  ggsave(filename = "figs/built-barchart.png")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help

## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
