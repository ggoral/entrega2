#!/usr/bin/env ruby
# coding: utf-8

class Product
   attr_accessor :code, :name, :price

   def initialize(code, name, price)
   @code= code
   @name= name
   @price= price
   end
end

class Purchase 

   def initialize()
     @products = Array.new
   end

   def add (aElement)
     @products << aElement
   end
   
   def total
     @products.inject(0) {|sum, item| sum + item.price }
   end

end

p2 = Product.new '02', 'Clavos x 100', '10'
carry = Purchase.new
carry.add p2
p carry

puts carry.total
