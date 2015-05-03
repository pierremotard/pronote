def mettre_note_eleve(notation)
  print "Nom : "
  nom = gets.chomp
  print "Note : "
  note = gets.chomp.to_f
  if note > 20 or note < 0
    while note > 20 or note < 0
      if note > 20
        begin
          raise ArgumentError.new("La note ne peut pas être superieure à 20 !")
        rescue
          puts "La note ne peut pas être superieure à 20"
        end
      else note < 0 or note = "-0"
        begin
          raise ArgumentError.new("La note ne peut pas être inférieure à 0 !")
        rescue
          puts "La note ne peut pas être inférieure à 0."
        end
      end
      print "Note : "
      note = gets.chomp.to_f
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
    mettre_note_eleve(notation)
  }

  notation.each do |nom, note|
    puts "#{nom}: #{note}"
  end

end

pronote_professeur