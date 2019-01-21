class PagesController < ApplicationController
  %w(home about contact pathgather kustomer rope lettering illustrations personal).each do |meth|
    define_method(meth) do
      @page = meth
    end
  end

  def work
    @page = 'work'
    @current_item = {
      description: 'Pathgather',
      img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/newpgcover1.png',
      path: pathgather_path
    }

    @first_row_items = [
      {
        description: 'Kustomer',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/kustomer-iphone-1.gif',
        path: kustomer_path
      },
      {
        description: 'Rope Type Foundry',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/rope-1.png',
        path: rope_path
      }
    ]

    @second_row_items = [
      {
        description: 'Personal Work',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/personal-1.png',
        path: personal_path
      },
      {
        description: 'Type & Lettering',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/lettering-1.png',
        path: lettering_path
      },
      {
        description: 'Illustrations',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/illo-1.png',
        path: illustrations_path
      },
    ]
  end
end
