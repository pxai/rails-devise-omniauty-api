# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

https://guides.railsgirls.com/devise
https://medium.com/@_benrudolph/end-to-end-devise-omniauth-google-api-rails-7f432b38ed75 

# Devise Curl

Register

```shell
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "myemail8@email.com", "password": "mypassword1", "password_confirmation" : "mypassword1"} }' http://localhost:3001/users.json -i
```

Login
```shell
curl -X POST -v -H 'Content-Type: application/json'  -i http://localhost:3001/users/sign_in.json -d '{"user" : {"email": "some_user@nowhereville.org", "password": "OpenSecret" }}'
```




