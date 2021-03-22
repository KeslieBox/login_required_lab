class SessionsController < ApplicationController
    def new
    end

    def create
        #return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        #same as:
        if !params[:name] || params[:name].empty?
            redirect_to '/login' 
        else 
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end
end