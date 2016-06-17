class Blog
  	def initialize
  	 @posts = []
  	end
  def publish_front_page
    	@posts.each do |bl|
        if bl.class.name == "Post"
        puts "#{bl.title}"
        puts "**************"
        puts "#{bl.text}"
        puts "----------------"
      else
        puts "****** #{bl.title} ******"
        puts "**************"
        puts "#{bl.text}"
        puts "----------------"
      end
    end
  end
  def add_item item
	@posts.push(item)
  end
end

class Post
	attr_reader :title, :date, :text
	def initialize (title, date, text)
		@title = title
		@date = date
    @text = text
	end
end

class Sponsored_post < Post
end


myBlog = Blog.new

post1 = Post.new("Title post 1", "1/01/1992","Text post 1")
post2 = Post.new("Title post 2", "28/01/1992","Text post 2")
post9 = Sponsored_post.new("Title post 2", "23/01/1992","Text post 2")
post3 = Post.new("Title post 3", "26/01/1992","Text post 3")
post4 = Post.new("Title post 4", "25/01/1992","Text post 4")
post5 = Post.new("Title post 5", "25/01/1992","Text post 5")
post6 = Post.new("Title post 6", "30/01/1992","Text post 6")
post7 = Post.new("Title post 7", "2/01/1992","Text post 7")
post8 = Post.new("Title post 8", "23/01/1992","Text post 8")


myBlog.add_item(post1)
myBlog.add_item(post2)
myBlog.add_item(post3)
myBlog.add_item(post4)
myBlog.add_item(post5)
myBlog.add_item(post6)
myBlog.add_item(post7)
myBlog.add_item(post8)
myBlog.add_item(post9)

myBlog.publish_front_page
