json.array! @reservations do |reservation|

  json.title "Réservation"
  json.start reservation.date.iso8601

end
