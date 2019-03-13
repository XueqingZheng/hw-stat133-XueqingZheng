##################################################
## . title: The shots charts of the NBA players 
## . description: Making the shots charts
## . input(s): (name).csv
## . output(s): (*-shot-chart).pdf, (*-shot-chart).png
##################################################

library(jpeg)
library(grid)
library(ggplot2)
library(dplyr)

iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
assembled_table <- read.csv("../data/shots-data.csv",stringsAsFactors = FALSE)
as.factor(assembled_table$name)

court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

andre_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()
ggsave(
  filename = "../images/andre-iguodala-shot-chart.pdf", 
  plot = andre_shot_chart, units = "in", width = 6.5, height = 5)

draymond_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart:Draymond Green (2016 season)') +
  theme_minimal()
ggsave(
  filename = "../images/draymond-green-shot-chart.pdf",
  plot = draymond_shot_chart, units = "in", width = 6.5, height = 5)

kevin_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart:Kevin Durant (2016 season)') +
  theme_minimal()
ggsave(
  filename = "../images/kevin-durant-green-shot-chart.pdf",
  plot = kevin_shot_chart, units = "in", width = 6.5, height = 5)

klay_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()
ggsave(
  filename = "../images/klay-thompson-shot-chart.pdf",
  plot = klay_shot_chart, units = "in", width = 6.5, height = 5)

stephen_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart:Stephen Curry (2016 season)') +
  theme_minimal()
ggsave(
  filename = "../images/stephen-curry-shot-chart.pdf",
  plot = stephen_shot_chart, units = "in", width = 6.5, height = 5)

gsw_shot_charts <- ggplot(assembled_table) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') +
  facet_wrap(~ name) + 
  theme_minimal() + 
  theme(legend.position="top")
ggsave(
  filename = "../images/gsw_shot_charts.pdf",
  plot = gsw_shot_charts, units = "in", width = 8, height = 7)
ggsave(
  filename = "../images/gsw_shot_charts.png",
  plot = gsw_shot_charts, units = "in", width = 8, height = 7)

