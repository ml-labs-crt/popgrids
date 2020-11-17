setwd("C:/Users/agati/OneDrive - University College Dublin/Experiments/PopGrids/KML")
library(rgdal)
library(stringr)
#Loading the file with all slum areas for Brazil. This file was generated on GoogleEarth by opening all KMZs available at <https://www.ibge.gov.br/geociencias/organizacao-do-territorio/tipologias-do-territorio/15788-aglomerados-subnormais.html> and saving them as one single KML file. Date accessed: 03/11/2019.
kml.text <- readLines("BrazilSlums.kml")
ExpressionForAreaCode <- '<SimpleData name="CodAGSN_BogOut2011">'
LineswithCodeAreas <- grep(ExpressionForAreaCode,kml.text)
CD_AGSN = str_extract_all(kml.text[LineswithCodeAreas], "\\d+", simplify = TRUE)
ExpressionForHouseholds <- '<SimpleData name="DPO_EmAGSN">'
LineswithHouseholds <- grep(ExpressionForHouseholds,kml.text)
Households = str_extract_all(kml.text[LineswithHouseholds], "\\d+", simplify = TRUE)
ExpressionForPopulation <- '<SimpleData name="PopEmDPO_EmAGSN">'
LineswithPopulation <- grep(ExpressionForPopulation,kml.text)
Population = str_extract_all(kml.text[LineswithPopulation], "\\d+", simplify = TRUE)
Data <- cbind(CD_AGSN[,2],Households,Population)
DataAreasSlumPopulation <- unique.matrix(Data)
nrow(DataAreasSlumPopulation)
colnames(DataAreasSlumPopulation) <- c("CodAGSN_BogOut2011","DPO_EmAGSN","PopEmDPO_EmAGSN")
#DataAreasSlumPopulation[,2:3] <- sapply(DataAreasSlumPopulation[,2:3],as.numeric)
write.csv(DataAreasSlumPopulation,"DataAreasSlumPopulation.csv")

