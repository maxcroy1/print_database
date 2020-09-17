class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.text :img_url
      t.text :dwnld_url
      t.string :title
      t.string :date
      t.text :citation

      t.timestamps
    end
  end
end
