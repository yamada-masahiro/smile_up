class AddPortraitDetailsToReporters < ActiveRecord::Migration[7.0]
  def change
    add_column :reporters, :portrait_source, :string
    add_column :reporters, :portrait_copyright, :string
  end
end
