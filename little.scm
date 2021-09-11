(define rember
    (lambda (a lat)
        (cond
            ((null? lat) '())
            ((eq? (car lat) a) (cdr lat))
            (else (cons (car lat) 
                        (rember a (cdr lat))))
        )
    )
)

(define firsts
    (lambda (l)
        (cond
            ((null? l) '())
            (else (cons (car (car l)) 
                        (firsts (cdr l))))
        )
    )
)

(define insertR
    (lambda (new old lat)
        (cond
            ((null? lat) '())
            ((eq? (car lat) old) (cons old (cons new (cdr lat))))
            (else (cons (car lat) 
                        (insertR new old (cdr lat))))
        )
    )
)

(define insertL
    (lambda (new old lat)
        (cond
            ((null? lat) '())
            ((eq? (car lat) old) (cons new lat))
            (else (cons (car lat) 
                        (insertL new old (cdr lat))))
        )
    )
)

(define subst
    (lambda (new old lat)
        (cond
            ((null? lat) '())
            ((eq? (car lat) old) (cons new (cdr lat)))
            (else (cons (car lat) 
                        (subst new old (cdr lat))))
        )
    )
)

(define subst2
    (lambda (new o1 o2 lat)
        (cond
            ((null? lat) '())
            ((or (eq? (car lat) o1) (eq? (car lat) o2)) (cons new (cdr lat)))
            (else (cons (car lat) 
                        (subst2 new o1 o2 (cdr lat))))
        )
    )
)