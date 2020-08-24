require "reform"

module User::Contract
  class Form < Reform::Form
    property :name
    property :email

    validates :name,:email, presence: true
  end
end