require 'spec_helper'
require_relative '../Yahtzee'

describe "#YahtzeeRoll" do

	before(:each) do
		@yahtzee_test1 = YahtzeeRoll.new(1,1,1,1,1)
		@yahtzee_test2 = YahtzeeRoll.new(2,1,3,3,1)
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

		it "scoress ones correctly" do
			expect(@yahtzee_test1.score(:ones)).to eq 5
			expect(@yahtzee_test2.score(:ones)).to eq 2
		end
	end
end


