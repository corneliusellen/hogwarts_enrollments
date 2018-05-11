# Hogwarts Enrollments
The purpose of this respository to practice SQL and ActiveRecord in the Rails console and directly with the database. Follow along with [Part 1](https://www.ellencornelius.com/blog/2018/3/25/taking-the-guess-out-of-activerecord-part-1) and [Part 2](https://www.ellencornelius.com/blog/2018/4/22/taking-the-guess-out-of-activerecord-part-2) of the tutorial. This project uses PostgreSQL and Ruby on Rails to build a seeded database of Hogwarts School of Witchcraft and Wizardry enrollment data.

## Getting Started
### Prerequisites
You must have the following installed before begining: Rails, PostgreSQL and Bundler.

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
## Schema

