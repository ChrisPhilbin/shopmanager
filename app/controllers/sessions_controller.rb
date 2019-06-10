    class SessionsController < ApplicationController
      def create
        @customer = Customer.find_or_create_by(email: auth['info']['email']) do |u|
    
          arr = auth['info']['name'].split(" ")
          u.firstname = arr[0]
          u.lastname = arr[1]
          u.email = auth['info']['email']
          # u.image = auth['info']['image']
        end
     
        session[:customer_id] = @customer.id
        # session[:current_customer] = Customer.find(session[:customer_id])
     
        redirect_to customer_cars_path(@customer.id)
      end
     
      private
     
      def auth
        request.env['omniauth.auth']
      end
    end