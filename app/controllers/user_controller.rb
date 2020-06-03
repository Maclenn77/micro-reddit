# frozen_string_literal: true

class UsersController < ApplicationController
  require UsersHelper
  # before_action :set_author, only: %i[show edit update destroy]
  # before_action :zero_authors_or_authenticated, only: %i[new create]
  # before_action :require_login, except: %i[new create]

  # def zero_authors_or_authenticated
  #   unless Author.count == 0 || current_user
  #     redirect_to root_path
  #     false
  #   end
  # end


  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User account was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User account was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to authors_url, notice: 'User account was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end
