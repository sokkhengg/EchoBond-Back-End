class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      # t.string :slug
      t.string :image_url

      t.timestamps
    end
  end
end
