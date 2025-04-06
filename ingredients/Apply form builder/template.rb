prepend_to_file 'app/views/sessions/new.html.erb', <<~SNIPPET_1
  <div class="flex flex-col items-center justify-center h-full">
  <h1 class="bg-white mt-10 py-px px-2 -mx-2 uppercase font-bold text-2xl">Sign in</h1>
SNIPPET_1


gsub_file 'app/views/sessions/new.html.erb', "<%= form_with url: session_path do |form| %>", "<%= form_with url: session_path, :builder => TailwindAuthentication do |form| %>"

append_to_file 'app/views/sessions/new.html.erb', <<~SNIPPET_4
  <div class="text-sm text-gray-600 flex items-center gap-2">
    <%= link_to "Forgot your password?", new_password_path %>
  </div>
</div>
SNIPPET_4
