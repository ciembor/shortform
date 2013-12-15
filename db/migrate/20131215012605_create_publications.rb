class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :content

      t.timestamps
    end
  end
end
