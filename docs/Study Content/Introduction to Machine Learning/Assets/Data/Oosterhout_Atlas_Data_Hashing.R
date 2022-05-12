# Oosterhout Atlas Data Hashing
# This script is supposed to hash and anonymize any sensitive data from the
# Oosterhout atlas data as delivered by the municipality

# Load packages
library(data.table)

# Load in data
df_source <- read.csv2("~/temp/OosterhoutAtlas_Source.csv")

# Inspect data
head(df_source)
is.na(df_source)
colnames(df_source)
"Looks good!"
paste0("Only the following variables need to be anonymized", colnames(df_source[,10:14]))
"lol, what is X doing there? NVM"

# Create new DF as target
df_tar <- df_source

# Hashing data
df_tar$WaardeBuurt <- df_source$WaardeBuurt*2+1

df_source$WaardeBuurt == df_tar$WaardeBuurt # Check for succes

# Great, continue hasing
df_tar$WaardeWijk <- df_source$WaardeWijk*2+1
df_tar$WaardeNederland <- df_source$WaardeNederland*2+1
df_tar$WaardeGemeente <- df_source$WaardeGemeente*2+1

# Create DF with just 'wijken'  and one with just 'buurten'
df_wijk <- df_tar
df_buurt <- df_tar

# Delete buurten
df_wijk$BuurtCode <- NULL
df_wijk$WaardeBuurt <- NULL
head(df_wijk)

fwrite(df_wijk,                            # Store new dataframe
       file = "AtlasOosterhout_DistrictLevel.csv", # as csv
       sep = ",") # Store in seperate collums   

# Delete wijken
df_buurt$WijkCode <- NULL
df_buurt$WaardeWijk <- NULL
head(df_buurt)

fwrite(df_buurt,                            # Store new dataframe
       file = "AtlasOosterhout_NeighbourhoodLevel.csv", # as csv
       sep = ",") # Store in seperate collums   

# yay, all works
# lol where did I save?
getwd()
