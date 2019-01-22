# require 'rails_helper'

# RSpec.describe User, type: :model do

#     before do
#     @user1 = User.create!({
#       first_name: 'Shrek',
#       last_name: 'Is Life',
#       email: 'shrek@shrek.shrek',
#       password: 'no_diggity',
#       password_confirmation: 'no_diggity'
#     })
#     end

#   describe 'validations' do
#     context 'on a new user' do
#       it 'should be invalid if the password field is empty' do
#         @user1.password = nil
#         expect(@user1).to_not be_valid
#         expect(@user1.errors.full_messages).to include('Password can\'t be blank')
#       end

#       it 'should be valid if the password field is not empty' do
#         expect(@user1).to be_valid
#         # expect(@user.errors.full_messages).to include('Password can\'t be blank')
#       end

#       it 'should be invalid if the first name field is empty' do
#         @user1.first_name = nil
#         expect(@user1).to_not be_valid
#         # expect(@user.errors.full_messages).to include('Password can\'t be blank')
#       end

#       it 'should be invalid if the last name field is empty' do
#         @user1.last_name = nil
#         expect(@user1).to_not be_valid
#         # expect(@user.errors.full_messages).to include('Password can\'t be blank')
#       end
#     end

#     context 'general cases' do
#       it 'should be invalid if the password length is less than 6 chars but password confirmation still matches' do
#         @user1.password = '1234'
#         @user1.password_confirmation = '1234'
#         expect(@user1).to_not be_valid
#         expect(@user1.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
#       end

#       it 'should be invalid if the password confirmation doesn\'t match' do
#         @user1.password = '123456'
#         @user1.password_confirmation = 'lit'
#         expect(@user1).to_not be_valid
#         expect(@user1.errors.full_messages).to include('Password confirmation doesn\'t match Password')
#       end

#       it 'should be invalid if the email is blank' do
#         @user1.email = nil
#         expect(@user1).to_not be_valid
#         expect(@user1.errors.full_messages).to include('Email can\'t be blank')
#       end

#     end


#   end
# end
