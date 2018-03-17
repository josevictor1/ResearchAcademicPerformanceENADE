from pandas import *

csv_path = "data/microdados_enade_2015.csv"

data = read_csv(csv_path, sep=';',low_memory=False)

def mask(df, key, value):
    return df[df[key] == value]

pandas.DataFrame.mask = mask

mydata = data[(data.co_grupo) == 22]; 
#mydata = mydata[len(mydata.vt_ace_oce).astype(str)) == 27]; 


#df.mask('A', 1)