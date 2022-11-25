require 'rails_helper'

RSpec.describe 'Restricted', type: :request do
  describe 'GET /restricted' do
    before do
      get restricted_url
    end
    
    it 'returns status code 302' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /restricted with authentication' do
    let(:user) { FactoryBot.create(:user) }
    before do
      login_as(user, :scope => :user)
      get restricted_url
    end
    
    it 'returns status code 302' do
      expect(response).to have_http_status(:ok)
    end
  end
end