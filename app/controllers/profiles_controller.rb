class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update show]
  before_action :set_profile, only: %i[edit update]

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/1/edit
  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to @user, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_profile
    @profile = @user.profile
  end

  def profile_params
    params.require(:profile).permit(:introduction, :sex)
  end
end
