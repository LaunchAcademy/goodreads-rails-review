require "rails_helper"

feature "when visiting the show page for a book" do
  let!(:name_of_the_wind) { Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", isbn: "5555555555555") }

  scenario "user clicks the link to a book and sees book details" do
    visit '/'
    click_link 'Name of the Wind'
    expect(page).to have_content(name_of_the_wind.title)
    expect(page).to have_content(name_of_the_wind.author)
    expect(page).to have_content(name_of_the_wind.isbn)
  end
end
