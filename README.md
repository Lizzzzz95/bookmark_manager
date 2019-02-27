# Bookmark Manager

### User Stories

As a user,
So that I can view what pages I visit a lot,
I want be able to see a list of bookmarks.

### Domain Model

![Bookmark Manager domain model](images/bookmark_manager_1.png)

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
