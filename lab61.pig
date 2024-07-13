--CREATING A RELATION BY LOADING Employee FILE
emp = LOAD '/user/maria_dev/employee.txt' 
USING PigStorage('|') 
AS (userID:int, age:int, gender:chararray, occupation:chararray, zip:int);

--LOADING THE employees IN HBASE TABLE
STORE users INTO 'hbase://emp1' 
USING org.apache.pig.backend.hadoop.hbase.HBaseStorage ('empinfo:age,empinfo:gender,empinfo:occupation,empinfo:zip');