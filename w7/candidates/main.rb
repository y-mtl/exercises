# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

pp @candidates

# @candidates.each do |candidate|
#   #puts "#{candidate}"
#   pp candidate
#   puts experienced?(candidate)
# end
#
# puts find(5)

#pp qualified_candidates(@candidates)
#pp candidates_order(@candidates)
