def update

 @edit = Job.new(job_params)
     @edit.save
     redirect_to edit_path

end

def update
  @edit = Edit.find(params[:id])
  @edit.update post_params
  redirect_to post_path @edit
end

redirect_to 'http://www.google.co.jp/'
