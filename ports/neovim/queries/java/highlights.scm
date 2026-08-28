;; extends

; ==================================================
; Logic / control flow
; ==================================================

([
  "if"
  "else"
  "switch"
  "case"
  "default"
  "for"
  "while"
  "do"
  "break"
  "continue"
  "return"
  "yield"
] @keyword.logic
  (#set! priority 140))

; Java relationship / logical keywords that the base query exposes
; as generic keywords.
([
  "extends"
  "implements"
  "instanceof"
] @keyword.logic
  (#set! priority 140))

; ==================================================
; Special language syntax
; ==================================================

([
  "assert"
  "new"
] @keyword.special
  (#set! priority 140))

; ==================================================
; Errors / exceptions
; ==================================================

([
  "try"
  "catch"
  "finally"
  "throw"
  "throws"
] @keyword.exception
  (#set! priority 140))

; ==================================================
; Built-in constants
; ==================================================

([
  "true"
  "false"
  "null"
] @constant.builtin
  (#set! priority 140))
