#lang azelf

(require azelf/std/http)

(require zubat
         racket/path
         racket/file
         racket/port)
(provide parse)

(define/contract (html/images doc)
  (-> Html? (Array/c string?))
  (->> (query-html ".content_left img" doc)
       (filter-map (element-attr1 "src"))))

(define/contract (parse id cur-page doc)
  (-> string? exact-positive-integer? Html? Site?)
  (define title
    (->> (query-html1 ".item_title > h1" doc)
         (=<< element-text1)
         (maybe-> id)))
  (define page
    (->> (query-html ".page > a" doc)
         (filter-map
          (λ (el)
            (monad/do
             (link-page <- (element-text1 el))
             (->maybe (string->number link-page)))))
         (filter (< cur-page))
         length))
  (Site title page))

(module+ test
  (->> "hello world"
       string->url
       parse))
