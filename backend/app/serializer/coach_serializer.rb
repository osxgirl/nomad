class CoachSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :detail, :timezone, :weekday, :availableat, :availableuntil
end
