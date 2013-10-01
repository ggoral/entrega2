#!/usr/bin/env ruby
# coding: utf-8

module Caminante
  def caminar
    "caminar"
  end
end

module Nadador
  def nadar
    "nadar"
  end
end

module Volador
  def volar
    "volar"
  end
end

module Reptante
  def reptar
    "reptar"
  end
end

class Mamifero
end

class Hombre < Mamifero
  include Caminante
  include Nadador

  def hablar
    "hablar"
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
     "presionar"
   end
end

class Cobra < Reptil
   include Reptante
   
   def morder
      "morder"
   end
end

class Anfibio
end

class Sapo < Anfibio
   include Nadador
   
   def saltar
      "saltar"
   end
end

class Pez
end

class Tiburon < Pez
   include Nadador
end

