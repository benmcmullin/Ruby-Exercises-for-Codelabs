class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :company
      t.string :salary
      t.string :location

      t.timestamps
    end
  end
end
