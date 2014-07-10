#'Main' functie loopt door string en passeert elke letter tot de nieuwe letter
# om de vertaalde letters te vinden
def caesar(tevertalen, nummer)
  alfabet = ('a'..'z').to_a
  vertaalde_string = ""

for i in 0..tevertalen.length-1
    if alfabet.include? tevertalen[i].downcase
      vertaalde_string += nieuwe_letter(tevertalen[i], nummer)
    else
     vertaalde_string += tevertalen[i]
    end
  end
    vertaalde_string
end

#Shift en de-shift letters

def nieuwe_letter(i, nummer)
  alfabet = ('a'..'z').to_a
  alfabet_hoog = ('A'..'Z').to_a

# index van letter krijgen
if alfabet.index i
  huidig_nummer = alfabet.index i
else
  huidig_nummer = alfabet_hoog.index i
end

# Index van vertaalde letter krijgen
if nummer > 0
  nieuw_nummer = huidig_nummer + nummer
if nieuw_nummer > 26
  nieuw_nummer = nieuw_nummer - 26
end
end

# Gebruik index voor letters (vertaald)
if alfabet.index
  new_let = alfabet[nieuw_nummer]
else
  new_let = alfabet_hoog[nieuw_nummer]
end

end

#Vraag om te vertalen string

puts "Welke string moet ik encrypten?"
string = gets.chomp.capitalize
puts "En hoeveel plaatsen?"
plaatsen = gets.chomp

#String vertalen en op scherm laten zien

vertaald = caesar(string, 5)
puts vertaald