require 'rails_helper'
RSpec.describe CustomerService do 
  subject {CustomerService}

  let!(:c1){FactoryBot.create(:customer, name: 'foo')}
  let!(:c2){FactoryBot.create(:customer, name: 'bar')}

  describe '.search' do
    it 'return matched customers' do
      expect(subject.search('fo')[0].name).to eq c1.name
    end

    it 'return all customers when search string is empty' do
      expect(subject.search('').size).to eq 2
    end

    it "return empty array when search's string doesn't matched" do
      expect(subject.search('not matched').size).to eq 0
    end
  end
end
