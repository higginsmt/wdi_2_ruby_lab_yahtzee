
class YahtzeeRoll

attr_accessor :roll, :score

	def initialize(v, w, x, y, z)
		@roll = [v, w, x, y, z]
		@v = v
		@w = w
		@x = x
		@y = y
		@z = z
	end

	def score(options = {})
		if options = [:ones]
			@roll.select!{ |a| a == 1 }
			@roll.count
		else
			return nil
		end




		# && (@v+@w+@x+@y+@z) <= 5
		# 	@roll.delete(1)
		# 	score = (5 - @roll.count)
		# 	return score
		# else
		# 	puts "no ones"



	end

end




