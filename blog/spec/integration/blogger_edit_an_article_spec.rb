require 'rails_helper.rb'

feature"Blogger view an article" do
    scenario "blogger successfully navigates to the view article page from the listing articles page" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "Edit"
        expect(page).to have_content("Editing article")
        fill_in "Title", with: "New Capybara Article Edit"
        fill_in "Text", with: "This is a new edited Capybara article"
        click_button "Update Article"
        expect(page).to have_content("New Capybara Article Edit")
        expect(page).to have_content("This is a new edited Capybara article")
    end
end