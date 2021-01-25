library("sqldf")
library("RSQLite")

library(readxl)

library(readxl)

efficiency_2018 <- ggplot(nba_2018_efficiency, aes(Efficiency,W)) + geom_point(color='purple') + labs(title="2018 Team Efficiency")

efficiency_2000 <- ggplot(nba2000_efficiency, aes(Efficiency,W), color='navy') + geom_point(color='navy') + labs(title="2000 Team Efficiency")

efficiency_2008 <- ggplot(nbasalaries_2008, aes(Efficiency,W)) + geom_point(color='red') + labs(title="2008 Team Efficiency")

efficiency_2018

cor(nba2000_efficiency$Efficiency,nba2000_efficiency$W)

nbasalaries_2008 <- sqldf("SELECT Name,Team,percent_salary_cap,W,Efficiency FROM nbasalaries_2008")

top5_2008 <- sqldf("SELECT * FROM nbasalaries_2008 ORDER BY percent_salary_cap DESC LIMIT 5")

median(top5_2008$percent_salary_cap)

top5_2018 <- sqldf("SELECT * FROM nba_2018_efficiency ORDER BY Efficiency DESC LIMIT 5")

bottom5_2018 <- sqldf("SELECT * FROM nba_2018_efficiency ORDER BY Efficiency LIMIT 5")
