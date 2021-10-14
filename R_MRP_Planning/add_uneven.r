add.uneven <- function(x, y) {
    l <- max(length(x), length(y))
    length(x) <- l
    length(y) <- l
    x[is.na(x)] <- 0
    y[is.na(y)] <- 0
    `%au%` <- add.uneven
    s = x + y
    s[1] = NA
    s    
}

