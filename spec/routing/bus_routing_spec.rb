require 'rails_helper'

RSpec.describe 'routing to buses', type: :routing do
  it 'routes / to buses#index' do
    expect(get: '/').to route_to(
      controller: 'buses',
      action: 'index'
    )
  end

  it 'routes /buses/new to buses#new' do
    expect(get: '/buses/new').to route_to(
      controller: 'buses',
      action: 'new'
    )
  end

  it 'routes /buses/id/ with delete method to buses#destroy' do
    expect(delete: '/buses/1/').to route_to(
      controller: 'buses',
      action: 'destroy',
      id: '1'
    )
  end
end
