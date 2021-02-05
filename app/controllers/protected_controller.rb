# frozen_string_literal: true

class ProtectedController < ApplicationController
  before_action :authenticate_user!
  def index
    # render json: current_user
    render json: 'Este controller é somente para usuários autenticados.'
  end
end
