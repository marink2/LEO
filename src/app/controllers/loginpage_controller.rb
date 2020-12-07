class LoginpageController < ApplicationController
    ## Tests the login feature
    before_action :authenticate_user!
    def index
    end
end
