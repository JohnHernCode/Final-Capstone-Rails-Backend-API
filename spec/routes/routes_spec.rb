# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AutoLoginController, type: :controller do
  it { should route(:post, '/auto_login').to(action: :create) }
end

RSpec.describe ItemsController, type: :controller do
  it { should route(:get, '/items').to(action: :index) }
  it { should route(:post, '/items').to(action: :create) }
  it { should route(:get, '/items/1').to(action: :show, id: 1) }
  it { should route(:put, '/items/1').to(action: :update, id: 1) }
  it { should route(:delete, '/items/1').to(action: :destroy, id: 1) }
end
