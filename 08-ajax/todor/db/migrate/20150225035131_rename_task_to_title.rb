class RenameTaskToTitle < ActiveRecord::Migration
  def change
    rename_column :tasks, :task, :title
  end
end
