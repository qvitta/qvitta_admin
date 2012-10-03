module Qadmin
  module ApplicationHelper
    def admin_menu_link(resources)
      text = I18n.t("admin.menu.#{resources}", default: resources.to_s.titleize)
      menu_link(text, [:admin, resources], resources)
    end

    def menu_link(text, url, current)
      active = controller_name == current.to_s ? "active" : nil
      content_tag(:li, class: active) do
        link_to text, url
      end
    end

    def my_simple_form(resource, &block)
      form_url = resource.new_record? ? collection_url : resource_url(resource)
      simple_form_for(resource, { url: form_url,  html: { class: 'form-vertical'} }, &block)
    end

    def form_attributes_for(model)
      model.accessible_attributes.select {|attr| !attr.blank? }
    end
  end
end
