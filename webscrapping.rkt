;; links to investigate
;; https://docs.racket-lang.org/marionette/index.html
;; https://lists.gnu.org/archive/html/guile-user/2012-01/msg00049.html
;; https://docs.racket-lang.org/html-parsing/index.html
;; https://docs.racket-lang.org/koyo/haml.html
;;

#lang racket

(require net/url
         html-parsing
         sxml)

(define html
  (html->xexp
   (get-pure-port
    (string->url
     URL-STRING))))

;; gives page xexp to query with sxml, e.g.:

((sxpath
  '(// (div (@ (equal? (class "CLASS"))))))
 html)
