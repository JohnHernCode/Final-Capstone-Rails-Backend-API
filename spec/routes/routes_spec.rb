# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AutoLoginController, type: :controller do
  it { should route(:post, '/auto_login').to(action: :create) }
end

RSpec.describe SubjectsController, type: :controller do
  it { should route(:get, '/subjects').to(action: :index) }
  it { should route(:post, '/subjects').to(action: :create) }
  it { should route(:get, '/subjects/1').to(action: :show, id: 1) }
  it { should route(:put, '/subjects/1').to(action: :update, id: 1) }
  it { should route(:delete, '/subjects/1').to(action: :destroy, id: 1) }
end
