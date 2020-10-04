class RequestedBookingPolicy < ApplicationPolicy
  class Scope < Scope
      def new?
        true
      end

    def resolve
      scope.all
    end
  end
end
