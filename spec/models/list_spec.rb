require 'rails_helper'

describe List do
  it { should validate_presence_of :name }
  it { should habv_many :chores }
end
