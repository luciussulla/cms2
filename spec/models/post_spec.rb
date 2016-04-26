require 'rails_helper'

RSpec.describe Post, type: :model do
    
    before do 
        @category = FactoryGirl.create(:category)
    end 
    
    it 'has a valid category' do 
        expect(FactoryGirl.build(:post)).to be_valid
    end 

    
    it 'is valid with category' do 
        expect do 
            FactoryGirl.create(:post, category: @category)
        end.to change(Post, :count).by(1)
    end 
    
    it 'is invalid withtout a category' do 
        expect(FactoryGirl.build(:post, category:nil)).not_to be_valid
    end 
    

   # it 'is valid with category' do 
   #     @category = FactoryGirl
   # end
    
    #validates :name, presence: true
    #validates: name, uniqueness: true 
    #rspec spec # path 
end
