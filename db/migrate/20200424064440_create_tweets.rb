class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :username
      t.string :handle
      t.string :photo

      t.integer :likes
      t.integer :retweets
      t.datetime :post_time

      t.string :filters

      t.timestamps
    end
  end
end
