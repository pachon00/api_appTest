require 'rails_helper'

RSpec.describe Group, type: :model do
 
 context "attributes" do
  it { is_expected.to respond_to(:name)}
  it { is_expected.to respond_to(:day)}
  it { is_expected.to respond_to(:time)}
end

context "validations" do
  it { is_expected.to validate_presence_of(:name)}
  it { is_expected.to validate_presence_of(:day)}
  it { is_expected.to validate_presence_of(:time)}
end


end
