class ExpensesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @expense = @event.expenses.build(params[:expense])

    respond_to do |format|
      if @expense.save
        flash[:notice] = 'Expense was successfully created.'
        format.html { redirect_to @event }
		format.js # renders create.js.rjs
      else
        flash[:error] = @expense.errors.full_messages.to_sentence
        format.html { redirect_to @event }
		format.js do
          render :update do |page| 
		    page.redirect_to @event
		  end
        end
      end
    end
  end
  def destroy
    @event   = Event.find(params[:event_id])
    @expense = @event.expenses.find(params[:id])    
  
    @expense.destroy

    respond_to do |format|
      flash[:notice] = 'Expense was successfully deleted.'
      format.html { redirect_to @event }
      format.js # renders destroy.js.rjs
    end
  end

end
