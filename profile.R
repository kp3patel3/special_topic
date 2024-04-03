x = matrix(runif(1e5*500), ncol = 500)


Rprof()
# Inefficient code
long_running_code <- function(n) {
  result <- 0
  for (i in 1:n) {
    for (j in 1:n) {
      for (k in 1:n) {
        result <- result + i * j * k
      }
    }
  }
  return(result)
}

# Run the inefficient code
start_time <- Sys.time()
result <- long_running_code(100)
end_time <- Sys.time()

# Print the result and time taken
print(paste("Result:", result))
print(paste("Time taken:", end_time - start_time))









# Efficient code
efficient_code <- function(n) {
  result <- 0
  for (i in 1:n) {
    result <- result + i
  }
  return(result ^ 3)
}

# Run the efficient code
start_time <- Sys.time()
result <- efficient_code(100)
end_time <- Sys.time()

# Print the result and time taken
print(paste("Result:", result))
print(paste("Time taken:", end_time - start_time))

Rprof(NULL)
summaryRprof()
