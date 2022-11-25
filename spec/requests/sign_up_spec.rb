require 'rails_helper'

RSpec.describe 'Sign Up', type: :request do
  describe 'User registration' do
    it 'returns status code 200' do
      post '/users.json', params: { user: { email: 'user@sample.com', password: '12341234', password_confirmation: '12341234' } }
      #   user_registration_url,
      puts response.inspect
      
      expect(response).to have_http_status(:success)
      expect(response).to be_successful


    end
  end
end