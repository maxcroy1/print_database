class CreateTopicImages < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_images do |t|
      t.references :image, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
