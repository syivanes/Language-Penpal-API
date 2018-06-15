class LanguagesController < ApplicationController

  def destroy
    if @language.proficiencies == 0 
      @language.destroy
    end
  end
end