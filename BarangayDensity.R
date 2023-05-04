population = read.csv("population.csv")
regionarea = read.csv("regionarea.csv")
regionarea

#Region IX
popIX = population[population$Region=="REGION IX - ZAMBOANGA PENINSULA", c("Province","CityProvince","Barangay","Population")]
popIX$den = popIX$Population / (regionarea[10,2]/length(population$Region[population$Region == "REGION IX - ZAMBOANGA PENINSULA"]))
popIX

#Region V
popV = population[population$Region=="REGION V - BICOL", c("Province","CityProvince","Barangay","Population")]
popV$den = popV$Population / (regionarea[11,2]/length(population$Region[population$Region == "REGION V - BICOL"]))
popV

#Region VI
popVI = population[population$Region=="REGION VI - WESTERN VISAYAS", c("Province","CityProvince","Barangay","Population")]
popVI$den = popVI$Population / (regionarea[12,2]/length(population$Region[population$Region == "REGION VI - WESTERN VISAYAS"]))
popVI

#Region VII
popVII = population[population$Region=="REGION VII - CENTRAL VISAYAS", c("Province","CityProvince","Barangay","Population")]
popVII$den = popVII$Population / (regionarea[13,2]/length(population$Region[population$Region == "REGION VII - CENTRAL VISAYAS"]))
popVII

#Region VIII
popVIII = population[population$Region=="REGION VIII - EASTERN VISAYAS", c("Province","CityProvince","Barangay","Population")]
popVIII$den = popVIII$Population / (regionarea[14,2]/length(population$Region[population$Region == "REGION VIII - EASTERN VISAYAS"]))
popVIII

#Region X
popX = population[population$Region=="REGION X - NORTHERN MINDANAO", c("Province","CityProvince","Barangay","Population")]
popX$den = popX$Population / (regionarea[15,2]/length(population$Region[population$Region == "REGION X - NORTHERN MINDANAOL"]))
popX

#Region XI
popXI = population[population$Region=="REGION XI - DAVAO ", c("Province","CityProvince","Barangay","Population")]
popXI$den = popXI$Population / (regionarea[16,2]/length(population$Region[population$Region == "REGION XI - DAVAO "]))
popXI

#Region XII
popXII = population[population$Region=="REGION XII - SOCCSKSARGEN", c("Province","CityProvince","Barangay","Population")]
popXII$den = popXII$Population / (regionarea[17,2]/length(population$Region[population$Region == "REGION XII - SOCCSKSARGEN"]))
popXII

#Region XIII
popXIII = population[population$Region=="REGION XIII CARAGA", c("Province","CityProvince","Barangay","Population")]
popXIII$den = popXIII$Population / (regionarea[18,2]/length(population$Region[population$Region == "REGION XIII CARAGA"]))
popXIII

#Region IV-A
popIVA = population[population$Region=="REGION IV-A CALABARZON", c("Province","CityProvince","Barangay","Population")]
popIVA$den = popIVA$Population / (regionarea[9,2]/length(population$Region[population$Region == "REGION IV-A CALABARZON"]))
popIVA

popARMM = population[population$Region=="AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)", c("Province", "CityProvince","Barangay","Population")]
popARMM$den = popARMM$Population / (regionarea[1,2]/length(population$Region[population$Region == "AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)"]))
popARMM

popCAR = population[population$Region=="CORDILLERA ADMINISTRATIVE REGION", c("Province", "CityProvince","Barangay","Population")]
popCAR$den = popCAR$Population / (regionarea[2,2]/length(population$Region[population$Region == "CORDILLERA ADMINISTRATIVE REGION"]))
popCAR

popMIMAROPA = population[population$Region=="MIMAROPA REGION", c("Province", "CityProvince","Barangay","Population")]
popMIMAROPA$den = popMIMAROPA$Population / (regionarea[3,2]/length(population$Region[population$Region == "MIMAROPA REGION"]))
popMIMAROPA

popNCR = population[population$Region=="NATIONAL CAPITAL REGION", c("Province", "CityProvince","Barangay","Population")]
popNCR$den = popNCR$Population / (regionarea[4,2]/length(population$Region[population$Region == "NATIONAL CAPITAL REGION"]))
popNCR

popNegros = population[population$Region=="NEGROS ISLAND REGION", c("Province", "CityProvince","Barangay","Population")]
popNegros$den = popNegros$Population / (regionarea[5,2]/length(population$Region[population$Region == "NEGROS ISLAND REGION"]))
popNegros

popI = population[population$Region=="REGION I - ILOCOS", c("Province", "CityProvince","Barangay","Population")]
popI$den = popI$Population / (regionarea[6,2]/length(population$Region[population$Region == "REGION I - ILOCOS"]))
popI

popII = population[population$Region=="REGION II - CAGAYAN VALLEY", c("Province", "CityProvince","Barangay","Population")]
popII$den = popII$Population / (regionarea[7,2]/length(population$Region[population$Region == "REGION II - CAGAYAN VALLEY"]))
popII

popIII = population[population$Region=="REGION III - CENTRAL LUZON", c("Province", "CityProvince","Barangay","Population")]
popIII$den = popIII$Population / (regionarea[8,2]/length(population$Region[population$Region == "REGION III - CENTRAL LUZON"]))
popIII



merge <- rbind(popARMM,popCAR,popMIMAROPA,popNCR,popNegros,popI,popII,popIII,popIVA, popV, popVI, popVII, popVIII, popIX, popX, popXI, popXII, popXIII)
merge
mergesort = merge[order(merge$den, decreasing=TRUE),]
mergetop5 = head(mergesort, 5)
mergetop5

write.csv(mergetop5, file="BarangayDensity.csv",row.names=FALSE)
