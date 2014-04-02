require 'spec_helper'

describe User do
  context 'rails validations and constraints' do
  	let(:user) { User.new }

  	before(:each) do
		  user.valid?
  	end

  	it 'should have errors when validating' do
  	 	expect(user.errors).to include :firstname
  	 	expect(user.errors).to include :lastname
  	 	expect(user.errors).to include :email
  	 	expect(user.errors).to include :password
  	 	expect(user.errors).to include :password_confirmation
  	 end
  end

end
