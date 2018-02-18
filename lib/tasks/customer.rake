namespace :customer do
  desc "Generate Fake customer data"
  task fake_data: :environment do
    100.times {Customer.create name: Faker::Name.unique.name, address: Faker::Address.unique.full_address }
  end

end
