class Task < ApplicationRecord
<<<<<<< HEAD
=======
    validates :content, presence: true, length: { maximum: 10 }
    validates :status, presence: true, length: { maximum: 10 }
>>>>>>> origin/master
end
