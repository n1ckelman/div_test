class PokerTablesController < ApplicationController
  before_action :set_poker_table, only: [:show, :edit, :update, :destroy]

  # GET /poker_tables
  # GET /poker_tables.json
  def index
    @poker_tables = PokerTable.all
  end

  # GET /poker_tables/1
  # GET /poker_tables/1.json
  def show
  end

  # GET /poker_tables/new
  def new
    @poker_table = PokerTable.new
  end

  # GET /poker_tables/1/edit
  def edit
  end

  # POST /poker_tables
  # POST /poker_tables.json
  def create
    @poker_table = PokerTable.new(poker_table_params)

    respond_to do |format|
      if @poker_table.save
        format.html { redirect_to @poker_table, notice: 'Poker table was successfully created.' }
        format.json { render :show, status: :created, location: @poker_table }
      else
        format.html { render :new }
        format.json { render json: @poker_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poker_tables/1
  # PATCH/PUT /poker_tables/1.json
  def update
    respond_to do |format|
      if @poker_table.update(poker_table_params)
        format.html { redirect_to @poker_table, notice: 'Poker table was successfully updated.' }
        format.json { render :show, status: :ok, location: @poker_table }
      else
        format.html { render :edit }
        format.json { render json: @poker_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poker_tables/1
  # DELETE /poker_tables/1.json
  def destroy
    @poker_table.destroy
    respond_to do |format|
      format.html { redirect_to poker_tables_url, notice: 'Poker table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poker_table
      @poker_table = PokerTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poker_table_params
      params.require(:poker_table).permit(:name, :actual_time)
    end
end
