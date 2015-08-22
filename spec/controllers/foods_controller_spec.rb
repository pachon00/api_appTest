require 'rails_helper'

RSpec.describe FoodsController, type: :controller do

	describe 'GET #index' do
		before(:each) do
			3.times { FactoryGirl.create :food}
			get :index
		end

		it 'renders a foods array' do
			expect(json_response[:foods]).to have(3).items
		end

	end

	describe 'POST #create' do

		context 'When the record is valid' do

			before(:each) do
				post :create, food: FactoryGirl.attributes_for(:food)
			end

			it 'renders a food resources created by the server' do
				expect(json_response[:food]).to have_key(:id)
			end

			it { should respond_with 201 }

		end
	end	

	describe 'PUT/PATCH #update' do

		before(:each) do
			@food = FactoryGirl.create :food
		end

		it "updates the food 'name' to 'Apple'" do
			put :update, { id: @food.id, food: {name: "Apple"}}
			expect(json_response[:food][:name]).to eq "Apple"
		end

	end 

	describe 'DELETE #destroy' do

		before(:each) do
			food = FactoryGirl.create :food
			delete :destroy, id: food.id
		end

		it {should respond_with 204 }

	end 

end
