defmodule Flightex do
  alias Flightex.Bookings.Agent, as: BookingAgent
  alias Flightex.Bookings.CreateOrUpdate, as: BookingCreateOrUpdate
  alias Flightex.Bookings.Report, as: BookingReport
  alias Flightex.Users.Agent, as: UserAgent

  def start_agents do
    UserAgent.start_link(%{})
    BookingAgent.start_link(%{})
  end

  defdelegate create_or_update_booking(params), to: BookingCreateOrUpdate, as: :call
  defdelegate generate_bookings_report(file_name), to: BookingReport, as: :generate
end
