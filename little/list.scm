(define rember
  (lambda (a l)
    (cond
     ((null? l) '())
     ((string=? a (car l)) (cdr l))
     (else (cons (car l) (rember a (cdr l))))
    )
  )
)

; (display (rember "abd" '("def" "abd" "abd" "efg")))

(define firsts
  (lambda (l)
    (cond
     ((null? l) '())
     ((atom? (car l)) '())
     (else (cons (car (car l)) (firsts (cdr l)))))
  )
)

; (display (firsts '(("abc", "efg") ("xyz", "wyz") ("hod", "dota"))))

(define insertR
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons (car lat) (cons new (cdr lat))))
      (else (cons (car lat) (insertR new old (cdr lat))))
     )
    )
  )

; (display (insertR "topping" "fudge" '("ice" "cream" "with" "fudge" "for" "dessert")))

(define insertL
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons new lat))
      (else (cons (car lat) (insertL new old (cdr lat))))
     )
    )
  )

; (display (insertL "topping" "fudge" '("ice" "cream" "with" "fudge" "for" "dessert")))

(define subst
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons new (cdr lat)))
      (else (cons (car lat) (subst new old (cdr lat))))
     )
    )
  )

; (display (subst "topping" "fudge" '("ice" "cream" "with" "fudge" "for" "dessert")))

(define subst2
  (lambda (new o1 o2 lat)
    (cond
     ((null? lat) '())
      ((or (string=? (car lat) o1) (string=? (car lat) o2)) (cons new (cdr lat)))
      (else (cons (car lat) (subst2 new o1 o2 (cdr lat))))
     )
    )
  )

; (display (subst2 "topping" "fudge" "ice" '("ice" "cream" "with" "fudge" "for" "dessert")))


(define multirember
  (lambda (a lat)
    (cond
     ((null? lat) '())
     ((string=? a (car lat)) (multirember a (cdr lat)))
     (else (cons (car lat) (multirember a (cdr lat)))))))

; (display (multirember "a" '("a" "a" "a" "a" "c" "a")))

(define multiinsertR
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons (car lat) (cons new (multiinsertR new old (cdr lat)))))
      (else (cons (car lat) (multiinsertR new old (cdr lat))))
     )
    )
  )

; (display (multiinsertR "topping" "fudge" '("ice" "fudge" "with" "fudge" "for" "dessert")))

(define multiinsertL
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons new (cons (car lat) (multiinsertL new old (cdr lat)))))
      (else (cons (car lat) (multiinsertL new old (cdr lat))))
     )
    )
  )

; (display (multiinsertL "topping" "fudge" '("ice" "fudge" "with" "fudge" "for" "dessert")))

(define multisubst
  (lambda (new old lat)
    (cond
     ((null? lat) '())
      ((string=? (car lat) old) (cons new (multisubst new old (cdr lat))))
      (else (cons (car lat) (multisubst new old (cdr lat))))
     )
    )
  )

(display (multisubst "topping" "fudge" '("ice" "fudge" "with" "fudge" "for" "dessert")))
