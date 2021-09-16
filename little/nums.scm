(define addtup
    (lambda (tup)
        (cond
            ((null? tup) 0)
            (else (+ (car tup) (addtup (cdr tup))))
        )    
    )
)

(define no-nums
    (lambda (lat)
        (cond
            ((null? lat) '())
            ((number? (car lat)) (no-nums (cdr lat)))
            (else (cons (car lat) (no-nums (cdr lat))))
        )
    )
)

(define occur
    (lambda (a lat)
        (cond
            ((null? lat) 0)
            ((eq? a (car lat)) (+ 1 (occur a (cdr lat))))
            (else (occur a (cdr lat)))
        )
    )
)