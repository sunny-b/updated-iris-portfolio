class PagesController < ApplicationController
  %w(home about contact pathgather kustomer rope lettering illustrations personal).each do |meth|
    define_method(meth) do
      @page = meth
    end
  end

  def store
    @page = 'store'
    @store_items = [{
        product_name: 'Ampersand Escher',
        price: '25.00',
        product_description: '18x24 Black and White Screen Printed Abstract Ampersand Poster using Theo Italian Extra Bold.  Printed at Broken Press in Seattle.',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/store/store%201.png',
        path: 'https://www.etsy.com/listing/616650026/escher-ampersand?ref=listing-shop-header-0',
        description: 'Buy on Etsy',
        new_tab: true
      },
      {
        product_name: 'The Unseen Alphabet',
        price: '30.00',
        product_description: '18x24 Screen printed poster using glyphs not normally seen in latin alphabets set in a latin alphabet. Printed at Broken Press in Seattle.',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/store/store%202.png',
        path: 'https://www.etsy.com/listing/616650526/the-unseen-alphabet?ref=shop_home_active_1',
        description: 'Buy on Etsy',
        new_tab: true
      }
    ]
  end

  def work
    @page = 'work'
    @current_item = {
      description: 'See Pathgather Work',
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
