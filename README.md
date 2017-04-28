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
The MIT License (MIT)

Copyright (c) 2016 Iyanu Adelekan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
