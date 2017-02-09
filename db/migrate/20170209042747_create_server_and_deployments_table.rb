class CreateServerAndDeploymentsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name, limit: 100, null: false
      t.string :domain, limit: 100, null: false
      t.timestamps
    end

    create_table :deployments do |t|
      t.string :branch_name, limit: 100, null: false
      t.integer :server_id, null: false
      t.string :branch_owner_id, limit: 100, null: false
      t.string :deployer_id, limit: 100, null: false

      t.string :tester_ids, array: true
      t.string :testing_status, limit: 100, null: false
      t.string :ticket_link, limit: 100, null: false

      t.string :comments, limit: 100, null: false
      t.string :commenter_id, limit: 100, null: false
      t.datetime :required_time

      t.timestamps null: false
    end
  end
end

