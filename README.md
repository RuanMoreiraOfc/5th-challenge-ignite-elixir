<h1 align='center'>
5th Challenge Elixir
</h1>

This repo includes the resolution for 5th Challenge in Elixir Journey with [Rafael Camarda][btn-tutor].

## GOAL

```elixir
params = %{
  complete_date: ~N[2001-05-07 12:00:00],
  local_origin: "Brasilia",
  local_destination: "Bananeiras",
  user_id: "12345678900",
  id: UUID.uuid4()
}

Flightex.start_agents()
Flightex.create_or_update_booking(params)
Flightex.generate_bookings_report("file.csv")
```

```elixir
# file.csv
12345678900,Bananeiras,Brasilia,2001-05-07 12:00:00
```

<!-- VARIABLES -->

[btn-tutor]: https://github.com/rafaelcamarda
