require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'not valid without a name' do
    expect(Customer.new(name: nil)).not_to be_valid
  end
end
