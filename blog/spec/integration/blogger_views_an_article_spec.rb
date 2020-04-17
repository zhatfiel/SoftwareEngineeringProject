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
        click_link "Show"
        expect(page).to have_content("Comments")
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end
    
    scenario "blogger successfully navigates to the view article page from the listing articles page and adds a comment" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "Show"
        expect(page).to have_content("Comments")
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        fill_in "Commenter", with: "Adam"
        fill_in "Body", with: "This is a new comment"
        click_button "Create Comment"
        expect(page).to have_content("Adam")
        expect(page).to have_content("This is a new comment")
    end
end