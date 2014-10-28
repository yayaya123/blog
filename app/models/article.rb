class Article < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :body
    
    belongs_to :user
    has_and_belongs_to_many :categories

    has_many :comments
    
    def long_title
        "#{title}-#{place}"
    end

    def published?
    	published_at.present?
    end
    
end
