class CreateChatLogs < ActiveRecord::Migration
  def change
    create_table :chat_logs do |t|
      t.references :user, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
