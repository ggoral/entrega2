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

class Purchase 
   attr_accessor :products

   def initialize()
   @products = Array.new
   end

   def add (aElement)
   @products << aElement
   end
   
   def total
   @total ||= @products.inject(0) {|sum, item| sum + item.price }
   end
   
   def total=(aValue)
   @total = aValue
   end

   def apply_discount
   yield self
   end

end

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

p.total

# Descuento de 10% en tu compra si llevás algún martillo!
p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01' }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end

puts p.total
