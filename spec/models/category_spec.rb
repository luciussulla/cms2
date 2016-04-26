require 'rails_helper'

RSpec.describe Category, type: :model do
  
    it 'has a valid factory' do 
        expect(FactoryGirl.build(:category)).to be_valid
    end 
    
    it 'is valid with name' do 
        expect{ FactoryGirl.create(:category) }.to change(Category,:count).by(1) # nawiasy do zmainy bazy danych 
    end 
    
    it 'is invalid without a name' do 
        expect(FactoryGirl.build(:category, name: '' )).not_to be_valid
    end   
    
    it 'it has unique name' do 
       FactoryGirl.create(:category, name: 'test')
       expect(FactoryGirl.build(:category, name: 'test')).not_to be_valid
    end
    
    it 'it is invalid without description' do 
        expect(FactoryGirl.build(:category, description: '')).not_to be_valid  
    end 

    #validates :name, presence: true
    #validates: name, uniqueness: true 
end
