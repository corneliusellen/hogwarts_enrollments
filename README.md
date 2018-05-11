# Hogwarts Enrollments
The purpose of this respository to practice SQL and ActiveRecord in the Rails console and directly with the database. Follow along with [Part 1](https://www.ellencornelius.com/blog/2018/3/25/taking-the-guess-out-of-activerecord-part-1) and [Part 2](https://www.ellencornelius.com/blog/2018/4/22/taking-the-guess-out-of-activerecord-part-2) of my tutorial. This project uses PostgreSQL and Ruby on Rails to build a seeded database of Hogwarts School of Witchcraft and Wizardry enrollment data.

## Getting Started
### Prerequisites
You must have the following installed before beginning: Rails, PostgreSQL and Bundler.

### Installation
Initial setup must be done before interacting with the database. After cloning this repository, run the following commands in the CLI:
```
$ Accio, database!
```
Just kidding:

```
$ bundle install
$ rake db:{create,migrate,seed}
```

## Usage
To practice ActiveRecord queries or run existing ActiveRecord methods on the Student, Enrollment, Subject and Teacher models, connect to the Rails console:
```
$ rails c
```
To practice SQL queries, connect directly to the database:
```
$ rails db
```

## Schema
![schema](https://github.com/corneliusellen/hogwarts_enrollments/blob/master/schema.png)

## Author
Ellen Cornelius. Check out more blog posts at [ellencornelius.com](https://www.ellencornelius.com/)
