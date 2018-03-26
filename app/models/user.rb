class User < ApplicationRecord
  # Getter
  def full_name
    [first_name, last_name].join(' ')
  end

  # Setter (get the values from input field and assign to particular fields)
  def full_name=(full_name_field)
    split = full_name_field.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end
end
