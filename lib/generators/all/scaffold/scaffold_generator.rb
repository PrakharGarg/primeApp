require 'rails/generators/erb/scaffold/scaffold_generator' # see http://stackoverflow.com/questions/16320882/rails-generate-both-html-and-js-views-with-scaffold

module All # :nodoc:
  module Generators # :nodoc:
    class ScaffoldGenerator < Erb::Generators::ScaffoldGenerator # :nodoc:
      puts "Source: #{__FILE__}\n"
      # include Rails::Generators::ResourceHelpers
      source_root File.expand_path(File.join('..', 'templates'), __FILE__)

      argument :attributes, type: :array, default: [], banner: "field:type field:type"

      def create_root_folder
        empty_directory File.join("app/views", controller_file_path)
      end

      def copy_view_files
        available_html_views.each do |view|
          template "#{view}.html.erb", File.join("app/views", controller_file_path, "#{view}.html.erb")
        end

        available_js_views.each do |view|
          template "#{view}.js.erb", File.join("app/views", controller_file_path, "#{view}.js.erb")
        end
      end

      protected

      def available_html_views
        %w(_delete _details _edit _form _index _new index show)
      end

      def available_js_views
        %w(_save create delete destroy edit new show update)
      end
    end
  end
end