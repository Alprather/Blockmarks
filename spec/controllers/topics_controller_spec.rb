require 'rails_helper'

RSpec.describe TopicsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET new" do
     it "returns http success" do
       get :new
       expect(response).to have_http_status(:success)
     end

     it "renders the #new view" do
       get :new
       expect(response).to render_template :new
     end

     it "instantiates @topic" do
       get :new
       expect(assigns(:topic)).not_to be_nil
     end
   end

   describe "topic create" do

     it "increases the number of topic by 1" do
       expect{topic :create, topic: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Topic,:count).by(1)
     end

     it "assigns the new topic to @topic" do
       topic :create, topic: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
       expect(assigns(:topic)).to eq Topic.last
     end

     it "redirects to the new topic" do
       topic :create, topic: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
       expect(response).to redirect_to Topic.last
     end
   end
end
