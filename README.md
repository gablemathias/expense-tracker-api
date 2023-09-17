# Expense Tracker - Web Service

* Web application written in Sinatra that will receive incoming HTTP
requests (to add new expenses or search for existing ones)
* Database layer using Sequel
* Set of Ruby objects to represent Expenses and glue the other pieces together

HTTP Request -> HTTP Routing Code (Sinatra Routes) -> Expense Logic (Ruby code) --> Adapter (Sequel) --> DataBase (SQLite)

