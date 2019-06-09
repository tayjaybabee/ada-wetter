module Wetter
  class ApplicationWindow < Gtk::ApplicationWindow
    # Register the class in the GLib world
    type_register

    class << self
      def init
        # Set the template from the resources binary
        set_template resource: '/tech/inspyre/wetter/ui/application_window.ui'

        bind_template_child 'add_new_item_button'
        bind_template_child 'Wetter_items_list_box'
      end
    end

    def initialize(application)
      super application: application

      set_title 'GTK+ Simple Wetter'

      add_new_item_button.signal_connect 'clicked' do |button|
        new_item_window = NewItemWindow.new(application, Wetter::Item.new(user_data_path: application.user_data_path))
        new_item_window.present
      end

      load_Wetter_items
    end

    def load_Wetter_items
      Wetter_items_list_box.children.each { |child| Wetter_items_list_box.remove child }

      json_files = Dir[File.join(File.expand_path(application.user_data_path), '*.json')]
      items = json_files.map{ |filename| Wetter::Item.new(filename: filename) }

      items.each do |item|
        Wetter_items_list_box.add Wetter::ItemListBoxRow.new(item)
      end
    end
  end
end
