class ApplicationController < ActionController::Base
    before_action :authenticate_registered!
    def home
        
    end
end
