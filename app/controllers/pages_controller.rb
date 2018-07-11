class PagesController < ApplicationController
  %w(home about contact store pathgather kustomer rope lettering illustrations personal).each do |meth|
    define_method(meth) do
      @page = meth
    end
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
        name: 'Kustomer',
        description: 'Kustomer is an innovative B2B, SaaS, CRM platform. While I was here I acted as a product manager, UX designer and UI designer.',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/kustomer-iphone-1.gif',
        path: kustomer_path
      },
      {
        name: 'Rope',
        description: 'Lorem Ipsum',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/rope-1.png',
        path: rope_path
      }
    ]

    @second_row_items = [
      {
        name: 'Personal Work',
        description: 'Lorem Ipsum',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/personal-1.png',
        path: personal_path
      },
      {
        name: 'Lettering',
        description: 'Lorem Ipsum',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/lettering-1.png',
        path: lettering_path
      },
      {
        name: 'Illustrations',
        description: 'Lorem Ipsum',
        img: 'https://iris-site.nyc3.cdn.digitaloceanspaces.com/illo-1.png',
        path: illustrations_path
      },
    ]
  end
end
