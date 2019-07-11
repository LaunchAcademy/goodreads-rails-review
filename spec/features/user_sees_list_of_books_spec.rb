require "rails_helper"

feature "when visiting the index page" do
  let!(:book_1) { FactoryBot.create(:book) }
  let!(:book_2) { FactoryBot.create(:book) }
  let!(:book_3) { FactoryBot.create(:book) }
  let!(:book_4) { FactoryBot.create(:book) }

  scenario "user sees a list of books" do
    visit '/'

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(book_3.title)
  end
end
