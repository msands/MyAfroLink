module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-danger alert-dimissable"> <button type="button" class="close" data-dismiss="alert">&times;</button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
