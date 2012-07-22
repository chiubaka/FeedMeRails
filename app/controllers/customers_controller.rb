class CustomersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.find_all_by_restaurant_id_and_is_active(current_restaurant.id, true)

    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])
    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        @customer.is_flagged = false;
        @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.is_active = false
    @customer.save

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  def waiter
    facebook_id = params[:user_id]
    user = User.find_by_facebook_id(facebook_id)
    restaurant_id = params[:restaurant_id]
    @customer = Customer.find_by_user_id_and_restaurant_id_and_is_active(user.id, restaurant_id, true)
    @customer.is_flagged = true
    @customer.save

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
