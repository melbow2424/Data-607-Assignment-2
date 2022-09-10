library(DBI)
library(RMySQL)

library(RSQLite)
library(dplyr)

mydb = dbConnect(MySQL(), user='user', 
                 password='password', 
                 dbname='data_607_assignments', 
                 host='host')

dbListTables(mydb)

movie  = tbl(mydb, 'movie_rate')

movie

movie_df = collect(movie)
