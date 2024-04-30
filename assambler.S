.globl ledOn
ledOn:

  movi a4, 0x60000308 //OUT_W1TC = low level
  movi a5, 0x0000
  s32i a5, a4, 0

  movi a4, 0x60000304 //OUT_W1TS = high level
  movi a5, 0xffff
  s32i a5, a4, 0
  ret


.global ledOff
ledOff:

  movi a4, 0x60000308 //OUT_W1TC = low level
  movi a5, 0xffff
  s32i a5, a4, 0

  movi a4, 0x60000304 //OUT_W1TS = high level
  movi a5, 0x0000
  s32i a5, a4, 0
  ret


.global pinInit
pinInit:

  movi a4, 0x60000314
  movi a5, 0x0000
  s32i a5, a4, 0

  movi a4, 0x60000310
  movi a5, 0xffff
  s32i a5, a4, 0

  ret
