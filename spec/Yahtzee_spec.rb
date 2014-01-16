require 'spec_helper'
require_relative '../Yahtzee'



describe "#YahtzeeRoll" do
	describe "#initialize" do

		yahtzee_test = YahtzeeRoll.new(1,1,1,1,1)

		it "scores rolls" do
			expect(yahtzee_test.roll).to eq [1,1,1,1,1]
		end
	end
end


