;; extends

; ==================================================
; Java relationship / logic keywords
; ==================================================

([
  "extends"
  "implements"
  "instanceof"
] @keyword.logic
  (#set! priority 140))

; ==================================================
; Special language syntax
; ==================================================

("new" @keyword.special
  (#set! priority 140))
