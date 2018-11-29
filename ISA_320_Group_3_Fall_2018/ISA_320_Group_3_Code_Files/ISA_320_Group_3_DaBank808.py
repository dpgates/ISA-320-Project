#!/usr/bin/env python3 

import sqlite3

class BankMangt():
    def __init__(self, man):
        self.manager = man

    def showAccount(self, user_view):
        input('Select a user to view')
        conn = sqlite3.connect("bankDB.db")
        c = conn.cursor('account')
        for row in c.execute("account"):
        print("account 1,3,5,6,7", user_view)

    def showAllAccounts(self):
        conn = sqlite3.connect('bankDB.db')
        c = conn.cursor()
        for row in c.execute('SELECT * FROM account'):
            print(row[1])

    def Deposit(self):
        dep = int(input("Please Enter Ammout to Deposit:"))
        conn = sqlite3.connect('bankDB.db')
        print("Opened database successfully")
        c = conn.cursor()
        for row in c.execute(''):
            pass

    def Withdraw(self):
        wth = int(input("Please Enter Ammout to Withdraw:"))
        conn = sqlite3.connect('bankDB.db')
        print("Opened database successfully")
        c = conn.cursor()
        for row in c.execute(''):
            pass


class BankUser:
    def __init__(self, user):
        self.user = user

    def showAccount(self):
        conn = sqlite3.connect("bankDB.db")
        c = conn.cursor()
        row in c.execute("account"):
        print("account 1,3,5,6,7", self.user)
    

def login():
    log = False
    who = input("Press 1 for user\nPress 2 for Bank Manager: ")
    user = input("Please enter your user name: ")
    pswd = input("Please enter your password: ")
    conn = sqlite3.connect('bankDB.db')
    c = conn.cursor()
    if who == "1":
        for row in c.execute('SELECT * FROM users'):
            if user == row[1]:
                print('user found')
                if pswd == row[2]:
                    log = True 
                    break
        if log:
            print("Password Accepted")
            user1 = BankUser(user)
            user1.showAccount()
        else:
            print("Try again; User Name or Password Incorrect!")
    elif who == "2":
        for  row in c.execute('SELECT * FROM manager'):
            if user == row[1]:
                print("user found")
                if pswd == row[2]:
                    log = True 
                    break
        if log:
            print("Manager Accepted")
            man1 = BankMangt(user)
            print("Please select an option\n1 for Customer Account\n2 for all Customer Accounts\n3 to Deposit\n4 to Withdraw")
            menu_selection = input()
            if menu_selection == '1':
                user_view = input('Select user: ')
                man1.showAccount(user_view)
            elif menu_selection == '2':
                man1.showAllAccounts()
            elif menu_selection == '3':
                man1.Deposit()
            elif menu_selection == '4':
                man1.Withdraw()
        
        else:
            print("Try again; User Name or Password Incorrect!")
    

if __name__ == "__main__":
    login()
    