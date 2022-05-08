ActiveAdmin.register Author do
  permit_params :first_name, :last_name

  show :title => proc {|author| "#{author.first_name} #{author.last_name}" } do
    panel "Author`s books" do
      author.books.each do |book|
        table_for book do
          column :title
        end
      end
    end
    active_admin_comments
  end

  filter :books
  filter :first_name

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Author" do
      f.input :first_name
      f.input :last_name
    end
    f.actions
  end
end
