class UserMailer < ApplicationMailer

    def new_user_mail
        @user = params[:user]
        mail(to: @user.email, subject: 'new user created')
    end
end
