require 'rails_helper'

RSpec.describe DietsController, type: :controller do

  #antes de fazer os testes, ele roda isso
  before do
    @user = create(:user)
    @diet = create(:diet)
  end
  
  context 'not logged user' do
    describe "Get #index" do
      before {get :index}
      it {should respond_with(302)}
    end 
  end

  context 'as logged user' do

      it 'seeing show views' do

        sign_in @user

        get :show,params: {id: @diet.id}
        expect(response).to render_template(:show)
        
      end
  end

end
