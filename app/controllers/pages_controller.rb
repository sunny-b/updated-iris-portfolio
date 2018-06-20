class PagesController < ApplicationController
  %w(home about work contact store pathgather kustomer rope lettering Illustrations personal).each do |meth|
    define_method(meth) do
      @page = meth
    end
  end
end
