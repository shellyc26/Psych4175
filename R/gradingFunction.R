gradeFx = function(classScores) {
  # get the participation grade, store for later
  participation = unlist(classScores[i,7], use.names = FALSE)
  
  # Sort
  currentGrades = sort(unlist(classScores[i,2:6], use.names = FALSE))
  
  # now add in participation to end of vector
  currentGrades = c(currentGrades, participation)
  
  # lowest exam grade = 10%
  # 4 other exams = 20%
  # participation = 10%
  weights = c(.1, .2, .2, .2, .2, .1)
  
  # get their grade!
  grade = round(sum(weights*currentGrades), digits = 1)
  
  return(grade)
}


