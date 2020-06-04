# Micro-reddit

## Description

This project is a micro version of Reddit. Users can register, write posts, and add comments to posts. Each post belongs to a subreddit and users can be subscribed to many subreddits.

### Associations

- **Users** have a username and an email. They can be subscribed to many subreddits, they can make many comments and create many posts.
**Subreddits** have many users subscribed. Also, they can have many posts.
- Each **post** belongs to a subreddit, and they can are created by only one user. They can have many comments.
- Each **comment** belongs to a post. They are created by only one user.
[image of relationships]

#### Diagram of database relationships

![diagrammodels](https://user-images.githubusercontent.com/1808402/83772855-70972b00-a649-11ea-9973-1ca2dbb4c6a5.png)

## Validations

New objects need to pass the following validations:

### Users
- **Username** should be alphanumeric. The length should be equal to or less than 12.
Before creating a user, you need to add a valid **email**.
### Subreddits
- **Name** should be alphanumeric. The length should be equal to or less than 12 characters.
**About**'s length should be equal to or less than 140 characters.
### Posts
- Posts should have a **title** with a length maximum of 50.
- Posts should have a **body** with a minimum of 5 and a maximum of 500

## Built With

- [Ruby](https://www.ruby-lang.org/en/) 2.7.0 - A programming language.
- [Ruby on Rails](https://rubyonrails.org/) 6.0.3.1 - A Ruby framework for web development

## Getting started

### Prerequisites

- Ruby
- Rails
- Bundle
- MySQL 3. **Note**: You can change the database in GemFile.

### Installing

1. Download this repository

`$ git clone repo_url`

2. Install all required gem.

`$ bundle install`

3. Migrate the database.

`$ rails db:migrate`

### After Installing

1. Open the console

`$ rails console`

2. Check the relationships between models

`$ new_model = User.new(username: 'example', email: example@email.com)
$ new_model.save`

### Running the tests

You can check specs into the folder 'tests'

## Authors

👤 **Pedro Donda**

- Github: [@Phfdonda](https://github.com/phfdonda)
- Twitter: [@srjuanpapas](https://twitter.com/phfdonda)
- Linkedin: [Pedro Donda](https://www.linkedin.com/in/pedro-donda-808621bb/)
- Contact: [E-mail](phfdonda@gmail.com)

👤 **Juan Paulo Perez Tejada**

- Github: [@Maclenn77](https://github.com/Maclenn77)
- Twitter: [@srjuanpapas](https://twitter.com/srjuanpapas)
- Linkedin: [Juan Paulo Perez Tejada](https://mx.linkedin.com/in/juanpaulopereztejada)

Visit [my blog](https://developerz.software/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
