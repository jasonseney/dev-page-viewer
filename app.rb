# Display the Readme when viewing the root
get '/' do
  markdown File.read('README.md'), :layout_engine => :erb, :layout => "bootstrap-layout".to_sym
end

get '/:layout/:page' do
  page = params[:page].to_sym
  layout = params[:layout].to_sym
  views_path = settings.root + '/views/'

  erb page, :views => views_path, :layout => layout
end
