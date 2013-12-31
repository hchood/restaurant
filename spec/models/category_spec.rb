require 'spec_helper'

describe Category do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :menu_items }
  end
end
