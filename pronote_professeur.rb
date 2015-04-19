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

  notation = {}
  nombre_eleve.times{
    print "Nom : "
    nom = gets.chomp
    print "Note : "
    note = gets.chomp.to_i
    notation[nom] = note
  }

  notation.each do |nom, note|
    puts "#{nom}: #{note}"
  end
end

pronote_professeur