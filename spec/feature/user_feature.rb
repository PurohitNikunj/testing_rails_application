require 'rails_helper' 
feature 'User signs in' do
    given!(:user) { user = User.create(email:"d@d.com", password:"555555", password_confirmation:"555555") }
    
    scenario 'with valid credentials in users ' do
    visit "/users/sign_in"
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    check 'Remember me'
    click_button 'Log in'
    expect(page).to have_content "Signed in successfully."
    end
end
