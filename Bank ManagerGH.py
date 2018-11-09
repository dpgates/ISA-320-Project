
#These values are used to navigate through the OPTION'S TABLE
Deposit_Choice ="1"
Withdraw_Choice ="2"
View_All_Choice ="3"
View_Select_Choice = "4"
Update_Password_Choice = "5"
Exit_Choice = "6"

#This boolean value is used to determine the user's selection
finding_choice = True


#OPTION'S TABLE
#prints out a table of options for Bank Manager
print("\n\nWelome to Bank Manager")
print("----------------------------------------------")
print("1. Deposit Money")
print("2. Withdraw Money")
print("3. View Balance of all accounts")
print("4. View Balance of customer")
print("5. Update/Change Passwords to Customer Account")
print("6. Exit Bank Manager\n")
print("------------------------------------------------\n")

#loops to find what the user wants to do
#NOTE:within each "if/elif" statement the print statement
#     and the boolean value change is used to make sure the
#     while is looping properly
while finding_choice :
    choice = input("Please enter the number corresponding"
                   " to what you would like to do: ")
    if choice == Deposit_Choice:
        print("you choose Deposit Money")
        finding_choice = False
    elif choice == Withdraw_Choice:
        print("you choose Withdraw Money")
        finding_choice = False
    elif choice == View_All_Choice:
        print("you choose view all accounts")
        finding_choice = False
    elif choice == View_Select_Choice:
        print("you choose to view a select account")
        finding_choice = False
    elif choice == Update_Password_Choice:
        print("you choose to Update/Change a password in an account")
        finding_choice = False
    elif choice == Exit_Choice:
        print("Closing Bank Manager, Goodbye.")
        finding_choice = False
    else:
        print("Please select a correct choice.\n")

