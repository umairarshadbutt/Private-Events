require 'rails_helper'
RSpec.describe 'User', type: :feature do
  it 'It should create a new user' do
    visit new_user_path
    fill_in 'user_full_name', with: 'ali'
    fill_in 'user_username', with: 'ali'
    fill_in 'user_email', with: 'ali@email.com'
    find("input[type='submit']").click
    expect(page).to have_content(/Profile for ali Created successfully/i)
  end
  it 'It should NOT create a new user with imcomplete parameters' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Ken Obi'
    fill_in 'user_username', with: 'Ken'
    find("input[type='submit']").click
    expect(page).to have_content(/Something went wrong/i)
  end
  it 'It should log in successfully with existing username' do
    User.create(full_name: 'ali', username: 'ali', email: 'ali@email.com')
    visit login_path
    fill_in 'login_username', with: 'ali'
    find("input[type='submit']").click
    expect(page).to have_content(/You have logged in successfully/i)
  end
  it 'It should log user out successfully' do
    User.create(full_name: 'ali', username: 'ali', email: 'ali@email.com')
    visit login_path
    fill_in 'login_username', with: 'ali'
    find("input[type='submit']").click
    click_link('Log Out')
    expect(page).to have_content(/You have logged out successfully/i)
  end
end
