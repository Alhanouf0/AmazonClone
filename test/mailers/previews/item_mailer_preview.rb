# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview

    def new_item_mail
        user = User.new(name: "Alhanouf", email: "aalmansour@mrsool.co")
        item = Item.new(name: "chair", price: 12.3)
        ItemMailer.with(item: item).new_item_mail
        
    end
end
