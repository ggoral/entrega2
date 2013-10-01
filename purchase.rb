#!/usr/bin/env ruby
# coding: utf-8

require_relative "product.rb"

class Purchase 
  attr_accessor :products, :total, :discounts

  def initialize()
    @products = Array.new
    @discounts = Array.new
    @total = 0
  end
  
  def add (aElement)
    @products << aElement; 
    @total += aElement.price
  end

  def delete (aElement)
    @products.delete(aElement)
    @total -= aElement.price
  end

  def size; @products.size; end
  
  def apply_discount
    yield self
  end
  
  def to_s
    puts "Productos:"
    @products.each {|x| puts x}
    ""
  end
end

