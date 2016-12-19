#orm的学习
##migration
新增
```ruby
  def change
    create_table :mc_log_files do |t|
      t.string :name
      t.string :sn
      t.string :phone
      t.timestamps null: false
    end
  end
```
修改

- add_column :tables, :columns, :type
- remove_column :tables, :columns, :type
- change_column :tables, :columns, :type
- rename_table (:old_name, :new_name)
- add_index :tables, [:column1, :column2]

