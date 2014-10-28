class Comment < ActiveRecord::Base
	belongs_to :article

	def email_article_author
		puts "We will notify #{article.user.email} in chapter 9"
	end
end
