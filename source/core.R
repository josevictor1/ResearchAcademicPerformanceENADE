library("dplyr")

path <- "data/microdados_enade_2015.csv"

m_e <- as.data.frame.matrix(read.table(path, header = T, sep = ";"))

#library("tibble")

#m_e <- as_data_frame(m_e)

filteredm_e <- filter(m_e, co_grupo == 22)

#https://blogs.sas.com/content/iml/2015/08/31/digits-in-integer.html
filteredm_e <- filter(filteredm_e, ceiling(log10(vt_ace_oce + 1)) == 27)

#http://rprogramming.net/write-csv-in-r/
write.csv(filteredm_e, file = "result/mydata.csv", row.names = FALSE, na = "")


