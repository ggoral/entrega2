#!/usr/bin/env ruby
# coding: utf-8

require_relative "product.rb"

class Purchase 
  attr_accessor :products, :total

  def initialize()
    @products = Array.new
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
    string = "Productos:\n"
    @products.each {|x| string << x.to_s + "\n" }
    string
  end
end

