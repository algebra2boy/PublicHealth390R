library(tidyverse)
ggplot(diamonds, aes(carat,price)) + 
  geom_hex() 
ggsave("diamonds.pdf")
write_csv(diamonds, "diamonds.csv")

df <- data.frame(
  x = factor(c(1, 1, 2, 2)),
  y = c(1, 3, 2, 1),
  grp = c("a", "b", "a", "b")
)

# Use you can't nudge and dodge text, so instead adjust the y position
ggplot(data = df, aes(x, y, group = grp)) +
  geom_col(aes(fill = grp), position = "dodge") +
  geom_text(
    aes(label = y, y = y + 0.05),
    position = position_dodge(0.9),
    vjust = 0
  )

y <- as.numeric(t(table(rosca$treatment,rosca$bg_married)))
prop <- table(rosca$treatment,rosca$bg_married)/length(rosca$treatment)
prop <- as.numeric(t(prop))



ggplot(data = rosca) + 
  geom_bar(mapping = aes(treatment, fill = bg_female), 
           position = "dodge") + 
  theme(axis.title.x = element_blank()) + 
  theme(axis.title.y = element_blank()) + 
  # add a title 
  labs(
    title = "Distribution of marital status"
  ) + 
  # center the title and bold it
  theme(plot.title = element_text(hjust = 0.5, face = "bold")) + 
  # change the legend label title and name
  scale_fill_discrete(name = "marital status",
                      labels = c("unmarried", "married")) + 
  geom_text(aes(label =  prop[1:6]),
            position = position_dodge(0.9),
            vjust = 0)