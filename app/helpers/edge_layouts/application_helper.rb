module EdgeLayouts
  module ApplicationHelper

  	def pluralize_without_numbers(count, one, many)
      pluralize(count, one, many)[count.to_s.length + 1..pluralize(count, one, many).length]
    end

    def file_exists?(path)
      if (not path.blank?) and FileTest.exists?("#{::Rails.root.to_s}/#{path}")
        return true
      end
      false
    end

	def ajax_form?
	  if @ajax_form == true
	    return true
	  end 
	  return false
	end

    def remote?
      if (@remote == true)
        return true
      end 
      return false
    end

    def hide_buttons?
      if (not @hide_buttons.nil?) and (@hide_buttons == true)
        return true
      end 
      false
    end

    def submit_button_name
      if (@submit_button_name.blank?)
        return "Post"
      end
      @submit_button_name
    end

    def respond_with_remote_form template=nil
      respond_to do |format|
        format.html {
          if template.nil?
            render :layout => 'layouts/one_section_narrow'
          else
            render :layout => 'layouts/one_section_narrow', :template => template
          end
        }
        format.js {
          @hide_buttons = true
          @remote = true
          @ajax_form = true
          unless template.nil?
            render :template => template
         end
        }
      end
    end

    def display_all_error_messages(object, method)
      list_items = object.errors[method].map { |msg| msg }
      list_items.join(',').html_safe
    end

    def display_first_error_message(object, method)
      list_items = object.errors[method].map { |msg| msg }
      list_items.first.html_safe
    end

    def errors_for_field(object, field)
      html = String.new
      html << "<div id='#{object.class.name.underscore.downcase}_#{field}_errors' class='errors'>\n"
      unless object.errors.blank?
        html << "\t\t<ul>\n"
        object.errors[field].each do |error|
          html << "\t\t\t<li>#{error}</li>\n" 
        end
        html << "\t\t</ul>\n"
      end
      html << "\t</div>\n"
      return html.html_safe
    end

    def js_exists?(name)
      return true if file_exists? "app/assets/javascripts/#{name}.js" or 
        file_exists? "app/assets/javascripts/#{name}.js.coffee"
      false
    end

    def js_for_controller_exists?
      js_exists?(params[:controller].parameterize)
    end

    def js_for_action_exists?
      js_exists?("#{params[:controller].parameterize}_#{params[:action].parameterize}")
    end

    def url_to_hash url
      path_hash = Rails.application.routes.recognize_path url
      params = url.split('?')[1]
      unless (params.nil?)
        path_hash = path_hash.merge(Rack::Utils.parse_nested_query(params))
      end
      path_hash[:page] = path_hash["page"]
      return path_hash
    end
  end
end
