def pronote
  puts "Bienvenue sur le logiciel Pronote !"
  print "Professeur ou eleve ?"
  statut = gets.chomp
  if statut == "professeur"
    load 'pronote_professeur.rb'
  elsif statut == "eleve"
    load 'pronote_eleve.rb'
  else
    puts "Statut inexistant"
  end
end
pronote

