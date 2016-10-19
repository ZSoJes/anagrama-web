class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |w|
        w.string :palabra
        w.string :canonical
    end
  end
end
