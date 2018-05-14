require_relative '../../app.rb'
require 'spec_helper'
require 'pg'

feature Chitter do

  feature 'Viewing all peeps' do
    scenario 'User is able to see all peeps' do
      visit '/'
      fill_in 'text2', with: 'This is my first peep'
      fill_in 'author', with: 'Alastair Edmonds'
      click_button 'Post_new_Peep'
      expect(page).to have_content "Alastair Edmonds:"
      expect(page).to have_content "This is my first peep"
    end
  end
end
