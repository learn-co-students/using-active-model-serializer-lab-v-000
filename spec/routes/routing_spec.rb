require 'rails_helper'

RSpec.describe "route specs", type: :routing do
  it 'should not have old data route' do
    expect(get: '/products/1/data').to_not be_routable
  end

end
