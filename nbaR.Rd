library("sqldf")
library("RSQLite")

library(readxl)> NBA_season1718_salary <- read_excel("Documents/NBA_season1718_salary.xlsx")

library(readxl)> nba_2018_efficiency <- read_excel("Documents/nba_2018_efficiency.xlsx")

efficiency_2018 <- ggplot(nba_2018_efficiency, aes(Efficiency,W)) + geom_point(color='purple') + labs(title="2018 Team Efficiency")

efficiency_2000 <- ggplot(nba2000_efficiency, aes(Efficiency,W), color='navy') + geom_point(color='navy') + labs(title="2000 Team Efficiency")

efficiency_2008 <- ggplot(nbasalaries_2008, aes(Efficiency,W)) + geom_point(color='red') + labs(title="2008 Team Efficiency")

efficiency_2018> efficiency_2008> efficiency_2000

cor(nba2000_efficiency$Efficiency,nba2000_efficiency$W)[1] 0.1999324> > cor(nbasalaries_2008$Efficiency,nbasalaries_2008$W)[1] 0.7225501> > cor(nba_2018_efficiency$Efficiency,nba_2018_efficiency$W)[1] 0.6576826

nbasalaries_2008 <- sqldf("SELECT Name,Team,percent_salary_cap,W,Efficiency FROM nbasalaries_2008")> nbasalaries_2008

top5_2008 <- sqldf("SELECT * FROM nbasalaries_2008 ORDER BY percent_salary_cap DESC LIMIT 5")> top5_2008

median(top5_2008$percent_salary_cap)[1] 0.3546288

top5_2018 <- sqldf("SELECT * FROM nba_2018_efficiency ORDER BY Efficiency DESC LIMIT 5")> View(top5_2018)

bottom5_2018 <- sqldf("SELECT * FROM nba_2018_efficiency ORDER BY Efficiency LIMIT 5")
> top16_2018 <- sqldf("SELECT * FROM nba_2018_efficiency ORDER BY Efficiency DESC LIMIT 16")> View(top16_2018)