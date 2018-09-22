# TicTacToe

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tic_tac_toe`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

Example
```
require 'tic_tac_toe'

system('cls')
puts "How many rows and cols do you want the board to have? (3 or more)"
# Get size of the matrix (Board of game with rang 3-10)
size  = gets.chomp.to_i
# We instance te class Game and set size
game = TicTacToe::Game.new(size)
x=0
y=0

begin
  game.print_matrix
  print "Set coordinate in X: "
  x = gets.chomp.to_i
  print "Set coordinate in Y: "
  y = gets.chomp.to_i
  system('cls')
end until game.play_game(x, y)

game.print_matrix
puts "THE WINNER IS PLAYER #{game.winner}"

  
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tic_tac_toe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TicTacToe project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tic_tac_toe/blob/master/CODE_OF_CONDUCT.md).
