ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :photo

  index do
    selectable_column
    id_column
    column :full_name
    column :email_address
    column :phone_number
    actions
  end

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :photo, as: :file
    end
    f.actions
  end
end