class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, comment: 'Users table' do |t|
      t.string :name, comment: 'Name of user'
      t.string :email, index: { unique: true }, null: false, comment: 'Email of user'

      t.timestamps
    end

    # another way to add index to users and add the comment
    add_index :users, :name,
              name: 'index_users_on_name',
              unique: true,
              comment: 'Index userd to lookup user by name'
  end
end
