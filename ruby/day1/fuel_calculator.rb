# Part 1 - One liner
puts File.open("inputs.txt").readlines.map { | mass | mass.to_i / 3 - 2 }.sum

# Part 2
def fuel(mass)
  mass / 3 - 2
end

def real_fuel(mass)
  total_fuel_mass = 0
  fuel_subcalc = fuel mass
  until fuel_subcalc <= 0 do
    total_fuel_mass += fuel_subcalc
    fuel_subcalc = fuel fuel_subcalc
  end
  return total_fuel_mass
end

mass_by_module = File.open("inputs.txt").readlines.map { | mass | mass.to_i }
fuel_by_module = mass_by_module.map { | mass | real_fuel(mass) }
puts fuel_by_module.sum

