require 'rails_helper'

describe '404 page' do
  specify 'display title' do
    visit '/404.html'
    expect(page).to have_css('h1', text: "The page you were looking for doesn't exist.")
  end
end
