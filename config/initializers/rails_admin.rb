RailsAdmin.config do |config|

config.main_app_name = ["Casa de la Cutura", ""]
  ### Popular gems integration
  config.navigation_static_links = {
    'Face' => 'https://www.facebook.com/casadecultura.dolores?fref=ts'
  }

  config.navigation_static_label = "Lins Úteis"

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  config.parent_controller = 'ApplicationController'

  ## == Cancan ==
 config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.model Inscription do
  
  create do
    field  :client
    field  :inscription_date
    field  :discount
    field  :notes
    field  :course_quantities

    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end
  end

  edit do
    field  :client
    field  :inscription_date
    field  :discount
    field  :notes
    field  :course_quantities

    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end
  end
end

config.model Client do
  create do
    field  :name
    field  :document
    field  :email
    field  :phone
    field  :notes
    field  :status
    field  :address

    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end
  end

  edit do
    field  :name
    field  :document
    field  :email
    field  :phone
    field  :notes
    field  :status
    field  :address


    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end
  end

  list do
    field  :name
    field  :document
    field  :email
    field  :phone
    field  :notes
    field  :status
    field  :address

  end
end

config.model Discount do
  parent Course
end

config.model Inscription do

  parent User
  weight -2
end

config.model Comission do
  parent User
  weight -1
end

config.model Client do
  parent User
end

config.model CourseQuantity do
  visible false
end

config.model Address do
  visible false
end


config.model CourseQuantity do


  edit do
    field :course
    field :quantity

    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end
  end
end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
