class BlogMailer < ApplicationMailer
  def report_mail(blog)
    @blog = blog
      mail to: User.find_by(id: blog.user_id).email, subject: "ブログの投稿を受け付けました"
  end
end
