module ActionView
  module Helpers
    class FormBuilder
      def date_select(method, options = {}, html_options = {})
        existing_date = @object.send(method)
        formatted_date = existing_date.to_date.strftime("%F") if existing_date.present?
        @template.content_tag(:div, class: 'input-group') do
          @template.content_tag(:span, @template.content_tag(:span, '', class: 'glyphicon glyphicon-calendar'), class: 'input-group-addon') +
          text_field(method, value: formatted_date, class: 'form-control datepicker', 'data-date-format': 'YYYY-MM-DD')
        end
      end
    end
  end
end
