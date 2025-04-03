def beef_up_sessions_new(file_path)
  prepend_to_file file_path, <<1>>

  gsub_file file_path, <<2>>, <<3>>

  append_to_file file_path, "</div>\n"
end

def add_form_builder_views_to_tailwind_config(file_path)
  gsub_file file_path, 
    /content: \[(.*?)\s*\]/m, "content: [\\1,\n    './app/lib/form_builders/**/*.rb'\n  ]"
end

def create_tailwind_authentication_form_builder(directory, file_name)
  empty_directory directory

  create_file "#{directory}/#{file_name}", <<4>>
end

beef_up_sessions_new('app/views/sessions/new.html.erb')
add_form_builder_views_to_tailwind_config('tailwind.config.js')
create_tailwind_authentication_form_builder('app/form_builders', 'tailwind_authentication.rb')