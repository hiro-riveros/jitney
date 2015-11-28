class RenameColumnTypeUserProblems < ActiveRecord::Migration
  def change
  	rename_column :user_problems, :type, :type_of_problem

  	change_column :user_problems, :type_of_problem, :string
  end
end
