# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id) #find method can be used here.
  # Your code Here
  @candidates.each do |candidate|
  if candidate[:id] == id
    return "ID found: #{candidate[:id]}"
  else
    return nil
  end
  end
end

def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    true
    #puts "TRUE"
  else
    false
  end
end

def qualified_candidates(candidates)
  # Your code Here
  qualified = []
  @candidates.each do |candidate|
    #puts (github_points?(candidate) == true)
    if (github_points?(candidate) == true && ruby_or_python?(candidate) == true && age_18?(candidate) == true)
      qualified.push(candidate)
    end
  end
  return qualified
end

def github_points?(candidate)
  if candidate[:github_points] >= 100
    return true
  else
    return false
  end
end

def ruby_or_python?(candidate)
  if candidate[:languages].include?("Ruby" || "Paython")
    return true
  else
    return false
  end
end

def age_18?(candidate)
  if candidate[:age] > 17
    return true
  else
    return false
  end
end

def candidates_order(candidates)
  return candidates.sort{ | a, b |
   a[:years_of_experience] <=> b[:years_of_experience] ||
     a[:github_points] <=> b[:github_points] }.reverse
end
