class RenameMobileNumberToModelYearInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :mobile_number, :model_year
  end
end
