require 'rails_helper'

feature 'User completed todo' do 
	scenario 'successfully' do
		sign_in

		create_todo("Buy gift for FD")

		click_on 'Mark complete'

		expect(page).to display_completed_todo "Buy gift for FD"
	end
end