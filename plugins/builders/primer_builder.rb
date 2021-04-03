require "action_dispatch"
require "rails/engine"
require "primer/view_components/engine"

class PrimerBuilder < SiteBuilder
  def build
    unless site.config.loaded_primer
      primer_loader = Zeitwerk::Loader.new
      Primer::ViewComponents::Engine.config.autoload_once_paths.each do |path|
        primer_loader.push_dir path
      end
      primer_loader.setup
      Rails.application.config = Primer::ViewComponents::Engine.config

      site.config.loaded_primer = true
    end
  end
end
