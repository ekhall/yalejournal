class ProtocolsController < ApplicationController
  before_action :set_protocol, only: [:show, :edit, :update, :destroy]

  # GET /protocols
  # GET /protocols.json
  def index
    @protocols = Protocol.all
  end

  # GET /protocols/1
  # GET /protocols/1.json
  def show
    @protocol = Protocol.find(params[:id])
  end

  # GET /protocols/new
  def new
    @protocol = Protocol.new
  end

  # GET /protocols/1/edit
  def edit
  end

  # POST /protocols
  # POST /protocols.json
  def create
    @protocol = Protocol.new(protocol_params)

    respond_to do |format|
      if @protocol.save
        format.html { redirect_to @protocol, notice: 'Protocol was successfully created.' }
        format.json { render action: 'show', status: :created, location: @protocol }
      else
        format.html { render action: 'new' }
        format.json { render json: @protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protocols/1
  # PATCH/PUT /protocols/1.json
  def update
    respond_to do |format|
      if @protocol.update(protocol_params)
        format.html { redirect_to @protocol, notice: 'Protocol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protocols/1
  # DELETE /protocols/1.json
  def destroy
    @protocol.destroy
    respond_to do |format|
      format.html { redirect_to protocols_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protocol
      @protocol = Protocol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def protocol_params
      #params[:protocol]
      allow = %i(title objective included_patients excluded_patients definitions etiology 
                  natural_history risk_stratification outcomes
                  cp_ros cp_physical_exam cp_diagnostic_testing cp_genotyping
                  decision_tree_support medical_interventions surgical_considerations
                  adl_recommendations special_considerations plausible_outcomes references)
      params.require(:protocol).permit(allow)
    end
end
