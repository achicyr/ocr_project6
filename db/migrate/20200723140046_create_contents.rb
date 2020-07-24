class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :component_type
      t.string :title
      t.string :content
      t.string :href
      t.string :src
      t.string :json

      t.timestamps
    end
  end
end
