[![Gem Version](https://badge.fury.io/rb/rubyjokes.svg)](https://badge.fury.io/rb/rubyjokes)
[![Code Climate](https://codeclimate.com/github/SeunAdelekan/rubyjokes/badges/gpa.svg)](https://codeclimate.com/github/SeunAdelekan/rubyjokes)
[![Issue Count](https://codeclimate.com/github/SeunAdelekan/rubyjokes/badges/issue_count.svg)](https://codeclimate.com/github/SeunAdelekan/rubyjokes)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

# rubyjokes

Ruby library that facilitates the seamless integration of jokes in ruby applications

## Description
rubyjokes is a little ruby library that specialises in delivering bone-cracking jokes.
rubyjokes is easy to integrate into your ruby applications plus installation is hassle free.
Don't take my word for it though, try it out and see!

## Links
- https://github.com/SeunAdelekan
- https://rubygems.org/profiles/SeunAdelekan

## Dependencies
Unirest:
```ruby
gem install unirest
```
## Installation of rubyjokes:
```ruby
gem install rubyjokes
```
## Examples
```ruby
require 'rubyjokes'

joke = RubyJoke.new
puts joke.get_single_joke
```
#### Output
```
Chuck Norris originally appeared in the "Street Fighter II" video game, but was removed by
Beta Testers because every button caused him to do a roundhouse kick. When asked about this
glitch, Norris replied "That's no glitch."
```
To specify the type of jokes you want, simply use a hash with the key 'limitTo'
```ruby
require 'rubyjokes'

joke = RubyJoke.new
puts joke.get_joke({limitTo: ['nerdy','explicit']})
```
#### Output
```
Chuck Norris doesn't have pubic hairs because hair doesn't grow on balls of steel.
```
**The types of jokes available are:**
- nerdy
- explicit

To specify the type of jokes you don't want, simply use a hash with the key 'exclude'
```ruby
require 'rubyjokes'

joke = RubyJoke.new
puts joke.get_joke({exclude: ['explicit']})
```
One last thing: rubyjokes and Chuck Norris only accept type specifications with a Hash
```ruby
require 'rubyjokes'

joke = RubyJoke.new
puts joke.get_joke("exclude=[explicit]")
```
### Output
```
Sorry, Chuck Norris only responds to Hashes. Hashes are as badass as Chuck Norris
```

## License
MIT License
