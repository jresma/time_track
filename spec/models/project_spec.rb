require 'spec_helper'

describe Project do
  let(:income){ Project.new}

  context 'on rails validations and constraints' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
    it {should ensure_length_of(:description).is_at_least(5) }
  end
end
