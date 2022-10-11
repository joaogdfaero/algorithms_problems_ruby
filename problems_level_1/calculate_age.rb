# https://www.geeksforgeeks.org/program-calculate-age/

# Given the current date and birth date, find the present age

#Input : Birth date = 07/09/1996 
        #Present date = 07/12/2017
#Output : Present Age = Years: 21  Months: 3  Days: 0


def calculate_age(birth,present)
    # Isolating years
    year_birth = birth[6..9].to_i
    year_present = present[6..9].to_i

    # Isolating months
    month_birt = birth[3..4].to_i
    month_present = present[3..4].to_i

    # Isolating days
    days_birt = birth[0..1].to_i
    days_present = present[0..1].to_i

    p "Present Age = Year: #{year_present-year_birth}, Months: #{month_present-month_birt} Days: #{days_present- days_birt}"
    

end

birth = "07/09/1996"
present = "07/12/2017"
calculate_age(birth,present)