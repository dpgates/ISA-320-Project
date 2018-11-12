#!/usr/bin/env python3 
import sqlite3
conn = sqlite3.connect('bankDB.db')
print("Opened database successfully")
c = conn.cursor()
for row in c.execute('SELECT * FROM users'):
    print(row)
    print(row[0])
    print(row[1])
    print(row[2])
    