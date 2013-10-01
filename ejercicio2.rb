#!/usr/bin/env ruby
# coding: utf-8

require_relative "purchase.rb"


p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
puts p
p.add p2
p.add p1
p.add p1
p.add p1
p.add p1
p.add p1
p.add p1
p.add p1

puts p
puts p.total

# Descuento de 10% en tu compra si llevás algún martillo!
#p.apply_discount do |purchase|
#  hammers = purchase.products.collect { |product| product.code == '01' }
#  purchase.total -= purchase.total * 0.1 if hammers.any?
#end

#p.apply_discount do |purchase|
#  purchase.total *= 0.8 if purchase.size > 10
#end

p.apply_discount do |purchase|
  products_uniq = purchase.products.uniq
  products_uniq.each do |product| 
    count = purchase.products.count(product) / 3
    count.times { purchase.total -= product.price }
  end
end

puts p.total
