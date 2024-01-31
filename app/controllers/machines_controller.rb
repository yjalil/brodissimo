class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update, :destroy]

  def index
    @machines = Machine.all
  end

  def new
    @machine = Machine.new
  end

  def show
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.save
    redirect_to machines_path(@machine)
  end

  # update action
  def edit
  end

  def update
    @machine.update(machine_params)
    redirect_to machine_path(@machine)
  end

  # delete action
  def destroy
    @machine.destroy
    redirect_to machine_path, status: :see_other
  end

  private

  def set_machine
    @machine = Machine.find(params[:id])
  end

  def machine_params
    params.require(:machine).permit(:email)
  end
end
