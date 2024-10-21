(define +
  (lambda (n m)
    (cond
     ((zero? m) n)
     (else (+ (add1 n) (sub1 m))))))

; (display (+ 1 3))

(define -
  (lambda (n m)
    (cond
     ((zero? m) n)
     (else (- (sub1 n) (sub1 m))))))

; (display (- 16 4))

(define addtup
  (lambda (tup)
    (cond
     ((null? tup) 0)
     (else (+ (car tup) (addtup (cdr tup)))))))

; (display (addtup '(1 2 3 4 5 6 7)))


(define *
  (lambda (n m)
    (cond
     ((zero? m) 0)
     (else (+ n (* n (sub1 m)))))))

(display (* 15 15))
