class SiteBuilder < Bridgetown::Builder
  # write builders which subclass SiteBuilder in plugins/builder
end

require "action_dispatch"
require "rails/engine"
require "primer/view_components/engine"