require 'rails_helper'

feature 'User sees owns todos' do 
	scenario 'does not see others' do
		Todo.create!(title: 'Buy milk', email: 'someone_else@example.com')

		sign_in_as 'user@example.com'

		expect(page).to_not display_todo "Buy gift for FD"
	end
end