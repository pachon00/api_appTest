require 'rails_helper'

RSpec.describe DietsController, type: :controller do

	describe 'GET #index' do
		before(:each) do
			3.times { FactoryGirl.create :diet}
			get :index
		end

		it 'renders a diets array' do
			expect(json_response[:diets]).to have(3).items
		end
	end

	describe 'POST #create' do

		context 'When the record is valid' do
			before(:each) do
				post :create, diet: FactoryGirl.attributes_for(:diet)
			end

			it 'renders a diet resources created by the server' do
				expect(json_response[:diet]).to have_key(:id)
		end

			it { should respond_with 201 }

		end
	end	

	describe 'PUT/PATCH #update' do

		before(:each) do
			@diet = FactoryGirl.create :diet
		end

		it "updates the diet 'name' to 'Apple'" do
			put :update, { id: @diet.id, diet: {name: "Apple"}}
			expect(json_response[:diet][:name]).to eq "Apple"
		end

	end 

	describe 'DELETE #destroy' do

		before(:each) do
			diet = FactoryGirl.create :diet
			delete :destroy, id: diet.id
		end

		it {should respond_with 204 }

	end 

end
