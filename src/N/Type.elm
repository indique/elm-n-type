module N.Type exposing
    ( Difference, To
    , N, Is
    )

{-| See the readme for more information.


### difference

@docs Difference, To


### n

@docs N, Is

-}


{-| No special meaning
-}
type Is
    = Is Never


{-| No special meaning
-}
type To
    = To Never


{-| `b - a`.
-}
type Difference a to b
    = Difference Never


{-| You might want a function, where one `N-X-Nat` should be at least as big as another one.

    unsafeInterval : NaturalNumber first -> NaturalNumber last -> Interval

We want to promise that

    last == first + the interval length

which means

    first == last - the interval length

→ `N first Is (Difference intervalLength To last)` is our final type!

    safeInterval :
        NNat (N first Is (Difference interval To last))
        -> NNat (N last Is difference)
        -> Interval

-}
type N n is difference
    = N Never
