require 'rails_helper.rb'

feature"Blogger view an article" do
    scenario "blogger successfully navigates to the new article and edits" do
        visit signup_path
        fill_in "user_name", with: "Adam Hill"
        fill_in "user_email", with: "ahill113@uncc.edu"
        fill_in "user_password", with: "password"
        fill_in "user_password_confirmation", with: "password"
        click_button "Create User"
        visit welcome_index_path
        visit login_path
        fill_in "email", with: "ahill113@uncc.edu"
        fill_in "password", with: "password"
        click_button "Login"
        visit articles_path
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "article_title", with: "New Capybara Article"
        fill_in "article_text", with: "This is a new Capybara article"
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