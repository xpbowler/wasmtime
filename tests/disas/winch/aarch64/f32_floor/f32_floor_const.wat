;;! target = "aarch64"
;;! test = "winch"

(module
    (func (result f32)
        (f32.const -1.32)
        (f32.floor)
    )
)
;; wasm[0]::function[0]:
;;       stp     x29, x30, [sp, #-0x10]!
;;       mov     x29, sp
;;       mov     x28, sp
;;       mov     x9, x0
;;       sub     sp, sp, #0x10
;;       mov     x28, sp
;;       stur    x0, [x28, #8]
;;       stur    x1, [x28]
;;       mov     w16, #0xf5c3
;;       movk    w16, #0xbfa8, lsl #16
;;       fmov    s0, w16
;;       frintm  s0, s0
;;       add     sp, sp, #0x10
;;       mov     x28, sp
;;       ldp     x29, x30, [sp], #0x10
;;       ret
