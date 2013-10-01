#!/usr/bin/env ruby
# coding: utf-8

require_relative 'ejercicio1.rb'
require 'test/unit'

class TestEjercicio1 < Test::Unit::TestCase

  def setup
    @unHombre = Hombre.new
    @unSapo = Sapo.new
    @unAguila = Aguila.new
    @unPerro = Perro.new
  end

  def test_accessors
    assert_equal("hablar", @unHombre.hablar)
    assert_equal('caminar', @unHombre.caminar)
    assert_equal('nadar', @unHombre.nadar)

    assert_equal('saltar',@unSapo.saltar)

    assert_equal('volar',@unAguila.volar)
    assert_respond_to(@unPerro, :volar)
  end

end

