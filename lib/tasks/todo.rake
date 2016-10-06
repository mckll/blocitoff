namespace :todo do
  desc "Delete items older than 7 days"
  task delete_items: :environment do
    items = Item.where("created_at <= ?", Time.now - 7.days)
    p "Deleting #{items.count} items..."
    items.destroy_all
  end
end
