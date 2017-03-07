class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cards = Card.order(:id)
    # @user = User.new
  end
end
