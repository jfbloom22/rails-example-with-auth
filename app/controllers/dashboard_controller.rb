class DashboardController < ApplicationController
    before_action :require_user, only: [:index, :show]
    def show
    end
    def index
    end
end
