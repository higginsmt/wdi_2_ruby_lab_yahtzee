
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
		elsif options = [:twos]
			@roll.select!{ |a| a == 2 }
			((@roll.count) * 2)
		else
			return nil
		end
	end
end



# elsif options = [:twos]
# 			@roll.delete(2)
# 			score = ((5 - @roll.count.length) * 2)
# 			return score
