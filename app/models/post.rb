class Post < ApplicationRecord
    validates :title, presence:true
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    validate :must_be_clickbaity

    

    def must_be_clickbaity
        unless Post.title.include? "Won't Believe"
            errors.add(:title, "validation error")
        end
    end
end
