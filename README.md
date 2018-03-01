# Eat Then Diet
> Control of diet.


A simple web app that control and monitoring a diet of user.

![](goku_eating.png)

## Installation

Windows & Linux:

```sh
git clone or download the project
```

## Usage example

This APP can be used to monitor a user's diet. Each user can add n diets, and in each of these diets can be added what you eated during the period that was valid.
During the period of the diet can be added their measured weight each day until the end of it, These weights generate a graph that can be seen visualizing the diet.


## Development setup

In development there are some diets ,weights,user and diets fields added

```sh
rake db:create
rake db:migrate
rake db:seed
rails s
```

Remember to delete the database every time before running the seed.

## Future Implementations

* A form for add new types of meal

* A Pagination in index of all pages

* A user admin and rules for all users
   
* A better layoult.

## Meta

Nelcifran Magalhaes – [@Linkedin](https://www.linkedin.com/in/nelcifranpires/
) – nelcifranpires@gmail.com


## Contributing

1. Fork it (<https://github.com/NelcifranMagalhaes/eat_then_diet/fork>)

