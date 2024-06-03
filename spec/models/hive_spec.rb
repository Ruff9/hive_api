require 'rails_helper'

RSpec.describe Hive, type: :model do
  it { should validate_length_of(:name).is_at_least(6) }
end
