## Description

This project is a micro version of Reddit. Users can register, write posts, and add comments to posts. Each post belongs to a subreddit and users can be subscribed to many subreddits.

### Associations

- **Users** have a username and an email. They can be subscribed to many subreddits, they can make many comments and create many posts.
**Subreddits** have many users subscribed. Also, they can have many posts.
- Each **post** belongs to a subreddit, and they can are created by only one user. They can have many comments.
- Each **comment** belongs to a post. They are created by only one user.
[image of relationships]

## Validations

### Users
- **Username** should be alphanumeric. The length should be equal to or less than 12.
Before creating a user, you need to add a valid **email**.
### Subreddits
- **Name** should be alphanumeric. The length should be equal to or less than 12 characters.
**About**'s length should be equal to or less than 140 characters.
### Posts
- Posts should have a **title** with a length maximum of 50.
- Posts should have a **body** with a minimum of 5 and a maximum of 500
## Created with
- Ruby 2.7.0
- Rails 6.0.3.1
## Installation
You need to have ruby, rails, and bundle installed.
- Clone this repository with git clone repo_url
- In command-line, add bundle install
- Migrate the database with rails db:migrate
