module SalesForceLids #:nodoc:
  module Routing #:nodoc:
    module MapperExtensions
      def sales
        @set.add_route("/salesforcelids", {:controller => "lids_controller", :action => "index"})
      end
    end
  end
end

ActionController::Routing::RouteSet::Mapper.send :include, SalesForceLids::Routing::MapperExtensions