#!/usr/bin/env ruby
require './main'
inicio = Time.now

puts Main.new.calculaMaiorSequenciaAte(ARGV[0].to_i)

fim = Time.now

puts "#{(fim - inicio)} segundos"