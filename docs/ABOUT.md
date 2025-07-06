# About

Futhark is a purely functional programming language designed for high-performance data-parallel computing.
While it shares some similarities in syntax and structure with functional languages like Haskell and Standard ML, its focus lies elsewhere.
Rather than emphasizing rich type systems or maximum expressiveness, Futhark aims to generate efficient parallel code.
Central to Futhark are bulk array operations known as Second-Order Array Combinators (SOACs), such as `map`, `reduce`, and `filter`, which resemble the higher-order functions familiar from other functional languages.
These SOACs are defined with sequential semantics but are designed to be compiled into parallel execution, allowing for both clarity and performance.
