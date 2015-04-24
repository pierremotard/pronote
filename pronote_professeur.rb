def demander_note_eleve(notation)
  print "Nom : "
  nom = gets.chomp
  print "Note : "
  note = gets.chomp.to_i
  if note > 20 or note < 0
    while note > 20 or note < 0
      if note > 20
        puts "La note ne peut pas être superieure à 20 !"
      else note < 0
        puts "La note ne peut pas être inferieure à 0 !"
      end
      print "Note : "
      note = gets.chomp.to_i
      notation[nom] = note
     end
  else
    notation[nom] = note
  end
end



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
    demander_note_eleve(notation)
  }

  notation.each do |nom, note|
    puts "#{nom}: #{note}"
  end

end

pronote_professeur