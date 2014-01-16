require 'spec_helper'
require_relative '../Yahtzee'

describe "#YahtzeeRoll" do

	before(:each) do
		@yahtzee_test1 = YahtzeeRoll.new(1,1,1,1,1)
		@yahtzee_test2 = YahtzeeRoll.new(2,1,3,3,1)
		@yahtzee_test3 = YahtzeeRoll.new(2,2,2,3,1)
		@yahtzee_test4 = YahtzeeRoll.new(2,4,4,3,1)
		@yahtzee_test5 = YahtzeeRoll.new(2,4,5,5,1)
		@yahtzee_test6 = YahtzeeRoll.new(6,4,5,5,6)
	end

	describe "#initialize" do

		it "initializes a roll of 5 dice" do
			expect(@yahtzee_test1.roll).to eq [1,1,1,1,1]
		end
	end

	describe '#score' do
		it "scoress ones correctly" do
			expect(@yahtzee_test1.score(:ones)).to eq 5
			expect(@yahtzee_test2.score(:ones)).to eq 2
		end

		it "scoress twos correctly" do
			expect(@yahtzee_test2.score(:twos)).to eq 2
			expect(@yahtzee_test3.score(:twos)).to eq 6
		end

		# it "scoress threes correctly" do
		# 	expect(@yahtzee_test2.score(:threes)).to eq 6
		# 	expect(@yahtzee_test3.score(:threes)).to eq 3
		# end

		# it "scoress fours correctly" do
		# 	expect(@yahtzee_test2.score(:fours)).to eq 0
		# 	expect(@yahtzee_test4.score(:fours)).to eq 8
		# end

		# it "scoress fives correctly" do
		# 	expect(@yahtzee_test1.score(:fives)).to eq 0
		# 	expect(@yahtzee_test5.score(:fives)).to eq 10
		# end

		# it "scoress sixes correctly" do
		# 	expect(@yahtzee_test1.score(:sixes)).to eq 0
		# 	expect(@yahtzee_test6.score(:sixes)).to eq 12
		# end

	end
end


