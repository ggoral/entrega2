#!/usr/bin/env ruby
# coding: utf-8

class Product
  attr_accessor :code, :name, :price

  def initialize(code, name, price)
    @code= code
    @name= name
    @price= Float(price)
  end
   
  def to_s
    "Code: #{@code}, Name: #{@name}, Price: #{@price}"
  end
end

