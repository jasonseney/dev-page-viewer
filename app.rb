get '/' do
  markdown File.read('README.md'), :layout_engine => :erb
end

get '/:sitename/:layout/:page' do
  erb params[:page].to_sym, :views => settings.root + '/views/'+ params[:sitename], :layout => params[:layout].to_sym
end
