class FavoritesController < ApplicationController
  def index
    @favorite_properties = current_user.favorite_properties
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.property_id = params[:property_id]

    if favorite.save
      redirect_to properties_path, success: 'お気に入りに登録しました'
    else
      redirect_to properties_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
  
  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, property_id: params[:property_id])
    favorite.destroy if favorite.present?
    if favorite.destroyed?
      redirect_to properties_path, success: 'お気に入りを解除しました'
    else
      redirect_to properties_path, danger: 'お気に入り解除に失敗しました'
    end
  end
end