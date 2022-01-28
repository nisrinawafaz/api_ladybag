class LineItemsController < ApplicationController
include CurrentCart
  before_action :set_line_item, only: %i[ show edit update destroy ]

  # GET /line_items or /line_items.json
  def index
    @line_items = LineItem.all.order('created_at ASC')
    render json: @line_items
  end

  # GET /line_items/1 or /line_items/1.json
  def show
    @line_items = LineItem.find(params[:id])
    render json: @line_items
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items or /line_items.json
  def create
    user_id = params[:user_id]
    set_cart(user_id)
    image = Image.find(params[:image_id])
    @line_item = @cart.add_product(image)

    if @line_item.save
      render json: {status: :created}
    else
      render json: {status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
    @line_items = LineItem.find(params[:id])
    if @line_item.update(line_item_params)
      render json: {status: :ok}
    else
      render json: { status: :unprocessable_entity }
    end
  end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @line_items = LineItem.find(params[:id])
    @line_item.destroy
    if @line_item.destroy
      render json: {status: :successfully}
    else
      render json: { status: error}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:quantity)
    end
end
