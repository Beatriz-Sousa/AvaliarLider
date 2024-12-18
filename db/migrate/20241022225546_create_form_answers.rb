class CreateFormAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :form_answers do |t|
      t.references :form, null: false, foreign_key: true
      t.references :question_user, null: false, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
