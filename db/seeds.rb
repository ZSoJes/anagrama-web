# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
require 'csv'

CSV.read('words.csv').each do |w|
    canonica = w.join.downcase.split("").sort.join
    word_list = w.join.downcase
    Word.create(palabra: word_list, canonical: canonica)
end