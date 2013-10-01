#!/usr/bin/env ruby
# coding: utf-8

require_relative 'purchase.rb'
require 'test/unit'

class TestPurchase < Test::Unit::TestCase

  def setup
    @product = Product.new '01', 'Martillo', '50'
    @purchase = Purchase.new
  end

  def test_add_item
    assert_equal(0, @purchase.size)
    @purchase.add @product
    assert_equal(1, @purchase.size)
    @purchase.add @product
    assert_equal(2, @purchase.size)
    @purchase.delete @product
    @purchase.delete @product
    assert_equal(0, @purchase.size)
  end

  def test_accessors_fail
    assert_not_equal('50', @product.price) 
  end

end

