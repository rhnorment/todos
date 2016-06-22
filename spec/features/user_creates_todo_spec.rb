require 'rails_helper'

feature 'User creates todo' do 
	scenario 'successfully' do
		sign_in

		create_todo('Buy gift for FD')			

		expect(page).to display_todo "Buy gift for FD"
	end
end