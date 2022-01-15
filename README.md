# Tandem

An app that creates perfect pairs of developers entered by the lead in a sprint.

## Dependencies

- [Ruby 3.0](http://www.ruby-lang.org/en/)
- [Rails 7.0.4](http://rubyonrails.org/)
- PostgreSQL >= 9.6

## Running the Tandem locally

run these commands in the terminal, from the directory the project is in.

- Install the ruby gems with `bundle install`
- Create the databases `bundle exec rake db:create`
- Prepare the database with `bundle exec rake db:migrate db:test:prepare`
- Seed the database with `bundle exec rake db:seed`
- `rails server` start the server.
- Go to [localhost:3000](http://localhost:3000)
- You'll be redirected to login - and after signin you'll be redirected to [localhost:3000/home](http://localhost:3000/home).
- Here you can see the sprints that you have or you can create a new one.

## Testing

- Run the tests with `bundle exec rspec`
