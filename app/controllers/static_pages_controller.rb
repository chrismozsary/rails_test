class StaticPagesController < ApplicationController
	def welcome
		@math = 10 * 10
		@last_user_name = User.last.name
		@last_user_email = User.last.email

		@new_user = User.new

	end

def create

	puts "*** *** *** *** *** ***"
	puts params[:user]
	puts "*** *** *** *** *** ***"

@new_user= User.new(params[:user])

if @new_user.save
	flash[:success] = "welcome home, young banana."
	redirect_to root_url
else
	flash[:error] = "clearly you fail at the internet."
	redirect_to root_url
end
end	

end

