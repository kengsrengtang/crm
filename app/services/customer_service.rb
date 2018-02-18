class CustomerService
  class << self
    def search name
      Customer.where("name LIKE ?", "%#{name}%")
    end
  end
end
