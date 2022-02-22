# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
    def new_item_user_mail
    user = User.new(name: "Alhanouf", email: "aalmansour@mrsool.co")
    item = Item.new(name: "chair", price: 12.3)
    AdminMailer.with(user: user, item: item).new_item_user_mail
    end
end
