# sinatra-panda

sinatra!

## Requirements

- ruby `2.1.2`

## Usage

```
$ bundle install --path=vendor/bundle --binstubs=vendor/bin
$ bundle exec rake db:create_migration NAME=create_wagons 
$ bundle exec rake db:migrate
$ bundle exec rackup
```