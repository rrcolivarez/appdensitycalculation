pop_data <- read.csv("population.csv")
region_data <- read.csv("regionarea.csv")
cityduplicates_per_region <- aggregate(pop_data$CityProvince, by = list(pop_data$Region), FUN = function(x) length(unique(x)))
names(cityduplicates_per_region) <- c("Region", "NumUniqueCity")
unique_cityduplicates_per_region <- merge(cityduplicates_per_region, region_data)
unique_cityduplicates_per_region


#NCR
popNCR = pop_data[pop_data$Region=="NATIONAL CAPITAL REGION", c("Province", "CityProvince","Barangay","Population")]
sumNCR = aggregate(Population ~ CityProvince, popNCR, sum)
sumNCR$den = sumNCR$Population/(unique_cityduplicates_per_region[4,3]/unique_cityduplicates_per_region[4,2])
sumNCR

#IX
popIX = pop_data[pop_data$Region=="REGION IX - ZAMBOANGA PENINSULA", c("Province", "CityProvince","Barangay","Population")]
sumIX = aggregate(Population ~ CityProvince, popIX, sum)
sumIX$den = sumIX$Population/(unique_cityduplicates_per_region[10,3]/unique_cityduplicates_per_region[10,2])
sumIX

#V
popV = pop_data[pop_data$Region=="REGION V - BICOL", c("Province", "CityProvince","Barangay","Population")]
sumV = aggregate(Population ~ CityProvince, popV, sum)
sumV$den = sumV$Population/(unique_cityduplicates_per_region[11,3]/unique_cityduplicates_per_region[11,2])
sumV

#VI
popVI = pop_data[pop_data$Region=="REGION VI - WESTERN VISAYAS", c("Province", "CityProvince","Barangay","Population")]
sumVI = aggregate(Population ~ CityProvince, popVI, sum)
sumVI$den = sumVI$Population/(unique_cityduplicates_per_region[12,3]/unique_cityduplicates_per_region[12,2])
sumVI

#VII
popVII = pop_data[pop_data$Region=="REGION VII - CENTRAL VISAYAS", c("Province", "CityProvince","Barangay","Population")]
sumVII = aggregate(Population ~ CityProvince, popVII, sum)
sumVII$den = sumVII$Population/(unique_cityduplicates_per_region[13,3]/unique_cityduplicates_per_region[13,2])
sumVII

#VIII
popVIII = pop_data[pop_data$Region=="REGION VIII - EASTERN VISAYAS", c("Province", "CityProvince","Barangay","Population")]
sumVIII = aggregate(Population ~ CityProvince, popVIII, sum)
sumVIII$den = sumVIII$Population/(unique_cityduplicates_per_region[14,3]/unique_cityduplicates_per_region[14,2])
sumVIII

#X
popX = pop_data[pop_data$Region=="REGION X - NORTHERN MINDANAO", c("Province", "CityProvince","Barangay","Population")]
sumX = aggregate(Population ~ CityProvince, popX, sum)
sumX$den = sumX$Population/(unique_cityduplicates_per_region[15,3]/unique_cityduplicates_per_region[15,2])
sumX

#XI
popXI = pop_data[pop_data$Region=="REGION XI - DAVAO ", c("Province", "CityProvince","Barangay","Population")]
sumXI = aggregate(Population ~ CityProvince, popXI, sum)
sumXI$den = sumXI$Population/(unique_cityduplicates_per_region[16,3]/unique_cityduplicates_per_region[16,2])
sumXI

#XII
popXII = pop_data[pop_data$Region=="REGION XII - SOCCSKSARGEN", c("Province", "CityProvince","Barangay","Population")]
sumXII = aggregate(Population ~ CityProvince, popXII, sum)
sumXII$den = sumXII$Population/(unique_cityduplicates_per_region[17,3]/unique_cityduplicates_per_region[17,2])
sumXII

