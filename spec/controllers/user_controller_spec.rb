
require 'rails_helper'
 describe UsersController, type: :controller do
   let(:user1) { User.create!(email: "user1@test.de", password: "testtest") }
   let(:user2) { User.create!(email: "user2@test.de", password: "testtest") }

   describe 'GET #show' do
     context 'when a user logs in' do
      before do
        sign_in :user1
      end

      it "loads correct user details" do
        get :show, params: { id: user1.id }
        expect(response).to be_ok
        expect(assigns(:user1)).to eq user
      end
      
    end
  end
end
