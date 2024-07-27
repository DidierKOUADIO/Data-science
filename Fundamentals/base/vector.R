# Making vectors: vector hasv same type

# concatenate
c(1, 2, 3, 4)

# Empty vector
vector(mode = "logical", length = 3) # default FALSE
vector(mode = "integer", length = 3) # default 0
vector(mode = "double", length = 3) # default 0
vector(mode = "numeric", length = 3) # default 0
vector(mode = "complex", length = 3) # default 0
vector(mode = "character", length = 3) # default ""
vector(mode = "raw", length = 3) # default nul bytes
vector(mode = "list", length = 3) # default NULL
vector(mode = "expression", length = 3) # default NULL

# Verifie si vecteur 
v1 <- vector(mode="logical", length = 10)
V1 <- rep((TRUE FALSE), 0)
is.vector(v1, mode="integer")
is.vector(v1, mode="logical")
is.vector(v1, mode="any")
is.vector(v1)

as.vector(x, mode = "any")
is.vector(x, mode = "any")

df <- data.frame(x = 1:3, y = 5:7)
df
## Error:
try(as.vector(data.frame(x = 1:3, y = 5:7), mode = "numeric"))

#Implicit coercion
x <- c(1, 5.4, TRUE, "hello")
x
typeof(x)
y <- list(1, 2, 3)
names(y) <- c("a", "b", "c")
attributes(y)

x <- c(a = 1, b = 2)
is.vector(x)
as.vector(x)
all.equal(x, as.vector(x)) ## FALSE


###-- All the following are TRUE:
is.list(df)
! is.vector(df)
! is.vector(df, mode = "list")

is.vector(list(), mode = "list")

# Create Vector 
v <- c(2, 5, 9)
v
# Accessing element in a vector without name(index name)
v[1]
v[2]
v[3]
# Create Vector with name (index) directly
v <- c(a = 2, b = 5, c = 9)
attributes(v)
v
# assign name to a vector
v <- c(8, 12, 7)
names(v) <- c("f", "g", "h")
v["f"]
v["g"]
v["h"]

# replicate: replicate(n, expr, simplify = "array")
replicate(10, TRUE)
replicate(10, (TRUE:FALSE))
?replicate()

# rep: rep(x, times = 1, length.out = NA, each = 1)
rep(TRUE, 5)
rep(3, 7)
rep(1:4, each = 2)       # not the same.
rep(1:4, c(2,2,2,2))     # same as second.
rep(1:4, c(2,1,2,1))
rep(1:4, length.out=3)
rep(1:4, each = 2, length.out = 4)    # first 4 only.
rep(1:4, each = 2, length.out = 10)   # 8 integers plus two recycled 1's.
rep(1:4, each = 2, times = 3)         # length 24, 3 complete replications

# rep_len: rep_len(x, length.out)
rep_len(1:100, length.out = 25)


# seq: seq(from = 1, to = 1, by = ((to - from)/(length.out - 1))
seq(from=1, to=10)
seq(from=1, to=10, by=2)
seq(from=1, to=100, length.out=10)
seq(along.with= )
seq(from)
seq(length.out= )
seq
seq(length.out=10)
seq_len
seq_along


# rev: reverse
v <- c(1, 2, 3)
v
rev(v)
names(v) <- c("g", "b", "k") 
v
rev(v)

# sample
# syntax 1: sample(x, size, replace = FALSE, prob = NULL)
# syntax 2: sample(x, size, replace = FALSE, prob = NULL)
x <- 1:12
train <- sample(x, size = 10, replace = FALSE)
train
train <- sample(x, replace = FALSE, prob = 0,8)
train
train <- sample(x, size = 10, replace = FALSE)
train
sample

# choose: how many times a set with 5 elements can be choosen from a set with 3 elements.
n <- 3
k <- 5
print(choose(k, n))


# factorial: n*(n-1)*(n-2)*...*1
x <- factorial(4)
y <- 4 * 3 * 2 * 1
x == y
paste0(c(x,y))


(is/as).(character/numeric/logical/...)



