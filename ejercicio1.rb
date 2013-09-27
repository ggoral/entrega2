#!/usr/bin/env ruby
# coding: utf-8

module Caminante
  def caminar
    puts "caminar"
  end
end

module Nadador
  def nadar
    puts "nadar"
  end
end

module Volador
  def volar
    puts "volar"
  end
end

module Reptante
  def reptar
    puts "reptar"
  end
end

class Mamifero
end

class Hombre < Mamifero
  include Caminante
  include Nadador

  def hablar
    puts "hablar"
  end

end

class Perro < Mamifero
  include Caminante
end

class Ballena < Mamifero
  include Nadador
end

class Ave
   include Caminante 
end

class Aguila < Ave
   include Volador
end

class Pinguino < Ave
   include Nadador
end

class Reptil
end

class Cocodrilo < Reptil
   include Caminante
   include Nadador
end

class Boa < Reptil
   include Reptante
   
   def presionar
     puts "presionar"
   end
end

class Cobra < Reptil
   include Reptante
   
   def morder
      puts "morder"
   end
end

class Anfibio
end

class Sapo < Anfibio
   include Nadador
   
   def saltar
      puts "saltar"
   end
end

class Pez
end

class Tiburon < Pez
   include Nadador
end


unHombre = Hombre.new
unHombre.hablar


