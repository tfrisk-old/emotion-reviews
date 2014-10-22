class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :text
      t.references :product, index: true

      t.timestamps
    end
  end
end
