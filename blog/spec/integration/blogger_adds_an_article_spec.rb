require 'rails_helper.rb'

feature"Blogger adds an article" do
    scenario "Blogger successfully navigates to the new articles page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing Article")
        click_link "New Article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
end