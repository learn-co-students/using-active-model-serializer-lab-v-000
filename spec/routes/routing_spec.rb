require 'rails_helper'

RSpec.describe "route specs", type: :routing do
  it 'should not have old data route' do
    expect(get: '/products/1/data').to_not be_routable
  end

  # it 'should not have description route' do
  #   expect(get: '/products/1/description').to_not be_routable
  # end

  # it 'should not have inventory route' do
  #   expect(get: '/products/1/inventory').to_not be_routable
  # end
end
