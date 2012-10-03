# encoding: utf-8
class Admin::BaseController < InheritedResources::Base
  respond_to :html, :js

  helper Qadmin::ApplicationHelper

  protected

  def collection
    get_collection_ivar || set_collection_ivar(decorate_resource_or_collection(end_of_association_chain.scoped))
  end

  def resource
    get_resource_ivar || set_resource_ivar(decorate_resource_or_collection(super))
  end

  private

  def decorate_resource_or_collection(item_or_items)
    (resource_class.name + "Decorator").constantize.decorate(item_or_items)
  rescue NameError
    item_or_items
  end

end
