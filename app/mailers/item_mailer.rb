class ItemMailer < ApplicationMailer

    def new_item_mail
        @item = params[:item]
        @user = User.all
        
        mail(to:@user.map{|u| [u.email]}, subject: 'new item added')
    end
end
