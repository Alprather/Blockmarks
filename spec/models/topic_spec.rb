require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:topic) { build(:topic)}

   describe "attributes" do
     it "responds to title" do
       expect(topic).to respond_to(:title)
     end
   end
end
