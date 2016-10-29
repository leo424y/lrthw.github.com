require 'open-uri'

open('http://www.ruby-lang.org/en') do |f|
  f.each_line { |line| p line }
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.content_encoding
  puts f.last_modified
end

# dif requre, load
puts require './x'
puts require './x'
puts require './x'
puts load './x.rb'
puts load './x.rb'
puts load './x.rb'

# 上網搜尋 require 與 include 的差異點。它們有什麼不同？
# What's the difference between "include" and "require" in Ruby?
#
# The require method does what include does in most other programming languages: run another file.
# It also tracks what you've required in the past and won't require the same file twice.
# To run another file without this added functionality, you can use the load method.
#
# The include method takes all the methods from another module and includes them into the current module.
# This is a language-level thing as opposed to a file-level thing as with require.
# The include method is the primary way to "extend" classes with other modules (usually referred to as mix-ins).
# For example, if your class defines the method "each", you can include the mixin module Enumerable and it can act as a collection.
# This can be confusing as the include verb is used very differently in other languages.
# So if you just want to use a module, rather than extend it or do a mix-in, then you'll want to use require.
#
# Oddly enough, Ruby's require is analogous to C's include, while Ruby's include is almost nothing like C's include.
#
# http://stackoverflow.com/questions/318144/what-is-the-difference-between-include-and-require-in-ruby What is the difference between include and require in Ruby? - Stack Overflow
# 你能 require 一段沒有特別包含 module 的腳本嗎？ 可以
# 搞懂 Ruby 會去系統的哪裡找你 require 的 modules。
