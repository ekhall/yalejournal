module Features
  module SessionHelpers
    def sign_in_with(email, password)
      visit signin_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Sign In'
    end

    def sign_in_user
      user = FactoryGirl.create(:user)
      visit signin_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'
    end
  end
end

