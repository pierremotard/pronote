def pronote
  puts "Bienvenue sur le logiciel Pronote !"
  print "Professeur ou eleve :  "
  statut = gets.chomp
  case statut
  when "professeur"
    load 'pronote_professeur.rb'
  when "eleve"
    load 'pronote_eleve.rb'
  else
    puts "Statut inexistant"
  end
end
pronote

