#!/usr/bin/env ruby
# coding: utf-8

require_relative 'product.rb'
require 'test/unit'

class TestProduct < Test::Unit::TestCase

  def setup
    @product = Product.new '01', 'Martillo', '50'
  end

  def test_accessors
    assert_equal('01', @product.code)
    assert_equal('Martillo', @product.name)
    assert_equal(Float('50'), @product.price)
  end

  def test_accessors_fail
    assert_not_equal('50', @product.price) 
  end

end

