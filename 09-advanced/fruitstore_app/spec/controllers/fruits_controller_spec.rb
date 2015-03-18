require 'rails_helper'

RSpec.describe FruitsController, :type => :controller do
  describe 'GET to index' do
    before do
      3.times { |i| Fruit.create(:name => "Fruit number {i}") }
    end

    describe 'as HTML' do
      before do
        get :index
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should provide the fruits in an instance variable in reverse order" do
        expect(assigns(:fruits)).to be # Whatever, Hamlet
      end
    end
  end
end
