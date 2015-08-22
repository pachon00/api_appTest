require 'rails_helper'

RSpec.describe GroupsController, type: :controller do

	describe 'GET #index' do
		before(:each) do
			3.times { FactoryGirl.create :group}
			get :index
		end

		it 'renders a groups array' do
			expect(json_response[:groups]).to have(3).items
		end

	end

	describe 'POST #create' do

		context 'When the record is valid' do

			before(:each) do
				post :create, group: FactoryGirl.attributes_for(:group)
			end

			it 'renders a group resources created by the server' do
				expect(json_response[:group]).to have_key(:id)
			end

			it { should respond_with 201 }

		end
	end	

	describe 'PUT/PATCH #update' do

		before(:each) do
			@group = FactoryGirl.create :group
		end

		it "updates the group 'name' to 'Vegetarian'" do
			put :update, { id: @group.id, group: {name: "Vegetarian"}}
			expect(json_response[:group][:name]).to eq "Vegetarian"
		end

	end 

	describe 'DELETE #destroy' do

		before(:each) do
			group = FactoryGirl.create :group
			delete :destroy, id: group.id
		end

		it {should respond_with 204 }

	end 

end

