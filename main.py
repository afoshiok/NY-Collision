import duckdb

#Testing Duckdb, making sure it's connected
con = duckdb.connect("NY_Collisions.db")
table_test = con.sql("SELECT * FROM './NY_Collisions.csv' LIMIT 10;")
table_test.show()

