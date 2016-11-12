<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  respond_to :js

  before_action :authenticate_user!
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]

  authorize_actions_for <%= class_name %>

  authority_actions delete: 'delete'

  # GET <%= route_url %>
  def index
    set_<%= plural_table_name %>
  end

  # GET <%= route_url %>/1
  def show
  end

  # GET <%= route_url %>/new
  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
  end

  # GET <%= route_url %>/1/edit
  def edit
  end

  # POST <%= route_url %>
  def create
    authorize_action_for(<%= class_name %>)
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{singular_table_name}_params") %>
    @<%= orm_instance.save %>
    set_<%= plural_table_name %>
   end

  # PATCH/PUT <%= route_url %>/1
  def update
    authorize_action_for(@<%= singular_table_name %>)
    @<%= orm_instance.update("#{singular_table_name}_params") %>
    set_<%= plural_table_name %>
  end

  def delete
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:#{singular_table_name}_id]") %>
  end

  # DELETE <%= route_url %>/1
  def destroy
    authorize_action_for(@<%= singular_table_name %>)
    @<%= orm_instance.destroy %>
    set_<%= plural_table_name %>
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_<%= singular_table_name %>
      @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    end

    def set_<%= plural_table_name %>
      @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
    end

    # Only allow a trusted parameter "white list" through.
    def <%= "#{singular_table_name}_params" %>
  <%- if attributes_names.empty? -%>
      params[:<%= singular_table_name %>]
  <%- else -%>
      params.require(:<%= singular_table_name %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
  <%- end -%>
    end
end
<% end -%>