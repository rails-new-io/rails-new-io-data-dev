  prepend_to_file file_path, <<~SNIPPET_1
  <div class="flex flex-col items-center justify-center h-full">
  <h1 class="bg-white py-px px-2 -mx-2 uppercase font-bold text-2xl">Sign in</h1>
SNIPPET_1


  gsub_file file_path, "<%= form_with url: session_path do |form| %>", "<%= form_with url: session_path, :builder => TailwindAuthentication do |form| %>"

  append_to_file file_path, "</div>\n"