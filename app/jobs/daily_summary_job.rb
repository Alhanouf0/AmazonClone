class DailySummaryJob < ApplicationJob
  queue_as :default

  def perform(*params)
    @user = User.where(created_at: DateAndTime.all_day)
    @item = Item.where(created_at: DateAndTime.all_day)

    AdminMailer.new_item_user_mail(user: @user, item: @item).deliver
    DailySummaryJob.set(wait: 1.day).perform_later(param)
  end
end
