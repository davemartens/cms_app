class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
	t.string "voornaam", :limit => 25
	t.string "achternaam", :limit => 50
	t.string "email", :default => "", :null => false
	t.string "paswoord", :limit => 40
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