#XIII
popXIII = pop_data[pop_data$Region=="REGION XIII CARAGA", c("Province", "CityProvince","Barangay","Population")]
sumXIII = aggregate(Population ~ CityProvince, popXIII, sum)
sumXIII$den = sumXIII$Population/(unique_cityduplicates_per_region[18,3]/unique_cityduplicates_per_region[18,2])
sumXIII

popARMM = pop_data[pop_data$Region=="AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)", c("Province", "CityProvince","Barangay","Population")]
sumARMM = aggregate(Population ~ CityProvince, popARMM, sum)
sumARMM$den = sumARMM$Population/(unique_cityduplicates_per_region[1,3]/unique_cityduplicates_per_region[1,2])
sumARMM

popCAR = pop_data[pop_data$Region=="CORDILLERA ADMINISTRATIVE REGION", c("Province", "CityProvince","Barangay","Population")]
sumCAR = aggregate(Population ~ CityProvince, popCAR, sum)
sumCAR$den = sumCAR$Population/(unique_cityduplicates_per_region[2,3]/unique_cityduplicates_per_region[2,2])
sumCAR

popMIMAROPA = pop_data[pop_data$Region=="MIMAROPA REGION", c("Province", "CityProvince","Barangay","Population")]
sumMIMAROPA = aggregate(Population ~ CityProvince, popMIMAROPA, sum)
sumMIMAROPA$den = sumMIMAROPA$Population/(unique_cityduplicates_per_region[3,3]/unique_cityduplicates_per_region[3,2])
sumMIMAROPA

popNCR = pop_data[pop_data$Region=="NATIONAL CAPITAL REGION", c("Province", "CityProvince","Barangay","Population")]
sumNCR = aggregate(Population ~ CityProvince, popNCR, sum)
sumNCR$den = sumNCR$Population/(unique_cityduplicates_per_region[4,3]/unique_cityduplicates_per_region[4,2])
sumNCR

popNegros = pop_data[pop_data$Region=="NEGROS ISLAND REGION", c("Province", "CityProvince","Barangay","Population")]
sumNegros = aggregate(Population ~ CityProvince, popNegros, sum)
sumNegros$den = sumNegros$Population/(unique_cityduplicates_per_region[5,3]/unique_cityduplicates_per_region[5,2])
sumNegros

popI = pop_data[pop_data$Region=="REGION I - ILOCOS", c("Province", "CityProvince","Barangay","Population")]
sumI = aggregate(Population ~ CityProvince, popI, sum)
sumI$den = sumI$Population/(unique_cityduplicates_per_region[6,3]/unique_cityduplicates_per_region[6,2])
sumI

popII = pop_data[pop_data$Region=="REGION II - CAGAYAN VALLEY", c("Province", "CityProvince","Barangay","Population")]
sumII = aggregate(Population ~ CityProvince, popII, sum)
sumII$den = sumII$Population/(unique_cityduplicates_per_region[7,3]/unique_cityduplicates_per_region[7,2])
sumII

popIII = pop_data[pop_data$Region=="REGION III - CENTRAL LUZON", c("Province", "CityProvince","Barangay","Population")]
sumIII = aggregate(Population ~ CityProvince, popIII, sum)
sumIII$den = sumIII$Population/(unique_cityduplicates_per_region[8,3]/unique_cityduplicates_per_region[8,2])
sumIII

popIVA = pop_data[pop_data$Region=="REGION IV-A CALABARZON", c("Province", "CityProvince","Barangay","Population")]
sumIVA = aggregate(Population ~ CityProvince, popIVA, sum)
sumIVA$den = sumIVA$Population/(unique_cityduplicates_per_region[9,3]/unique_cityduplicates_per_region[9,2])
sumIVA

merge <- rbind(sumARMM,sumCAR,sumMIMAROPA,sumNCR,sumNegros,sumI,sumII,sumIII,sumIVA, sumV, sumVI, sumVII, sumVIII, sumIX, sumX, sumXI, sumXII, sumXIII)
merge
mergesort = merge[order(merge$den, decreasing=TRUE),]
mergetop5 = head(mergesort, 5)
mergetop5

write.csv(mergetop5, file="CityDensity.csv",row.names=FALSE)

