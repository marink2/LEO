class PostController < ApplicationController
    ## Methods for posts

    ## Lists all posts from the 'posts' db
    def list
        @posts = Post.all
    end
    
    ## Lists only on post from 'posts' db
    def show
        @post = Post.find(params[:id])
    end
    
    ## Creates new post and a corresponding subject
    def new
        @post = Post.new
        @subjects = Subject.all
    end
    
    ## Adds inputs to 'posts' db
    def create
        @post = Post.new(post_params)
	
        if @post.save
            redirect_to :action => 'studentpage/index'
        else
            @subjects = Subject.all
            render :action => 'new'
        end
    end
    
    ## Edit post (for tutor feature)
    def edit
        @post = Post.find(params[:id])
        @subjects = Subject.all
    end
    
    ## Takes in parameters to edit post (for tutor feature)
    def update
        @post = Post.find(params[:id])
	
        if @post.update_attributes(post_param)
            redirect_to :action => 'show', :id => @post
        else
            @subjects = Subject.all
            render :action => 'edit'
        end
    end

    ## Takes in input parameters
    def post_params
        params.require(:posts).permit(:title, :entry, :subject, :post_id)
    end
    
    ## Delete post from 'posts' db (for tutor feature)
    def delete
        Post.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    ## Display subject from 'subjects' db (for subjects page)
    def show_subjects
        @subject = Subject.find(params[:id])
     end

end
