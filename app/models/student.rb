class Student < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
