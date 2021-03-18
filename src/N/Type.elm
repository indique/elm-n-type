module N.Type exposing
    ( N, Is
    , Difference, To
    )

{-| See the readme for more information.


### n

@docs N, Is


### difference

@docs Difference, To

-}


{-| No special meaning.

    N n Is difference

-}
type Is
    = Is Never


{-| No special meaning.

    Difference a To b

-}
type To
    = To Never


{-| `b - a`.

    Difference a To (Nat1Plus a)

would describe a difference of 1.

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
