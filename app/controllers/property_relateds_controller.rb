class PropertyRelatedsController < ApplicationController
  before_action :set_property_related, only: [:show, :edit, :update, :destroy]
  layout "with_left_sidebar"
  load_and_authorize_resource


  # GET /property_relateds
  def index
    @property_relateds = PropertyRelated.all
  end

  # GET /property_relateds/1
  def show
  end

  # GET /property_relateds/new
  def new
    @property_related = PropertyRelated.new
  end

  # GET /property_relateds/1/edit
  def edit
  end

  # POST /property_relateds
  def create
    @property_related = PropertyRelated.new(property_related_params)

    if @property_related.save
      redirect_to @property_related, notice: t('action.created.successfully')
    else
      render :new
    end
  end

  # PATCH/PUT /property_relateds/1
  def update
    @property_related = PropertyRelated.find(params[:id])
    #binding.pry
    @property_related.updated_once = true
    if @property_related.update(property_related_params)
      if can? :edit, @property_related
        flash[:notice] = {:class =>'success', :body => t('action.updated.successfully')}
        redirect_to edit_property_related_path(@property_related)
      else
        flash[:notice] = {:class =>'success', :body => t('action.updated.once_successfully')}
        redirect_to property_related_path(@property_related)
      end
    else
      render :edit
    end
  end

  # DELETE /property_relateds/1
  def destroy
    @property_related.destroy
    redirect_to property_relateds_url, notice: t('action.destroyed.successfully')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_related
      @property_related = PropertyRelated.find(params[:id])
      @archive = @property_related.archive
    end

    # Only allow a trusted parameter "white list" through.
    def property_related_params
      params.require(:property_related).permit(:has_crime_record, :has_testament,
                                             loans_attributes: [:id, :_destroy, :start_day, :end_day, :notary_type, :description, :amount, :scan_file],
                                             house_purchases_attributes: [:id, :_destroy, :trade_day, :trade_type, :house_type, :house_address, :house_amount, :scan_file],
                                             deposits_attributes: [:id, :_destroy, :deposit_day, :receive_day, :amount, :scan_file]
      )
    end
end
