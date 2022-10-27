# About
Este projeto é fruto do desafio proposto pela empresa OM30.
A proposta do projeto é um sistema de cadastro de Cidades e Habitantes.

# Project
The project was built following the rules defined by the staff of OM30.


# Technology stack
This is application using 
- ruby on rails ``6.1.6.1``
- ruby ``2.7.1``
- html
- css
- javascript
- postgresql

# Database diagram
![library](https://github.com/ArcelinoNeto/rmc/blob/master/RMC.png)

## Set up

1. Clone the project
```
git clone https://github.com/ArcelinoNeto/rmc.git
```
```
cd RMC
```
2. Install dependencies
``` 
bundle install
``` 

3. Database configuration 

To configure the database, run the command below
```
rails db:setup
```
To populate with data for testing run the command below
```
rails dev:setup
```
4. Create admin user with `rails create_user`.

Enter rails console

```
rails c
```

Run the command

```
User.create!(name: 'Admin', email: 'admin@admin.com', role: 'admin', password: '123456', password_confirmation: '123456')
```
Role Options:
admin || city_user

5. Start the project
```
rails s
```
