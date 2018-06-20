class PagesController < ApplicationController
  %w(home about work contact store).each do |meth|
    define_method(meth) do
      @page = meth
    end
  end
end
