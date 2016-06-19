require 'rails_helper'

feature 'User creates todo' do 
	scenario 'successfully' do
		sign_in

		click_on 'Add a new Todo'

		fill_in 'Title', with: 'Buy gift for FD'
		click_button 'Submit'

		expect(page).to have_css '.todos li', text: 'Buy gift for FD'
	end
end