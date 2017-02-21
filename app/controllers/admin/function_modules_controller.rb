class Admin::FunctionModulesController < AdminController
  def index
    @function_modules = FunctionModule.all
  end

  def update
    @function_module = FunctionModule.find(params[:id])
    p params
    @function_module.update!(function_module_params)
    @function_modules = FunctionModule.all 
    respond_to do |f|
      f.js
    end
  end

  private
  def function_module_params
    params.require(:function_module).permit(:name, :is_display)
  end
end
