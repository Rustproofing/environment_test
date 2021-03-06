# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Timothy'
    fill_in 'Price', with: '25.32'
    select "1950", from: "book[publisheddate(1i)]"
    select "January", from: "book[publisheddate(2i)]"
    select "1", from: "book[publisheddate(3i)]"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Timothy'
    fill_in 'Price', with: '25.32'
    select "1950", from: "book[publisheddate(1i)]"
    select "January", from: "book[publisheddate(2i)]"
    select "1", from: "book[publisheddate(3i)]"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Timothy')
  end
end
RSpec.describe 'Creating a book with price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Timothy'
    fill_in 'Price', with: '25.32'
    select "1950", from: "book[publisheddate(1i)]"
    select "January", from: "book[publisheddate(2i)]"
    select "1", from: "book[publisheddate(3i)]"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('25.32')
  end
end
RSpec.describe 'Creating a book with date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Timothy'
    fill_in 'Price', with: '25.32'
    select "1950", from: "book[publisheddate(1i)]"
    select "January", from: "book[publisheddate(2i)]"
    select "1", from: "book[publisheddate(3i)]"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1950-01-01')
  end
end
