require 'rails_helper.rb'

feature"Blogger view an article" do
    scenario "blogger successfully destroyes the new article page from the listing articles page" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "Destroy"
        expect(page).to have_no_content("New Capybara Article")
        expect(page).to have_no_content("This is a new Capybara article")
    end
end