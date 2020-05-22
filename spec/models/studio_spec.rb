require 'rails_helper'

describe Movie, type: :model do

  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
  it { should have_many :movies }
end
end