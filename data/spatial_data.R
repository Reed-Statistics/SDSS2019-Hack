# Sample code for grabbing spatial data
library(tigris)
options(tigris_use_cache = TRUE)

# Grab shape files for King county at the census tract level
king_spatial <- tracts(state = "WA", county = "King")

# Use geo_join to join the spatial data to one of the other datasets
dat <- geo_join(spatial_data = king_spatial, name_of_other_dataset, by = "GEOID") 
