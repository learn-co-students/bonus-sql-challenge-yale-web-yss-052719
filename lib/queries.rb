# Write methods that return SQL queries for each part of the challeng here

def guest_with_most_appearances
  # write your query here!
  counts = Hash.new 0
  guests = Guest.all.map do |guest|
    guest.name
  end
  guests.each do |guest|
    counts[guest] += 1
  end
  sorted = counts.keys.sort_by do |key|
    counts[key]
  end.reverse
  sorted.first
end

def most_popular_profession(year)
  guests_year = Guest.all.select do |guest|
    guest.year == year
  end

  occupations = guests_year.map do |guest|
    guest.occupation.downcase
  end

  counts = Hash.new 0

  occupations.each do |occupation|
    counts[occupation] += 1
  end

  counts.keys.max_by do |key|
    counts[key]
  end
end

def most_popular_profession_overall
  occupations = Guest.all.map do |guest|
    guest.occupation.downcase
  end

  counts = Hash.new 0

  occupations.each do |occupation|
    counts[occupation] += 1
  end

  counts.keys.max_by do |key|
    counts[key]
  end
end

def guests_named_bill
  Guest.all.select do |guest|
    names = guest.name.split(" ")
    names[0] == "Bill" || names[1] == "Bill"
  end.size
end

def patrick_stewart_dates
  patrick_stewart = Guest.all.select do |guest|
    guest.name == "Patrick Stewart"
  end.map do |appearance|
    appearance.date
  end
end

def year_with_most_guests
  counts = Hash.new 0

  years = Guest.all.map do |guest|
    guest.year
  end

  years.each do |year|
    counts[year] += 1
  end

  counts.keys.max_by do |key|
    counts[key]
  end
end

def most_popular_group(year)
  guests_year = Guest.all.select do |guest|
    guest.year == year
  end

  categories = guests_year.map do |guest|
    guest.category
  end

  counts = Hash.new 0

  categories.each do |c|
    counts[c] += 1
  end

  counts.keys.max_by do |key|
    counts[key]
  end
end