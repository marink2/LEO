class StudentpageController < ApplicationController
    ## Asks user to sign in before accessing student's page
    before_action :authenticate_user!
    def index
    end
end