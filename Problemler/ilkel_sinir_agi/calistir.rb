#encoding : utf-8
require_relative "ilkel_sinir_agi_class.rb"
x_dizisi = [ [0, 0, 1], [0, 1, 1], [1, 2, 1], [1, 1, 1] ]
w_dizisi = [ 7, -78, 4 ]
epsilon, esik_degeri = 3, 4
istenen = [1, 1, 1, 0] #istenen cikis 
gercek = []  #gercek cikis

sinir_agi=YapaySinirAgi.new(x_dizisi, istenen, epsilon, esik_degeri)
sinir_agi.sistem_tarama(w_dizisi, gercek)
