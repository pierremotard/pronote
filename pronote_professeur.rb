def pronote_professeur
  print "Niveau : "
  niveau = gets.chomp
  niveau.capitalize!
  print "Numéro de classe : "
  numero = gets.chomp
  print "Nombre d'eleve : "
  nombre_eleve = gets.chomp.to_i
  classe = "#{niveau} #{numero}"
  puts "#{classe}"

end

pronote_professeur