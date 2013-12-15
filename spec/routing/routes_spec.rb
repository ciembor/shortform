require 'spec_helper'

describe 'routing to the homepage' do
  it 'routes / to homepage#index' do
    expect(get: '/').to route_to(
      controller: 'homepage',
      action: 'index'
    )
  end
end