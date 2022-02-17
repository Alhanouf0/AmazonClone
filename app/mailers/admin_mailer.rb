class AdminMailer < ApplicationMailer
    def new_item_user_mail()
        
        @user = params[:user]
        @item = params[:item]
        @admin = Admin.all
        
        
        mail(to:@admin.map{|u| [u.email]}, subject: 'daily updates')
    end
end
