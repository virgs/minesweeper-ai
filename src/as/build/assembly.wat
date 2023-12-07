(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i32 i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func))
 (type $7 (func (param i32 i32 i32 i32 i32)))
 (type $8 (func (result i32)))
 (type $9 (func (param i32 i32 i32 i32)))
 (type $10 (func (param i32 i32 i64)))
 (type $11 (func (param i32 i32 i32 i32) (result i32)))
 (type $12 (func (param i32 i32 i32 i32 i32 i32)))
 (type $13 (func (param i64 i64 i32 i64 i32) (result i32)))
 (type $14 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "console.log" (func $~lib/bindings/dom/console.log (param i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $src/as/assembly/index/virgs (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7424))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 40300))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\08\00\00\00t\00r\00u\00e")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data $2 (i32.const 1100) "\1c")
 (data $2.1 (i32.const 1112) "\02\00\00\00\08\00\00\00n\00u\00l\00l")
 (data $3 (i32.const 1132) "\1c")
 (data $3.1 (i32.const 1144) "\02\00\00\00\02\00\00\00[")
 (data $4 (i32.const 1164) "\1c")
 (data $4.1 (i32.const 1176) "\02\00\00\00\04\00\00\00[\00]")
 (data $5 (i32.const 1196) "\1c")
 (data $5.1 (i32.const 1208) "\02\00\00\00\02\00\00\00,")
 (data $6 (i32.const 1228) "\1c")
 (data $6.1 (i32.const 1240) "\02\00\00\00\02\00\00\00]")
 (data $7 (i32.const 1260) "<")
 (data $7.1 (i32.const 1272) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $8 (i32.const 1324) "<")
 (data $8.1 (i32.const 1336) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $11 (i32.const 1452) "<")
 (data $11.1 (i32.const 1464) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $12 (i32.const 1516) ",")
 (data $12.1 (i32.const 1528) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $14 (i32.const 1596) "<")
 (data $14.1 (i32.const 1608) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $15 (i32.const 1660) "\1c")
 (data $15.1 (i32.const 1672) "\02")
 (data $16 (i32.const 1692) ",")
 (data $16.1 (i32.const 1704) "\02\00\00\00\14\00\00\00p\00r\00o\00p\00e\00r\00t\00i\00e\00s")
 (data $17 (i32.const 1740) "\1c")
 (data $17.1 (i32.const 1752) "\02\00\00\00\0c\00\00\00h\00e\00i\00g\00h\00t")
 (data $18 (i32.const 1772) "\1c")
 (data $18.1 (i32.const 1784) "\02\00\00\00\n\00\00\00w\00i\00d\00t\00h")
 (data $19 (i32.const 1804) "\1c")
 (data $19.1 (i32.const 1816) "\02\00\00\00\n\00\00\00m\00i\00n\00e\00s")
 (data $20 (i32.const 1836) "L")
 (data $20.1 (i32.const 1848) "\02\00\00\00<\00\00\00S\00t\00a\00r\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \00e\00n\00d\00!")
 (data $21 (i32.const 1916) "\\")
 (data $21.1 (i32.const 1928) "\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00v\00i\00r\00t\00u\00a\00l\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data $22 (i32.const 2012) "\1c")
 (data $22.1 (i32.const 2024) "\02\00\00\00\02\00\00\00a")
 (data $23 (i32.const 2044) "\1c")
 (data $23.1 (i32.const 2056) "\02\00\00\00\02\00\00\00l")
 (data $24 (i32.const 2076) "\1c")
 (data $24.1 (i32.const 2088) "\02\00\00\00\02\00\00\00s")
 (data $25 (i32.const 2108) "\1c")
 (data $25.1 (i32.const 2120) "\02\00\00\00\n\00\00\00c\00e\00l\00l\00s")
 (data $26 (i32.const 2140) ",")
 (data $26.1 (i32.const 2152) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $27 (i32.const 2188) ",")
 (data $27.1 (i32.const 2200) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $28 (i32.const 2236) "\1c")
 (data $28.1 (i32.const 2248) "\02\00\00\00\06\00\00\00_\00i\00d")
 (data $29 (i32.const 2268) ",")
 (data $29.1 (i32.const 2280) "\02\00\00\00\14\00\00\00m\00i\00n\00e\00s\00C\00o\00u\00n\00t")
 (data $30 (i32.const 2316) ",")
 (data $30.1 (i32.const 2328) "\02\00\00\00\10\00\00\00r\00e\00v\00e\00a\00l\00e\00d")
 (data $31 (i32.const 2364) "<")
 (data $31.1 (i32.const 2376) "\02\00\00\00(\00\00\00J\00S\00O\00N\00:\00 \00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00\"")
 (data $32 (i32.const 2428) ",")
 (data $32.1 (i32.const 2440) "\02\00\00\00\18\00\00\00\"\00 \00a\00s\00 \00b\00o\00o\00l\00e\00a\00n")
 (data $33 (i32.const 2476) "\1c\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\0c\00\00\00P\t\00\00\00\00\00\00\90\t")
 (data $34 (i32.const 2508) "\\")
 (data $34.1 (i32.const 2520) "\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00j\00s\00o\00n\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00r\00c\00/\00j\00s\00o\00n\00.\00t\00s")
 (data $35 (i32.const 2604) "\1c")
 (data $35.1 (i32.const 2616) "\01")
 (data $36 (i32.const 2636) "\1c")
 (data $36.1 (i32.const 2648) "\01")
 (data $37 (i32.const 2668) "\1c")
 (data $37.1 (i32.const 2680) "\01")
 (data $38 (i32.const 2700) "|")
 (data $38.1 (i32.const 2712) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $39 (i32.const 2828) "L")
 (data $39.1 (i32.const 2840) "\02\00\00\000\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00B\00o\00a\00r\00d\00.\00t\00s")
 (data $40 (i32.const 2908) "\1c")
 (data $40.1 (i32.const 2920) "\10\00\00\00\08\00\00\00\01")
 (data $41 (i32.const 2940) "|")
 (data $41.1 (i32.const 2952) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $42 (i32.const 3068) "\1c")
 (data $42.1 (i32.const 3080) "\01")
 (data $43 (i32.const 3100) "\1c")
 (data $43.1 (i32.const 3112) "\01")
 (data $44 (i32.const 3132) "\1c")
 (data $44.1 (i32.const 3144) "\11\00\00\00\08\00\00\00\02")
 (data $45 (i32.const 3164) "\1c")
 (data $45.1 (i32.const 3176) "\01")
 (data $46 (i32.const 3196) "\1c")
 (data $46.1 (i32.const 3208) "\01")
 (data $47 (i32.const 3228) "<")
 (data $47.1 (i32.const 3240) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $48 (i32.const 3292) "\1c")
 (data $48.1 (i32.const 3304) "\02\00\00\00\02\00\00\00(")
 (data $49 (i32.const 3324) "\1c")
 (data $49.1 (i32.const 3336) "\02\00\00\00\02\00\00\00)")
 (data $50 (i32.const 3356) "\1c\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\0c\00\00\00\f0\0c\00\00\00\00\00\00\10\r")
 (data $51 (i32.const 3388) "|")
 (data $51.1 (i32.const 3400) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $52 (i32.const 3516) "<")
 (data $52.1 (i32.const 3528) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $53 (i32.const 3580) "\1c")
 (data $53.1 (i32.const 3592) "\02\00\00\00\02\00\00\000")
 (data $54 (i32.const 3612) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $55 (i32.const 4012) "\1c\04")
 (data $55.1 (i32.const 4024) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $56 (i32.const 5068) "\\")
 (data $56.1 (i32.const 5080) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $57 (i32.const 5164) "\1c")
 (data $57.1 (i32.const 5176) "\01")
 (data $58 (i32.const 5196) "\1c")
 (data $58.1 (i32.const 5208) "\01")
 (data $59 (i32.const 5228) "\1c")
 (data $59.1 (i32.const 5240) "\11\00\00\00\08\00\00\00\03")
 (data $60 (i32.const 5260) "\1c")
 (data $60.1 (i32.const 5272) "\01")
 (data $61 (i32.const 5292) "\1c")
 (data $61.1 (i32.const 5304) "\01")
 (data $62 (i32.const 5324) "\1c")
 (data $62.1 (i32.const 5336) "\02\00\00\00\02\00\00\00-")
 (data $63 (i32.const 5356) "\1c\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\0c\00\00\00\00\00\00\00\e0\14")
 (data $64 (i32.const 5388) "\1c")
 (data $64.1 (i32.const 5400) "\02\00\00\00\02\00\00\00:")
 (data $65 (i32.const 5420) "\1c\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\0c\00\00\00\00\00\00\00 \15")
 (data $66 (i32.const 5452) "\1c")
 (data $66.1 (i32.const 5464) "\11\00\00\00\08\00\00\00\04")
 (data $67 (i32.const 5484) "L")
 (data $67.1 (i32.const 5496) "\02\00\00\00:\00\00\00n\00o\00t\00C\00h\00a\00n\00g\00e\00d\00I\00t\00e\00r\00a\00t\00i\00o\00n\00s\00C\00o\00u\00n\00t\00e\00r\00:\00 ")
 (data $68 (i32.const 5564) "\1c")
 (data $68.1 (i32.const 5576) "\02\00\00\00\06\00\00\000\00.\000")
 (data $69 (i32.const 5596) "\1c")
 (data $69.1 (i32.const 5608) "\02\00\00\00\06\00\00\00N\00a\00N")
 (data $70 (i32.const 5628) ",")
 (data $70.1 (i32.const 5640) "\02\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $71 (i32.const 5676) ",")
 (data $71.1 (i32.const 5688) "\02\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $73 (i32.const 5784) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\rXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data $74 (i32.const 6480) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\r\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data $75 (i32.const 6656) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data $76 (i32.const 6700) "\1c")
 (data $76.1 (i32.const 6712) "\01")
 (data $77 (i32.const 6732) "<")
 (data $77.1 (i32.const 6744) "\02\00\00\00*\00\00\00{\00\"\00k\00n\00o\00w\00n\00M\00i\00n\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:")
 (data $78 (i32.const 6796) "<")
 (data $78.1 (i32.const 6808) "\02\00\00\00*\00\00\00,\00\"\00k\00n\00o\00w\00n\00S\00a\00f\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:")
 (data $79 (i32.const 6860) ",")
 (data $79.1 (i32.const 6872) "\02\00\00\00\16\00\00\00,\00\"\00g\00u\00e\00s\00s\00e\00s\00\"\00:")
 (data $80 (i32.const 6908) "\1c")
 (data $80.1 (i32.const 6920) "\02\00\00\00\02\00\00\00}")
 (data $81 (i32.const 6940) ",\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\1c\00\00\00`\1a\00\00\00\00\00\00\a0\1a\00\00\00\00\00\00\e0\1a\00\00\00\00\00\00\10\1b")
 (data $82 (i32.const 6988) "l")
 (data $82.1 (i32.const 7000) "\02\00\00\00P\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00s\00/\00S\00o\00l\00v\00e\00r\00R\00e\00s\00p\00o\00n\00s\00e\00.\00t\00s")
 (data $83 (i32.const 7100) ",")
 (data $83.1 (i32.const 7112) "\02\00\00\00\12\00\00\00{\00\"\00m\00i\00n\00e\00s\00\"\00:")
 (data $84 (i32.const 7148) ",")
 (data $84.1 (i32.const 7160) "\02\00\00\00\12\00\00\00,\00\"\00c\00e\00l\00l\00s\00\"\00:")
 (data $85 (i32.const 7196) ",\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\14\00\00\00\d0\1b\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\10\1b")
 (data $86 (i32.const 7244) ",\00\00\00\03\00\00\00\00\00\00\00\0b\00\00\00\14\00\00\00\d0\1b\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\10\1b")
 (data $87 (i32.const 7292) "<")
 (data $87.1 (i32.const 7304) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $88 (i32.const 7356) "<")
 (data $88.1 (i32.const 7368) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $89 (i32.const 7424) "\1a\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\02A\00\00 \00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02A")
 (data $89.1 (i32.const 7500) " \00\00\00\08\t\00\00\10A\82\00\00\00\00\00 \00\00\00\02A\00\00 ")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $src/as/assembly/Board/Board#getRevealedCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0)
 (export "virgs" (global $src/as/assembly/index/virgs))
 (export "test" (func $src/as/assembly/index/test))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "processBoard" (func $export:src/as/assembly/index/processBoard))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $src/as/assembly/index/virgs
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1472
  call $~lib/rt/itcms/__visit
  i32.const 2160
  call $~lib/rt/itcms/__visit
  i32.const 2960
  call $~lib/rt/itcms/__visit
  i32.const 1280
  call $~lib/rt/itcms/__visit
  i32.const 7312
  call $~lib/rt/itcms/__visit
  i32.const 7376
  call $~lib/rt/itcms/__visit
  i32.const 4032
  call $~lib/rt/itcms/__visit
  i32.const 5088
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 1088
  call $~lib/rt/itcms/__visit
  i32.const 1120
  call $~lib/rt/itcms/__visit
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 1184
  call $~lib/rt/itcms/__visit
  i32.const 1216
  call $~lib/rt/itcms/__visit
  i32.const 1248
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1344
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 40300
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1344
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1344
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 7424
   i32.load
   i32.gt_u
   if
    i32.const 1472
    i32.const 1536
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 7428
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1616
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1616
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1616
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1616
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 40304
  i32.const 0
  i32.store
  i32.const 41872
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 40304
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 40304
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 40304
  i32.const 41876
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 40304
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 40300
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 1
   i32.and
  end
  if
   i32.const 0
   i32.const 1616
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 40300
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1344
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 40300
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1616
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1280
   i32.const 1616
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.const 27
     local.get $3
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $3
    end
   else
    local.get $3
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1616
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1616
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1280
   i32.const 1344
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$68
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$68
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $3
   i32.eqz
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $5
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $5
  i32.const 1
  i32.and
  local.get $3
  select
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    local.tee $6
    local.set $5
    local.get $3
    i32.load
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $4
    i32.load
    call_indirect (type $0)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $5
     local.get $6
     local.set $3
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $6
    loop $while-continue|1
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.tee $8
       i32.load
       local.set $9
       i32.const 2
       global.set $~argumentsLength
       local.get $9
       local.get $3
       local.get $4
       i32.load
       call_indirect (type $0)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $8
       local.get $9
       i32.store offset=8
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.tee $3
       i32.load
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $5
       local.get $4
       i32.load
       call_indirect (type $0)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $3
       local.get $8
       i32.store offset=4
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store offset=4
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  i32.const 2
  global.set $~argumentsLength
  local.get $5
  local.get $6
  local.get $3
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $5
     i32.load offset=4
     local.set $6
     local.get $5
     i32.load
     local.set $5
     i32.const 2
     global.set $~argumentsLength
     local.get $6
     local.get $5
     local.get $3
     i32.load
     call_indirect (type $0)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $1
     i32.load offset=4
     local.set $5
     local.get $1
     i32.load
     local.set $1
     i32.const 2
     global.set $~argumentsLength
     local.get $5
     local.get $1
     local.get $3
     i32.load
     call_indirect (type $0)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  local.get $3
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $8
    local.get $4
    i32.add
    local.get $0
    local.get $8
    i32.add
    i32.load
    i32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect (type $0)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
    else
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 3612
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 3612
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 3612
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 3612
   i32.add
   i32.load
   i32.store
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/util/number/itoa_buffered<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.tee $2
  if
   local.get $0
   i32.const 45
   i32.store16
   i32.const 0
   local.get $1
   i32.sub
   local.set $1
  end
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $1
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 48
   i32.or
   i32.store16
   local.get $2
   i32.const 1
   i32.add
   return
  end
  local.get $0
  local.get $1
  local.get $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $0
  call $~lib/util/number/utoa32_dec_lut
  local.get $0
  local.get $2
  i32.add
 )
 (func $~lib/util/number/genDigits (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  local.get $1
  local.get $0
  i64.sub
  local.set $10
  i64.const 1
  i32.const 0
  local.get $2
  i32.sub
  local.tee $11
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.tee $7
  i64.const 1
  i64.sub
  local.tee $12
  local.get $1
  i64.and
  local.set $9
  local.get $1
  local.get $0
  i64.shr_u
  i32.wrap_i64
  local.tee $5
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $5
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $5
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $5
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $5
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $5
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $5
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $5
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $8
  loop $while-continue|0
   local.get $8
   i32.const 0
   i32.gt_s
   if
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $8
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $5
               i32.const 1000000000
               i32.div_u
               local.set $6
               local.get $5
               i32.const 1000000000
               i32.rem_u
               local.set $5
               br $break|1
              end
              local.get $5
              i32.const 100000000
              i32.div_u
              local.set $6
              local.get $5
              i32.const 100000000
              i32.rem_u
              local.set $5
              br $break|1
             end
             local.get $5
             i32.const 10000000
             i32.div_u
             local.set $6
             local.get $5
             i32.const 10000000
             i32.rem_u
             local.set $5
             br $break|1
            end
            local.get $5
            i32.const 1000000
            i32.div_u
            local.set $6
            local.get $5
            i32.const 1000000
            i32.rem_u
            local.set $5
            br $break|1
           end
           local.get $5
           i32.const 100000
           i32.div_u
           local.set $6
           local.get $5
           i32.const 100000
           i32.rem_u
           local.set $5
           br $break|1
          end
          local.get $5
          i32.const 10000
          i32.div_u
          local.set $6
          local.get $5
          i32.const 10000
          i32.rem_u
          local.set $5
          br $break|1
         end
         local.get $5
         i32.const 1000
         i32.div_u
         local.set $6
         local.get $5
         i32.const 1000
         i32.rem_u
         local.set $5
         br $break|1
        end
        local.get $5
        i32.const 100
        i32.div_u
        local.set $6
        local.get $5
        i32.const 100
        i32.rem_u
        local.set $5
        br $break|1
       end
       local.get $5
       i32.const 10
       i32.div_u
       local.set $6
       local.get $5
       i32.const 10
       i32.rem_u
       local.set $5
       br $break|1
      end
      local.get $5
      local.set $6
      i32.const 0
      local.set $5
      br $break|1
     end
     i32.const 0
     local.set $6
    end
    local.get $4
    local.get $6
    i32.or
    if
     local.get $4
     local.tee $2
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 1
     i32.shl
     i32.const 5728
     i32.add
     local.get $6
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    local.get $3
    local.get $5
    i64.extend_i32_u
    local.get $11
    i64.extend_i32_s
    local.tee $1
    i64.shl
    local.get $9
    i64.add
    local.tee $0
    i64.ge_u
    if
     global.get $~lib/util/number/_K
     local.get $8
     i32.add
     global.set $~lib/util/number/_K
     local.get $8
     i32.const 2
     i32.shl
     i32.const 6656
     i32.add
     i64.load32_u
     local.get $1
     i64.shl
     local.set $7
     local.get $4
     i32.const 1
     i32.shl
     i32.const 5726
     i32.add
     local.tee $2
     i32.load16_u
     local.set $6
     loop $while-continue|3
      local.get $0
      local.get $10
      i64.lt_u
      local.get $3
      local.get $0
      i64.sub
      local.get $7
      i64.ge_u
      i32.and
      if (result i32)
       local.get $10
       local.get $0
       local.get $7
       i64.add
       local.tee $1
       i64.gt_u
       local.get $10
       local.get $0
       i64.sub
       local.get $1
       local.get $10
       i64.sub
       i64.gt_u
       i32.or
      else
       i32.const 0
      end
      if
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       local.get $0
       local.get $7
       i64.add
       local.set $0
       br $while-continue|3
      end
     end
     local.get $2
     local.get $6
     i32.store16
     local.get $4
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4
   local.get $3
   i64.const 10
   i64.mul
   local.set $3
   local.get $9
   i64.const 10
   i64.mul
   local.tee $1
   local.get $11
   i64.extend_i32_s
   i64.shr_u
   local.tee $0
   local.get $4
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $4
    local.tee $2
    i32.const 1
    i32.add
    local.set $4
    local.get $2
    i32.const 1
    i32.shl
    i32.const 5728
    i32.add
    local.get $0
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $8
   i32.const 1
   i32.sub
   local.set $8
   local.get $1
   local.get $12
   i64.and
   local.tee $9
   local.get $3
   i64.ge_u
   br_if $while-continue|4
  end
  global.get $~lib/util/number/_K
  local.get $8
  i32.add
  global.set $~lib/util/number/_K
  local.get $10
  i32.const 0
  local.get $8
  i32.sub
  i32.const 2
  i32.shl
  i32.const 6656
  i32.add
  i64.load32_u
  i64.mul
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  i32.const 5726
  i32.add
  local.tee $2
  i32.load16_u
  local.set $6
  loop $while-continue|6
   local.get $1
   local.get $9
   i64.gt_u
   local.get $3
   local.get $9
   i64.sub
   local.get $7
   i64.ge_u
   i32.and
   if (result i32)
    local.get $1
    local.get $7
    local.get $9
    i64.add
    local.tee $0
    i64.gt_u
    local.get $1
    local.get $9
    i64.sub
    local.get $0
    local.get $1
    i64.sub
    i64.gt_u
    i32.or
   else
    i32.const 0
   end
   if
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    local.get $7
    local.get $9
    i64.add
    local.set $9
    br $while-continue|6
   end
  end
  local.get $2
  local.get $6
  i32.store16
  local.get $4
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.const 21
  i32.le_s
  local.get $1
  local.get $3
  i32.le_s
  i32.and
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   local.get $3
   i32.const 0
   i32.gt_s
   i32.and
   if (result i32)
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    memory.copy
    local.get $0
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 0
    i32.le_s
    local.get $3
    i32.const -6
    i32.gt_s
    i32.and
    if (result i32)
     local.get $0
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $0
     i32.const 3014704
     i32.store
     i32.const 2
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     local.get $3
     i32.add
    else
     local.get $1
     i32.const 1
     i32.eq
     if
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $2
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $0
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $0
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $0
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/util/number/utoa32_dec_lut
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16
     else
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $4
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $2
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $0
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $0
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $0
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_dec_lut
      local.get $4
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16
      local.get $0
      local.get $1
      i32.add
      local.set $1
     end
     local.get $1
     i32.const 2
     i32.add
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  local.get $0
  f64.const 0
  f64.lt
  local.tee $2
  if (result f64)
   i32.const 5728
   i32.const 45
   i32.store16
   local.get $0
   f64.neg
  else
   local.get $0
  end
  i64.reinterpret_f64
  local.tee $1
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  i32.const 1
  local.get $7
  select
  i32.const 1075
  i32.sub
  local.tee $8
  i32.const 1
  i32.sub
  local.get $1
  i64.const 4503599627370495
  i64.and
  local.get $7
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $1
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $3
  i64.clz
  i32.wrap_i64
  local.tee $7
  i32.sub
  local.set $9
  local.get $3
  local.get $7
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $1
  local.get $1
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $7
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $8
  local.get $7
  i32.sub
  local.get $9
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $9
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  local.tee $7
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $0
  i32.trunc_sat_f64_s
  local.tee $8
  local.get $8
  f64.convert_i32_s
  local.get $0
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $8
  i32.const 3
  i32.shl
  local.tee $9
  i32.sub
  global.set $~lib/util/number/_K
  local.get $9
  i32.const 5784
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $8
  i32.const 1
  i32.shl
  i32.const 6480
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  local.get $1
  local.get $1
  i64.clz
  i64.shl
  local.tee $1
  i64.const 4294967295
  i64.and
  local.set $4
  global.get $~lib/util/number/_frc_pow
  local.tee $10
  i64.const 4294967295
  i64.and
  local.tee $11
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.mul
  local.get $4
  local.get $11
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $5
  global.get $~lib/util/number/_frc_plus
  local.tee $3
  i64.const 4294967295
  i64.and
  local.set $12
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $3
  local.get $11
  i64.mul
  local.get $11
  local.get $12
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $6
  global.get $~lib/util/number/_frc_minus
  local.tee $13
  i64.const 4294967295
  i64.and
  local.set $14
  local.get $13
  i64.const 32
  i64.shr_u
  local.tee $13
  local.get $11
  i64.mul
  local.get $11
  local.get $14
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  local.get $2
  i32.const 1
  i32.shl
  i32.const 5728
  i32.add
  local.get $1
  local.get $10
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $4
  i64.mul
  local.get $5
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $3
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $12
  i64.mul
  local.get $6
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.sub
  local.tee $3
  local.get $7
  global.get $~lib/util/number/_exp_pow
  i32.add
  i32.const -64
  i32.sub
  local.get $3
  local.get $1
  local.get $13
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $14
  i64.mul
  local.get $11
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.get $2
  call $~lib/util/number/genDigits
  local.get $2
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $2
  i32.add
 )
 (func $src/as/assembly/index/test (result i32)
  global.get $src/as/assembly/index/virgs
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 7312
    i32.const 1344
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 7376
   i32.const 1344
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/function/Function<%28src/as/assembly/models/Cell/Cell%2Ci32%2C~lib/array/Array<src/as/assembly/models/Cell/Cell>%29=>bool>~visit (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner5
   block $folding-inner4
    block $folding-inner3
     block $folding-inner2
      block $folding-inner1
       block $invalid
        block $~lib/date/Date
         block $src/as/assembly/models/Guess/Guess
          block $src/as/assembly/models/SolverResponse/SolverResponse
           block $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>
            block $~lib/set/Set<i32>
             block $src/as/assembly/Board/Location
              block $~lib/function/Function<%28i32%2Ci32%29=>i32>
               block $~lib/function/Function<%28src/as/assembly/models/Cell/Cell%2Ci32%2C~lib/array/Array<src/as/assembly/models/Cell/Cell>%29=>bool>
                block $src/as/assembly/Proposition/Proposition
                 block $~lib/array/Array<i32>
                  block $src/as/assembly/MineSweeperSolver/MineSweeperSolver
                   block $~lib/staticarray/StaticArray<~lib/string/String>
                    block $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>
                     block $src/as/assembly/models/Cell/Cell
                      block $src/as/assembly/models/BoardProperties/BoardProperties
                       block $src/as/assembly/Board/Board
                        block $src/as/assembly/index/Test
                         block $src/as/assembly/index/Virgs
                          block $~lib/string/String
                           block $~lib/arraybuffer/ArrayBuffer
                            block $~lib/object/Object
                             local.get $0
                             i32.const 8
                             i32.sub
                             i32.load
                             br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner5 $src/as/assembly/index/Virgs $src/as/assembly/index/Test $src/as/assembly/Board/Board $src/as/assembly/models/BoardProperties/BoardProperties $src/as/assembly/models/Cell/Cell $folding-inner1 $~lib/as-virtual/assembly/index/Virtual<~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $src/as/assembly/MineSweeperSolver/MineSweeperSolver $~lib/array/Array<i32> $src/as/assembly/Proposition/Proposition $folding-inner1 $~lib/function/Function<%28src/as/assembly/models/Cell/Cell%2Ci32%2C~lib/array/Array<src/as/assembly/models/Cell/Cell>%29=>bool> $~lib/function/Function<%28i32%2Ci32%29=>i32> $src/as/assembly/Board/Location $~lib/set/Set<i32> $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition> $src/as/assembly/models/SolverResponse/SolverResponse $src/as/assembly/models/Guess/Guess $folding-inner1 $~lib/date/Date $folding-inner5 $invalid
                            end
                            return
                           end
                           return
                          end
                          return
                         end
                         return
                        end
                        return
                       end
                       local.get $0
                       i32.load
                       local.tee $1
                       if
                        local.get $1
                        call $~lib/rt/itcms/__visit
                       end
                       local.get $0
                       i32.load offset=4
                       local.tee $0
                       if
                        local.get $0
                        call $~lib/rt/itcms/__visit
                       end
                       return
                      end
                      return
                     end
                     return
                    end
                    return
                   end
                   local.get $0
                   local.get $0
                   i32.const 20
                   i32.sub
                   i32.load offset=16
                   i32.add
                   local.set $1
                   loop $while-continue|0
                    local.get $0
                    local.get $1
                    i32.lt_u
                    if
                     local.get $0
                     i32.load
                     local.tee $2
                     if
                      local.get $2
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.const 4
                     i32.add
                     local.set $0
                     br $while-continue|0
                    end
                   end
                   return
                  end
                  local.get $0
                  i32.load
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=8
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=12
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=16
                  local.tee $0
                  if
                   local.get $0
                   call $~lib/rt/itcms/__visit
                  end
                  return
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 4
                 i32.sub
                 global.set $~lib/memory/__stack_pointer
                 global.get $~lib/memory/__stack_pointer
                 i32.const 7532
                 i32.lt_s
                 br_if $folding-inner4
                 global.get $~lib/memory/__stack_pointer
                 local.tee $1
                 i32.const 0
                 i32.store
                 local.get $1
                 local.get $0
                 i32.store
                 local.get $0
                 i32.load
                 call $~lib/rt/itcms/__visit
                 br $folding-inner2
                end
                local.get $0
                i32.load
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                br $folding-inner3
               end
               local.get $0
               call $~lib/function/Function<%28src/as/assembly/models/Cell/Cell%2Ci32%2C~lib/array/Array<src/as/assembly/models/Cell/Cell>%29=>bool>~visit
               return
              end
              local.get $0
              call $~lib/function/Function<%28src/as/assembly/models/Cell/Cell%2Ci32%2C~lib/array/Array<src/as/assembly/models/Cell/Cell>%29=>bool>~visit
              return
             end
             return
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 7532
            i32.lt_s
            br_if $folding-inner4
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            i32.const 0
            i32.store
            local.get $1
            local.get $0
            i32.store
            local.get $0
            i32.load
            call $~lib/rt/itcms/__visit
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.store
            local.get $0
            i32.load offset=8
            call $~lib/rt/itcms/__visit
            br $folding-inner2
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 4
           i32.sub
           global.set $~lib/memory/__stack_pointer
           global.get $~lib/memory/__stack_pointer
           i32.const 7532
           i32.lt_s
           br_if $folding-inner4
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           i32.const 0
           i32.store
           local.get $1
           local.get $0
           i32.store
           local.get $0
           i32.load
           call $~lib/rt/itcms/__visit
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store
           local.get $0
           i32.load offset=8
           local.tee $2
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store
           local.get $1
           local.get $0
           i32.load offset=16
           i32.const 12
           i32.mul
           i32.add
           local.set $0
           loop $while-continue|01
            local.get $0
            local.get $1
            i32.gt_u
            if
             local.get $1
             i32.load offset=8
             i32.const 1
             i32.and
             i32.eqz
             if
              local.get $1
              i32.load
              call $~lib/rt/itcms/__visit
              local.get $1
              i32.load offset=4
              call $~lib/rt/itcms/__visit
             end
             local.get $1
             i32.const 12
             i32.add
             local.set $1
             br $while-continue|01
            end
           end
           local.get $2
           call $~lib/rt/itcms/__visit
           br $folding-inner2
          end
          local.get $0
          i32.load
          local.tee $1
          if
           local.get $1
           call $~lib/rt/itcms/__visit
          end
          local.get $0
          i32.load offset=4
          local.tee $1
          if
           local.get $1
           call $~lib/rt/itcms/__visit
          end
          br $folding-inner3
         end
         return
        end
        return
       end
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 7532
      i32.lt_s
      br_if $folding-inner4
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i32.const 0
      i32.store
      local.get $2
      local.get $0
      i32.store
      local.get $0
      i32.load offset=4
      local.set $1
      local.get $2
      local.get $0
      i32.store
      local.get $1
      local.get $0
      i32.load offset=12
      i32.const 2
      i32.shl
      i32.add
      local.set $3
      loop $while-continue|00
       local.get $1
       local.get $3
       i32.lt_u
       if
        local.get $1
        i32.load
        local.tee $2
        if
         local.get $2
         call $~lib/rt/itcms/__visit
        end
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      call $~lib/rt/itcms/__visit
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    local.get $0
    i32.load offset=8
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    return
   end
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  memory.size
  i32.const 16
  i32.shl
  i32.const 40300
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1396
  i32.const 1392
  i32.store
  i32.const 1400
  i32.const 1392
  i32.store
  i32.const 1392
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1428
  i32.const 1424
  i32.store
  i32.const 1432
  i32.const 1424
  i32.store
  i32.const 1424
  global.set $~lib/rt/itcms/toSpace
  i32.const 1572
  i32.const 1568
  i32.store
  i32.const 1576
  i32.const 1568
  i32.store
  i32.const 1568
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $src/as/assembly/index/virgs
 )
 (func $~lib/string/String#trimStart (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if (result i32)
    block $__inlined_func$~lib/util/string/isSpace$3 (result i32)
     local.get $0
     local.get $1
     i32.add
     i32.load16_u
     local.tee $3
     i32.const 5760
     i32.lt_u
     if
      local.get $3
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $3
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      br $__inlined_func$~lib/util/string/isSpace$3
     end
     i32.const 1
     local.get $3
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$3
     drop
     block $break|0
      block $case6|0
       local.get $3
       i32.const 5760
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 8232
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 8233
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 8239
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 8287
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 12288
       i32.eq
       br_if $case6|0
       local.get $3
       i32.const 65279
       i32.eq
       br_if $case6|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace$3
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $3
  local.get $1
  i32.store
  local.get $4
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  i32.ne
  if
   local.get $3
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.eq
  if
   local.get $3
   local.get $0
   i32.store
   local.get $0
   i32.load offset=16
   i32.load16_u
   local.get $1
   i32.load16_u
   i32.eq
   local.set $0
   local.get $3
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.store
  local.get $0
  i32.load offset=16
  local.set $3
  local.get $4
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $0
  block $~lib/util/memory/memcmp|inlined.0
   local.get $1
   local.get $3
   i32.eq
   br_if $~lib/util/memory/memcmp|inlined.0
   local.get $3
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $3
     i32.const 7
     i32.and
     if
      i32.const 0
      local.set $2
      local.get $0
      i32.eqz
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $3
      i32.load8_u
      local.tee $4
      local.get $1
      i32.load8_u
      local.tee $5
      i32.sub
      local.set $2
      local.get $4
      local.get $5
      i32.ne
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    loop $while-continue|1
     local.get $0
     i32.const 8
     i32.ge_u
     if
      local.get $3
      i64.load
      local.get $1
      i64.load
      i64.eq
      if
       local.get $3
       i32.const 8
       i32.add
       local.set $3
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       local.get $0
       i32.const 8
       i32.sub
       local.set $0
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $0
    local.tee $2
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    if
     local.get $3
     i32.load8_u
     local.tee $4
     local.get $1
     i32.load8_u
     local.tee $5
     i32.sub
     local.set $2
     local.get $4
     local.get $5
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   i32.const 0
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.eqz
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 20
  memory.fill
  local.get $5
  local.get $1
  i32.store
  local.get $5
  i32.const 1760
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 1760
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $3
    i32.const 1
    i32.shl
    local.set $0
    i32.const 0
    local.set $1
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const -2
     i32.and
     i32.add
     local.set $3
    end
    local.get $0
    local.get $2
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     loop $for-loop|0
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|0
      end
     end
     i32.const 0
     local.get $1
     i32.sub
     local.set $1
    else
     loop $for-loop|1
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
    end
    local.get $5
    local.get $1
    i32.store
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store
   local.get $5
   i32.const 1792
   i32.store offset=4
   local.get $1
   i32.const 1792
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    local.get $3
    i32.const 1
    i32.shl
    local.set $0
    i32.const 0
    local.set $1
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const -2
     i32.and
     i32.add
     local.set $3
    end
    local.get $0
    local.get $2
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     loop $for-loop|2
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|2
      end
     end
     i32.const 0
     local.get $1
     i32.sub
     local.set $1
    else
     loop $for-loop|3
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|3
      end
     end
    end
    local.get $5
    local.get $1
    i32.store offset=4
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store
   local.get $5
   i32.const 1824
   i32.store offset=4
   local.get $1
   i32.const 1824
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $3
    i32.const 1
    i32.shl
    local.set $0
    i32.const 0
    local.set $1
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const -2
     i32.and
     i32.add
     local.set $3
    end
    local.get $0
    local.get $2
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     loop $for-loop|4
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|4
      end
     end
     i32.const 0
     local.get $1
     i32.sub
     local.set $1
    else
     loop $for-loop|5
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|5
      end
     end
    end
    local.get $5
    local.get $1
    i32.store offset=8
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  local.get $0
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $4
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $4
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store
  local.get $3
  if
   local.get $4
   local.get $0
   i32.store
   local.get $4
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   i32.store offset=16
   local.get $4
   local.get $0
   i32.store
   local.get $0
   local.get $3
   local.get $2
   i32.sub
   i32.const 1
   i32.shl
   i32.store offset=8
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   i32.store offset=16
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $2
   i32.sub
   i32.const 1
   i32.shl
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.le_s
  if
   i32.const 1856
   i32.const 1936
   i32.const 50
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  local.get $0
  i32.load16_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#startsWith (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $2
  local.get $1
  i32.store
  local.get $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.lt_s
  if
   local.get $2
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   local.set $2
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
   if
    loop $do-loop|0
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $1
     i32.load16_u
     local.tee $3
     local.get $2
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $4
      local.get $3
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.eqz
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $5
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1680
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     local.get $5
     local.get $6
     i32.store offset=8
     local.get $2
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 1680
  i32.store offset=8
  local.get $1
  local.get $2
  local.get $4
  i32.const 1676
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $5
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.store offset=4
    local.get $1
    if
     local.get $7
     local.get $1
     i32.store offset=8
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $5
    if
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 1680
     local.get $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $6
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 1680
  i32.store
  local.get $0
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 32
  memory.fill
  local.get $5
  local.get $1
  i32.store
  local.get $5
  i32.const 2256
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 2256
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $3
    i32.const 1
    i32.shl
    local.set $0
    i32.const 0
    local.set $1
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const -2
     i32.and
     i32.add
     local.set $3
    end
    local.get $0
    local.get $2
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     loop $for-loop|0
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|0
      end
     end
     i32.const 0
     local.get $1
     i32.sub
     local.set $1
    else
     loop $for-loop|1
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
    end
    local.get $5
    local.get $1
    i32.store
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store
   local.get $5
   i32.const 2288
   i32.store offset=4
   local.get $1
   i32.const 2288
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    local.get $3
    i32.const 1
    i32.shl
    local.set $0
    i32.const 0
    local.set $1
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const -2
     i32.and
     i32.add
     local.set $3
    end
    local.get $0
    local.get $2
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     loop $for-loop|2
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|2
      end
     end
     i32.const 0
     local.get $1
     i32.sub
     local.set $1
    else
     loop $for-loop|3
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       local.get $2
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       local.get $1
       i32.const 10
       i32.mul
       i32.add
       local.set $1
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|3
      end
     end
    end
    local.get $5
    local.get $1
    i32.store offset=4
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store
   local.get $5
   i32.const 2336
   i32.store offset=4
   local.get $1
   i32.const 2336
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     local.get $3
     local.get $4
     call $~lib/string/String#slice
     local.set $2
    end
    local.get $2
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $2
    i32.store offset=20
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 3
    i32.gt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store offset=4
     local.get $1
     i32.const 1056
     i32.store offset=24
     local.get $2
     i32.const 1056
     call $~lib/string/String#startsWith
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $2
     i32.store offset=4
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.const 4
     i32.gt_u
     if (result i32)
      local.get $0
      local.get $2
      i32.store offset=4
      local.get $0
      i32.const 1088
      i32.store offset=24
      local.get $2
      i32.const 1088
      call $~lib/string/String#startsWith
     else
      i32.const 0
     end
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $2
      i32.store offset=28
      local.get $0
      i32.const 2496
      i32.store offset=4
      local.get $0
      local.get $2
      i32.store offset=24
      i32.const 2500
      local.get $2
      i32.store
      i32.const 2496
      local.get $2
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 2496
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1680
      i32.store offset=24
      i32.const 2496
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      i32.const 2528
      i32.const 421
      i32.const 8
      call $~lib/builtins/abort
      unreachable
     end
     i32.const 0
    end
    i32.store8 offset=8
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2160
    i32.const 2208
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   if
    i32.const 1073741820
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 188
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.const 188
   memory.fill
   local.get $6
   local.get $1
   i32.store
   local.get $6
   i32.const 1712
   i32.store offset=4
   local.get $1
   i32.const 1712
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $2
     local.get $3
     local.get $4
     call $~lib/string/String#slice
     local.set $2
    end
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $2
    i32.store offset=8
    local.get $1
    local.get $2
    call $~lib/string/String#trimStart
    local.tee $2
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 7
    call $~lib/rt/itcms/__new
    local.tee $6
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
    local.tee $7
    i32.store offset=28
    i32.const 1
    local.set $3
    loop $for-loop|0
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $2
     i32.store offset=8
     local.get $3
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.const 1
     i32.sub
     i32.lt_s
     if
      local.get $1
      local.get $2
      i32.store offset=32
      local.get $2
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
      local.tee $1
      i32.const 91
      i32.eq
      if
       local.get $3
       local.set $4
       loop $for-loop|1
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $2
        i32.store offset=8
        local.get $4
        local.get $2
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.const 1
        i32.sub
        i32.lt_s
        if
         block $for-break1
          local.get $1
          local.get $2
          i32.store offset=36
          local.get $2
          local.get $4
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          local.tee $1
          i32.const 91
          i32.eq
          if
           local.get $5
           i32.const 1
           i32.add
           local.set $5
          else
           local.get $1
           i32.const 93
           i32.eq
           if
            local.get $5
            i32.const 1
            i32.sub
            local.tee $5
            i32.eqz
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $6
             i32.store offset=8
             local.get $1
             local.get $7
             i32.store offset=40
             local.get $1
             local.get $2
             i32.store offset=44
             local.get $6
             local.get $7
             local.get $2
             local.get $3
             local.get $4
             i32.const 1
             i32.add
             local.tee $3
             call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             i32.const 0
             local.set $10
             br $for-break1
            end
           end
          end
          local.get $4
          i32.const 1
          i32.add
          local.set $4
          br $for-loop|1
         end
        end
       end
      else
       local.get $1
       i32.const 123
       i32.eq
       if
        local.get $3
        local.set $4
        loop $for-loop|2
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $2
         i32.store offset=8
         local.get $4
         local.get $2
         i32.const 20
         i32.sub
         i32.load offset=16
         i32.const 1
         i32.shr_u
         i32.const 1
         i32.sub
         i32.lt_s
         if
          block $for-break2
           local.get $1
           local.get $2
           i32.store offset=48
           local.get $2
           local.get $4
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.tee $1
           i32.const 123
           i32.eq
           if
            local.get $5
            i32.const 1
            i32.add
            local.set $5
           else
            local.get $1
            i32.const 125
            i32.eq
            if
             local.get $5
             i32.const 1
             i32.sub
             local.tee $5
             i32.eqz
             if
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $6
              i32.store offset=8
              local.get $1
              local.get $7
              i32.store offset=40
              local.get $1
              local.get $2
              i32.store offset=44
              local.get $6
              local.get $7
              local.get $2
              local.get $3
              local.get $4
              i32.const 1
              i32.add
              local.tee $3
              call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              i32.const 0
              local.set $10
              br $for-break2
             end
            end
           end
           local.get $4
           i32.const 1
           i32.add
           local.set $4
           br $for-loop|2
          end
         end
        end
       else
        local.get $1
        i32.const 34
        i32.eq
        if
         i32.const 0
         local.set $1
         local.get $3
         i32.const 1
         i32.add
         local.tee $3
         local.set $4
         loop $for-loop|3
          global.get $~lib/memory/__stack_pointer
          local.tee $8
          local.get $2
          i32.store offset=8
          local.get $4
          local.get $2
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.const 1
          i32.sub
          i32.lt_s
          if
           block $for-break3
            local.get $8
            local.get $2
            i32.store offset=52
            local.get $1
            i32.eqz
            local.get $2
            local.get $4
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            local.tee $8
            i32.const 92
            i32.eq
            i32.and
            if (result i32)
             i32.const 1
            else
             local.get $1
             i32.eqz
             local.get $8
             i32.const 34
             i32.eq
             i32.and
             if
              local.get $10
              if (result i32)
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               local.get $6
               i32.store offset=8
               local.get $1
               local.get $7
               i32.store offset=40
               local.get $1
               local.get $2
               i32.store offset=44
               local.get $6
               local.get $7
               local.get $2
               local.get $3
               local.get $4
               call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
               i32.const 0
              else
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               local.get $7
               i32.store offset=8
               local.get $1
               local.get $2
               i32.store offset=40
               local.get $7
               local.get $2
               local.get $3
               local.get $4
               call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
               i32.const 1
              end
              local.set $10
              local.get $4
              i32.const 1
              i32.add
              local.set $3
              br $for-break3
             end
             i32.const 0
            end
            local.set $1
            local.get $4
            i32.const 1
            i32.add
            local.set $4
            br $for-loop|3
           end
          end
         end
        else
         local.get $1
         i32.const 110
         i32.eq
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $6
          i32.store offset=8
          local.get $1
          local.get $7
          i32.store offset=40
          local.get $1
          i32.const 1120
          i32.store offset=44
          local.get $6
          local.get $7
          i32.const 1120
          i32.const 0
          i32.const 4
          call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
          i32.const 0
          local.set $10
         else
          local.get $1
          i32.const 116
          i32.eq
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store offset=56
           local.get $2
           local.get $3
           i32.const 1
           i32.add
           local.tee $3
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           i32.const 114
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store offset=60
           local.get $2
           local.get $3
           i32.const 1
           i32.add
           local.tee $3
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           i32.const 117
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store offset=64
           local.get $2
           local.get $3
           i32.const 1
           i32.add
           local.tee $3
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           i32.const 101
           i32.eq
          else
           i32.const 0
          end
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $6
           i32.store offset=8
           local.get $1
           local.get $7
           i32.store offset=40
           local.get $1
           i32.const 1056
           i32.store offset=44
           local.get $6
           local.get $7
           i32.const 1056
           i32.const 0
           i32.const 4
           call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $10
          else
           local.get $1
           i32.const 102
           i32.eq
           if (result i32)
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $2
            i32.store offset=68
            local.get $2
            local.get $3
            i32.const 1
            i32.add
            local.tee $3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            local.set $8
            local.get $4
            i32.const 2032
            i32.store offset=8
            i32.const 2032
            call $~lib/string/String#charCodeAt
            local.get $8
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $2
            i32.store offset=72
            local.get $2
            local.get $3
            i32.const 1
            i32.add
            local.tee $3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            local.set $8
            local.get $4
            i32.const 2064
            i32.store offset=8
            i32.const 2064
            call $~lib/string/String#charCodeAt
            local.get $8
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $2
            i32.store offset=76
            local.get $2
            local.get $3
            i32.const 1
            i32.add
            local.tee $3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            local.set $8
            local.get $4
            i32.const 2096
            i32.store offset=8
            i32.const 2096
            call $~lib/string/String#charCodeAt
            local.get $8
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $2
            i32.store offset=80
            local.get $2
            local.get $3
            i32.const 1
            i32.add
            local.tee $3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            i32.const 101
            i32.eq
           else
            i32.const 0
           end
           if
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $6
            i32.store offset=8
            local.get $1
            local.get $7
            i32.store offset=40
            local.get $1
            i32.const 1088
            i32.store offset=44
            local.get $6
            local.get $7
            i32.const 1088
            i32.const 0
            i32.const 5
            call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $10
           else
            local.get $1
            i32.const 57
            i32.le_u
            local.get $1
            i32.const 48
            i32.ge_u
            i32.and
            local.get $1
            i32.const 45
            i32.eq
            i32.or
            if
             local.get $3
             i32.const 1
             i32.add
             local.tee $3
             local.set $4
             loop $for-loop|4
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $2
              i32.store offset=8
              local.get $4
              local.get $2
              i32.const 20
              i32.sub
              i32.load offset=16
              i32.const 1
              i32.shr_u
              i32.lt_s
              if
               block $for-break4
                local.get $1
                local.get $2
                i32.store offset=84
                local.get $2
                local.get $4
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                local.tee $1
                i32.const 125
                i32.eq
                local.get $1
                i32.const 44
                i32.eq
                i32.or
                if (result i32)
                 i32.const 1
                else
                 block $__inlined_func$~lib/util/string/isSpace$5 (result i32)
                  local.get $1
                  i32.const 128
                  i32.or
                  i32.const 160
                  i32.eq
                  local.get $1
                  i32.const 9
                  i32.sub
                  i32.const 4
                  i32.le_u
                  i32.or
                  local.get $1
                  i32.const 5760
                  i32.lt_u
                  br_if $__inlined_func$~lib/util/string/isSpace$5
                  drop
                  i32.const 1
                  local.get $1
                  i32.const -8192
                  i32.add
                  i32.const 10
                  i32.le_u
                  br_if $__inlined_func$~lib/util/string/isSpace$5
                  drop
                  block $break|0
                   block $case6|0
                    local.get $1
                    i32.const 5760
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 8232
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 8233
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 8239
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 8287
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 12288
                    i32.eq
                    br_if $case6|0
                    local.get $1
                    i32.const 65279
                    i32.eq
                    br_if $case6|0
                    br $break|0
                   end
                   i32.const 1
                   br $__inlined_func$~lib/util/string/isSpace$5
                  end
                  i32.const 0
                 end
                end
                if
                 global.get $~lib/memory/__stack_pointer
                 local.tee $1
                 local.get $6
                 i32.store offset=8
                 local.get $1
                 local.get $7
                 i32.store offset=40
                 local.get $1
                 local.get $2
                 i32.store offset=44
                 local.get $6
                 local.get $7
                 local.get $2
                 local.get $3
                 i32.const 1
                 i32.sub
                 local.get $4
                 call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                 local.get $4
                 local.set $3
                 i32.const 0
                 local.set $10
                 br $for-break4
                end
                local.get $4
                i32.const 1
                i32.add
                local.set $4
                br $for-loop|4
               end
              end
             end
            end
           end
          end
         end
        end
       end
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 188
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store
   local.get $5
   i32.const 2128
   i32.store offset=4
   local.get $1
   i32.const 2128
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $2
     local.get $3
     local.get $4
     call $~lib/string/String#slice
     local.set $2
    end
    local.get $2
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $2
    i32.store offset=92
    local.get $0
    i32.const 9
    i32.const 8
    call $~lib/rt/itcms/__new
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.tee $6
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i64.const 0
    i64.store offset=8
    local.get $0
    i32.const 16
    i32.const 9
    call $~lib/rt/itcms/__new
    local.tee $13
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 0
    i32.store
    local.get $13
    i32.const 0
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 32
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $13
    local.get $0
    i32.store
    local.get $13
    local.get $0
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 32
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $13
    i32.const 0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=104
    i32.const 1
    local.set $1
    loop $for-loop|5
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $6
     i32.store offset=8
     local.get $10
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.lt_u
     if
      local.get $0
      local.get $6
      i32.store offset=108
      local.get $6
      local.get $10
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
      local.tee $0
      i32.const 123
      i32.eq
      if
       local.get $1
       local.get $10
       local.get $8
       select
       local.set $1
       local.get $8
       i32.const 1
       i32.add
       local.set $8
      else
       local.get $0
       i32.const 125
       i32.eq
       if
        local.get $8
        i32.const 1
        i32.sub
        local.tee $8
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $0
         local.get $13
         i32.store offset=8
         local.get $0
         local.get $6
         i32.store offset=44
         local.get $0
         local.get $6
         local.get $1
         local.get $10
         i32.const 1
         i32.add
         local.tee $10
         call $~lib/string/String#slice
         local.tee $0
         i32.store offset=112
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=44
         global.get $~lib/memory/__stack_pointer
         local.get $0
         call $~lib/string/String#trimStart
         local.tee $7
         i32.store offset=116
         global.get $~lib/memory/__stack_pointer
         i32.const 9
         i32.const 8
         call $~lib/rt/itcms/__new
         local.tee $12
         i32.store offset=120
         global.get $~lib/memory/__stack_pointer
         call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
         local.tee $11
         i32.store offset=128
         i32.const 0
         local.set $4
         i32.const 0
         local.set $9
         i32.const 1
         local.set $3
         loop $for-loop|6
          global.get $~lib/memory/__stack_pointer
          local.tee $0
          local.get $7
          i32.store offset=44
          local.get $3
          local.get $7
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.const 1
          i32.sub
          i32.lt_s
          if
           local.get $0
           local.get $7
           i32.store offset=132
           local.get $7
           local.get $3
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.tee $0
           i32.const 91
           i32.eq
           if
            local.get $3
            local.set $0
            loop $for-loop|7
             global.get $~lib/memory/__stack_pointer
             local.tee $2
             local.get $7
             i32.store offset=44
             local.get $0
             local.get $7
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.const 1
             i32.shr_u
             i32.const 1
             i32.sub
             i32.lt_s
             if
              block $for-break7
               local.get $2
               local.get $7
               i32.store offset=136
               local.get $7
               local.get $0
               i32.const 1
               i32.shl
               i32.add
               i32.load16_u
               local.tee $2
               i32.const 91
               i32.eq
               if
                local.get $9
                i32.const 1
                i32.add
                local.set $9
               else
                local.get $2
                i32.const 93
                i32.eq
                if
                 local.get $9
                 i32.const 1
                 i32.sub
                 local.tee $9
                 i32.eqz
                 if
                  global.get $~lib/memory/__stack_pointer
                  local.tee $2
                  local.get $12
                  i32.store offset=44
                  local.get $2
                  local.get $11
                  i32.store offset=140
                  local.get $2
                  local.get $7
                  i32.store offset=144
                  local.get $12
                  local.get $11
                  local.get $7
                  local.get $3
                  local.get $0
                  i32.const 1
                  i32.add
                  local.tee $3
                  call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                  i32.const 0
                  local.set $4
                  br $for-break7
                 end
                end
               end
               local.get $0
               i32.const 1
               i32.add
               local.set $0
               br $for-loop|7
              end
             end
            end
           else
            local.get $0
            i32.const 123
            i32.eq
            if
             local.get $3
             local.set $0
             loop $for-loop|8
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $7
              i32.store offset=44
              local.get $0
              local.get $7
              i32.const 20
              i32.sub
              i32.load offset=16
              i32.const 1
              i32.shr_u
              i32.const 1
              i32.sub
              i32.lt_s
              if
               block $for-break8
                local.get $2
                local.get $7
                i32.store offset=148
                local.get $7
                local.get $0
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                local.tee $2
                i32.const 123
                i32.eq
                if
                 local.get $9
                 i32.const 1
                 i32.add
                 local.set $9
                else
                 local.get $2
                 i32.const 125
                 i32.eq
                 if
                  local.get $9
                  i32.const 1
                  i32.sub
                  local.tee $9
                  i32.eqz
                  if
                   global.get $~lib/memory/__stack_pointer
                   local.tee $2
                   local.get $12
                   i32.store offset=44
                   local.get $2
                   local.get $11
                   i32.store offset=140
                   local.get $2
                   local.get $7
                   i32.store offset=144
                   local.get $12
                   local.get $11
                   local.get $7
                   local.get $3
                   local.get $0
                   i32.const 1
                   i32.add
                   local.tee $3
                   call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                   i32.const 0
                   local.set $4
                   br $for-break8
                  end
                 end
                end
                local.get $0
                i32.const 1
                i32.add
                local.set $0
                br $for-loop|8
               end
              end
             end
            else
             local.get $0
             i32.const 34
             i32.eq
             if
              i32.const 0
              local.set $2
              local.get $3
              i32.const 1
              i32.add
              local.tee $3
              local.set $0
              loop $for-loop|9
               global.get $~lib/memory/__stack_pointer
               local.tee $14
               local.get $7
               i32.store offset=44
               local.get $0
               local.get $7
               i32.const 20
               i32.sub
               i32.load offset=16
               i32.const 1
               i32.shr_u
               i32.const 1
               i32.sub
               i32.lt_s
               if
                block $for-break9
                 local.get $14
                 local.get $7
                 i32.store offset=152
                 local.get $2
                 i32.eqz
                 local.get $7
                 local.get $0
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 local.tee $14
                 i32.const 92
                 i32.eq
                 i32.and
                 if (result i32)
                  i32.const 1
                 else
                  local.get $2
                  i32.eqz
                  local.get $14
                  i32.const 34
                  i32.eq
                  i32.and
                  if
                   local.get $4
                   if (result i32)
                    global.get $~lib/memory/__stack_pointer
                    local.tee $2
                    local.get $12
                    i32.store offset=44
                    local.get $2
                    local.get $11
                    i32.store offset=140
                    local.get $2
                    local.get $7
                    i32.store offset=144
                    local.get $12
                    local.get $11
                    local.get $7
                    local.get $3
                    local.get $0
                    call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                    i32.const 0
                   else
                    global.get $~lib/memory/__stack_pointer
                    local.tee $2
                    local.get $11
                    i32.store offset=44
                    local.get $2
                    local.get $7
                    i32.store offset=140
                    local.get $11
                    local.get $7
                    local.get $3
                    local.get $0
                    call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
                    i32.const 1
                   end
                   local.set $4
                   local.get $0
                   i32.const 1
                   i32.add
                   local.set $3
                   br $for-break9
                  end
                  i32.const 0
                 end
                 local.set $2
                 local.get $0
                 i32.const 1
                 i32.add
                 local.set $0
                 br $for-loop|9
                end
               end
              end
             else
              local.get $0
              i32.const 110
              i32.eq
              if
               global.get $~lib/memory/__stack_pointer
               local.tee $0
               local.get $12
               i32.store offset=44
               local.get $0
               local.get $11
               i32.store offset=140
               local.get $0
               i32.const 1120
               i32.store offset=144
               local.get $12
               local.get $11
               i32.const 1120
               i32.const 0
               i32.const 4
               call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
               i32.const 0
               local.set $4
              else
               local.get $0
               i32.const 116
               i32.eq
               if (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $7
                i32.store offset=156
                local.get $7
                local.get $3
                i32.const 1
                i32.add
                local.tee $3
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                i32.const 114
                i32.eq
               else
                i32.const 0
               end
               if (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $7
                i32.store offset=160
                local.get $7
                local.get $3
                i32.const 1
                i32.add
                local.tee $3
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                i32.const 117
                i32.eq
               else
                i32.const 0
               end
               if (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $7
                i32.store offset=164
                local.get $7
                local.get $3
                i32.const 1
                i32.add
                local.tee $3
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                i32.const 101
                i32.eq
               else
                i32.const 0
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $0
                local.get $12
                i32.store offset=44
                local.get $0
                local.get $11
                i32.store offset=140
                local.get $0
                i32.const 1056
                i32.store offset=144
                local.get $12
                local.get $11
                i32.const 1056
                i32.const 0
                i32.const 4
                call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                i32.const 0
                local.set $4
               else
                local.get $0
                i32.const 102
                i32.eq
                if (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.tee $2
                 local.get $7
                 i32.store offset=168
                 local.get $7
                 local.get $3
                 i32.const 1
                 i32.add
                 local.tee $3
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 local.set $14
                 local.get $2
                 i32.const 2032
                 i32.store offset=44
                 i32.const 2032
                 call $~lib/string/String#charCodeAt
                 local.get $14
                 i32.eq
                else
                 i32.const 0
                end
                if (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.tee $2
                 local.get $7
                 i32.store offset=172
                 local.get $7
                 local.get $3
                 i32.const 1
                 i32.add
                 local.tee $3
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 local.set $14
                 local.get $2
                 i32.const 2064
                 i32.store offset=44
                 i32.const 2064
                 call $~lib/string/String#charCodeAt
                 local.get $14
                 i32.eq
                else
                 i32.const 0
                end
                if (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.tee $2
                 local.get $7
                 i32.store offset=176
                 local.get $7
                 local.get $3
                 i32.const 1
                 i32.add
                 local.tee $3
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 local.set $14
                 local.get $2
                 i32.const 2096
                 i32.store offset=44
                 i32.const 2096
                 call $~lib/string/String#charCodeAt
                 local.get $14
                 i32.eq
                else
                 i32.const 0
                end
                if (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.get $7
                 i32.store offset=180
                 local.get $7
                 local.get $3
                 i32.const 1
                 i32.add
                 local.tee $3
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 i32.const 101
                 i32.eq
                else
                 i32.const 0
                end
                if
                 global.get $~lib/memory/__stack_pointer
                 local.tee $0
                 local.get $12
                 i32.store offset=44
                 local.get $0
                 local.get $11
                 i32.store offset=140
                 local.get $0
                 i32.const 1088
                 i32.store offset=144
                 local.get $12
                 local.get $11
                 i32.const 1088
                 i32.const 0
                 i32.const 5
                 call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                 i32.const 0
                 local.set $4
                else
                 local.get $0
                 i32.const 57
                 i32.le_u
                 local.get $0
                 i32.const 48
                 i32.ge_u
                 i32.and
                 local.get $0
                 i32.const 45
                 i32.eq
                 i32.or
                 if
                  local.get $3
                  i32.const 1
                  i32.add
                  local.tee $3
                  local.set $0
                  loop $for-loop|10
                   global.get $~lib/memory/__stack_pointer
                   local.tee $2
                   local.get $7
                   i32.store offset=44
                   local.get $0
                   local.get $7
                   i32.const 20
                   i32.sub
                   i32.load offset=16
                   i32.const 1
                   i32.shr_u
                   i32.lt_s
                   if
                    block $for-break10
                     local.get $2
                     local.get $7
                     i32.store offset=184
                     local.get $7
                     local.get $0
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     local.tee $2
                     i32.const 125
                     i32.eq
                     local.get $2
                     i32.const 44
                     i32.eq
                     i32.or
                     if (result i32)
                      i32.const 1
                     else
                      block $__inlined_func$~lib/util/string/isSpace$7 (result i32)
                       local.get $2
                       i32.const 128
                       i32.or
                       i32.const 160
                       i32.eq
                       local.get $2
                       i32.const 9
                       i32.sub
                       i32.const 4
                       i32.le_u
                       i32.or
                       local.get $2
                       i32.const 5760
                       i32.lt_u
                       br_if $__inlined_func$~lib/util/string/isSpace$7
                       drop
                       i32.const 1
                       local.get $2
                       i32.const -8192
                       i32.add
                       i32.const 10
                       i32.le_u
                       br_if $__inlined_func$~lib/util/string/isSpace$7
                       drop
                       block $break|00
                        block $case6|01
                         local.get $2
                         i32.const 5760
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 8232
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 8233
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 8239
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 8287
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 12288
                         i32.eq
                         br_if $case6|01
                         local.get $2
                         i32.const 65279
                         i32.eq
                         br_if $case6|01
                         br $break|00
                        end
                        i32.const 1
                        br $__inlined_func$~lib/util/string/isSpace$7
                       end
                       i32.const 0
                      end
                     end
                     if
                      global.get $~lib/memory/__stack_pointer
                      local.tee $2
                      local.get $12
                      i32.store offset=44
                      local.get $2
                      local.get $11
                      i32.store offset=140
                      local.get $2
                      local.get $7
                      i32.store offset=144
                      local.get $12
                      local.get $11
                      local.get $7
                      local.get $3
                      i32.const 1
                      i32.sub
                      local.get $0
                      call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                      local.get $0
                      local.set $3
                      i32.const 0
                      local.set $4
                      br $for-break10
                     end
                     local.get $0
                     i32.const 1
                     i32.add
                     local.set $0
                     br $for-loop|10
                    end
                   end
                  end
                 end
                end
               end
              end
             end
            end
           end
           local.get $3
           i32.const 1
           i32.add
           local.set $3
           br $for-loop|6
          end
         end
         global.get $~lib/memory/__stack_pointer
         local.get $12
         i32.store offset=40
         local.get $13
         local.get $12
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
        end
       end
      end
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=4
    local.get $5
    local.get $13
    i32.store offset=4
    local.get $5
    local.get $13
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 188
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 188
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/Board/Board#getRevealedCells~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load8_u offset=8
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1472
   i32.const 2208
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 2960
   i32.const 2208
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1472
    i32.const 2208
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1472
   i32.const 2208
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $0
   i32.store
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $0
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf$633
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.eqz
    local.get $4
    i32.const 0
    i32.le_s
    i32.or
    if
     local.get $3
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $2
     br $__inlined_func$~lib/array/Array<i32>#indexOf$633
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|0
     local.get $2
     local.get $4
     i32.lt_s
     if
      local.get $0
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $1
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/array/Array<i32>#indexOf$633
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.const 0
   i32.ge_s
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Proposition/Proposition#removeSafeCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 13
  i32.const 3088
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load
   local.tee $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $1
    local.get $5
    local.get $2
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $5
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.get $4
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $2
  local.get $1
  i32.store
  local.get $1
  i32.load offset=12
  local.tee $2
  local.get $3
  i32.add
  local.tee $4
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2160
   i32.const 2208
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 13
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $5
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  memory.copy
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $5
  i32.add
  local.get $1
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/util/sort/SORT<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   i32.const 48
   i32.le_s
   if
    local.get $1
    i32.const 1
    i32.le_s
    br_if $folding-inner0
    block $break|0
     block $case1|0
      local.get $1
      i32.const 3
      i32.ne
      if
       local.get $1
       i32.const 2
       i32.eq
       br_if $case1|0
       br $break|0
      end
      local.get $0
      i32.load
      local.set $1
      local.get $0
      i32.load offset=4
      local.set $3
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $3
      local.get $1
      local.get $1
      local.get $3
      local.get $2
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.tee $4
      select
      i32.store
      local.get $0
      i32.load offset=8
      local.set $5
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $5
      local.get $1
      local.get $3
      local.get $4
      select
      local.tee $1
      local.get $1
      local.get $5
      local.get $2
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.tee $3
      select
      i32.store offset=4
      local.get $0
      local.get $1
      local.get $5
      local.get $3
      select
      i32.store offset=8
     end
     local.get $0
     i32.load
     local.set $1
     local.get $0
     i32.load offset=4
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     local.get $2
     i32.load
     call_indirect (type $0)
     i32.const 0
     i32.gt_s
     local.tee $2
     select
     i32.store
     local.get $0
     local.get $1
     local.get $3
     local.get $2
     select
     i32.store offset=4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $0
    i32.const 0
    local.get $1
    i32.const 1
    i32.sub
    i32.const 0
    local.get $2
    call $~lib/util/sort/insertionSort<i32>
    br $folding-inner0
   end
   i32.const 33
   local.get $1
   i32.clz
   i32.sub
   local.tee $4
   i32.const 2
   i32.shl
   local.tee $5
   i32.const 1
   i32.shl
   local.set $6
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   local.get $5
   global.get $~lib/rt/tlsf/ROOT
   local.get $6
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.tee $10
   i32.add
   local.set $11
   loop $for-loop|1
    local.get $3
    local.get $4
    i32.lt_u
    if
     local.get $10
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.const -1
     i32.store
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $1
   i32.const 2
   i32.shl
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $9
   local.get $2
   call $~lib/util/sort/extendRunRight<i32>
   local.tee $4
   i32.const 1
   i32.add
   local.tee $1
   i32.const 32
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $0
    i32.const 0
    i32.const 31
    local.get $9
    local.get $9
    i32.const 31
    i32.ge_s
    select
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/util/sort/insertionSort<i32>
   end
   i32.const 0
   local.set $1
   i32.const 0
   local.set $3
   loop $while-continue|2
    local.get $4
    local.get $9
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.tee $6
     local.get $9
     local.get $2
     call $~lib/util/sort/extendRunRight<i32>
     local.tee $5
     local.get $6
     i32.sub
     i32.const 1
     i32.add
     local.tee $7
     i32.const 32
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $0
      local.get $6
      local.get $9
      local.get $6
      i32.const 31
      i32.add
      local.tee $5
      local.get $5
      local.get $9
      i32.gt_s
      select
      local.tee $5
      local.get $7
      local.get $2
      call $~lib/util/sort/insertionSort<i32>
     end
     local.get $3
     local.get $6
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $9
     i32.const 1
     i32.add
     i64.extend_i32_u
     local.tee $13
     i64.div_u
     local.get $5
     local.get $6
     i32.add
     i32.const 1
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $13
     i64.div_u
     i64.xor
     i32.wrap_i64
     i32.clz
     local.set $7
     loop $for-loop|3
      local.get $1
      local.get $7
      i32.gt_u
      if
       local.get $1
       i32.const 2
       i32.shl
       local.tee $14
       local.get $10
       i32.add
       local.tee $15
       i32.load
       local.tee $8
       i32.const -1
       i32.ne
       if
        local.get $11
        local.get $14
        i32.add
        i32.load
        i32.const 1
        i32.add
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $0
        local.get $8
        local.get $3
        local.get $4
        local.get $12
        local.get $2
        call $~lib/util/sort/mergeRuns<i32>
        local.get $15
        i32.const -1
        i32.store
        local.get $8
        local.set $3
       end
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
       br $for-loop|3
      end
     end
     local.get $7
     i32.const 2
     i32.shl
     local.tee $1
     local.get $10
     i32.add
     local.get $3
     i32.store
     local.get $1
     local.get $11
     i32.add
     local.get $4
     i32.store
     local.get $6
     local.set $3
     local.get $5
     local.set $4
     local.get $7
     local.set $1
     br $while-continue|2
    end
   end
   loop $for-loop|4
    local.get $1
    if
     local.get $1
     i32.const 2
     i32.shl
     local.tee $3
     local.get $10
     i32.add
     i32.load
     local.tee $4
     i32.const -1
     i32.ne
     if
      local.get $3
      local.get $11
      i32.add
      i32.load
      i32.const 1
      i32.add
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $0
      local.get $4
      local.get $3
      local.get $9
      local.get $12
      local.get $2
      call $~lib/util/sort/mergeRuns<i32>
     end
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|4
    end
   end
   local.get $12
   call $~lib/rt/tlsf/__free
   local.get $10
   call $~lib/rt/tlsf/__free
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load offset=12
  local.set $4
  local.get $2
  local.get $1
  i32.store
  local.get $3
  local.get $4
  local.get $1
  call $~lib/util/sort/SORT<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $2
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    i32.const 1
    local.get $4
    local.get $5
    local.get $1
    call $src/as/assembly/Proposition/Proposition#removeSafeCells
    select
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 13
  i32.const 3120
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=16
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $5
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $2
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/array/Array<i32>#concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store offset=4
  local.get $0
  i32.const 3152
  call $~lib/array/Array<i32>#sort
  drop
  local.get $4
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.const 0
   i32.gt_s
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Board/Board#getAdjacentCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 24
   memory.fill
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store offset=4
   local.get $4
   local.get $3
   call $~lib/object/Object#constructor
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $src/as/assembly/Board/Board#get:properties
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $6
   local.get $3
   local.get $4
   i32.load offset=4
   i32.rem_s
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.load
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $src/as/assembly/Board/Board#get:properties
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $6
   local.get $1
   local.get $3
   i32.load offset=4
   i32.div_s
   i32.store offset=4
   local.get $2
   local.get $6
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 9
   i32.const 3184
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=20
   i32.const -1
   local.set $1
   loop $for-loop|0
    local.get $1
    i32.const 2
    i32.lt_s
    if
     i32.const -1
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 2
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $6
       i32.store offset=4
       local.get $2
       local.get $6
       i32.load
       i32.add
       local.set $3
       local.get $4
       local.get $6
       i32.store offset=4
       local.get $1
       local.get $6
       i32.load offset=4
       i32.add
       local.set $4
       block $for-continue|1
        local.get $3
        i32.const 0
        i32.lt_s
        if (result i32)
         i32.const 1
        else
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         local.get $0
         call $src/as/assembly/Board/Board#get:properties
         local.set $5
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store offset=4
         local.get $3
         local.get $5
         i32.load offset=4
         i32.const 1
         i32.sub
         i32.gt_s
        end
        br_if $for-continue|1
        local.get $4
        i32.const 0
        i32.lt_s
        if (result i32)
         i32.const 1
        else
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         local.get $0
         call $src/as/assembly/Board/Board#get:properties
         local.set $5
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store offset=4
         local.get $4
         local.get $5
         i32.load
         i32.const 1
         i32.sub
         i32.gt_s
        end
        br_if $for-continue|1
        local.get $1
        local.get $2
        i32.or
        i32.eqz
        br_if $for-continue|1
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        local.get $7
        i32.store offset=4
        local.get $5
        local.get $0
        i32.store offset=12
        local.get $5
        i32.const 12
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        i64.const 0
        i64.store
        local.get $5
        i32.const 0
        i32.store offset=8
        local.get $5
        local.get $0
        i32.store offset=4
        local.get $0
        call $src/as/assembly/Board/Board#get:cells
        local.set $5
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=8
        local.get $0
        call $src/as/assembly/Board/Board#get:properties
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=4
        local.get $5
        local.get $4
        local.get $8
        i32.load offset=4
        i32.mul
        local.get $3
        i32.add
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
        local.set $3
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $7
        local.get $3
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
       end
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<i32>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $0
   i32.store
   local.get $1
   i32.const -1028477379
   i32.mul
   i32.const 374761397
   i32.add
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.tee $3
   i32.const 15
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $3
   i32.const 13
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $3
   i32.const 16
   i32.shr_u
   local.get $3
   i32.xor
   local.tee $6
   local.set $3
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $4
   local.get $2
   local.get $0
   i32.store
   local.get $4
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $2
   block $__inlined_func$~lib/set/Set<i32>#find$636
    loop $while-continue|0
     local.get $2
     if
      local.get $2
      i32.load offset=4
      local.tee $3
      i32.const 1
      i32.and
      if (result i32)
       i32.const 0
      else
       local.get $1
       local.get $2
       i32.load
       i32.eq
      end
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/set/Set<i32>#find$636
      end
      local.get $3
      i32.const -2
      i32.and
      local.set $2
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    local.set $2
   end
   local.get $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=16
    local.set $3
    local.get $2
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load offset=12
    i32.eq
    if
     local.get $2
     local.get $0
     i32.store
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=20
     local.set $3
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $2
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $9
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i64.const 0
     i64.store offset=8
     local.get $2
     local.get $9
     i32.const 1
     i32.add
     local.tee $2
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $7
     i32.const 3
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     i32.load offset=8
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $4
     local.get $0
     i32.load offset=16
     i32.const 3
     i32.shl
     i32.add
     local.set $8
     local.get $3
     local.set $2
     loop $while-continue|00
      local.get $4
      local.get $8
      i32.ne
      if
       local.get $4
       i32.load offset=4
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $2
        local.get $4
        i32.load
        local.tee $10
        i32.store
        local.get $2
        local.get $5
        local.get $9
        local.get $10
        i32.const -1028477379
        i32.mul
        i32.const 374761397
        i32.add
        i32.const 17
        i32.rotl
        i32.const 668265263
        i32.mul
        local.tee $10
        local.get $10
        i32.const 15
        i32.shr_u
        i32.xor
        i32.const -2048144777
        i32.mul
        local.tee $10
        local.get $10
        i32.const 13
        i32.shr_u
        i32.xor
        i32.const -1028477379
        i32.mul
        local.tee $10
        local.get $10
        i32.const 16
        i32.shr_u
        i32.xor
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee $10
        i32.load
        i32.store offset=4
        local.get $10
        local.get $2
        i32.store
        local.get $2
        i32.const 8
        i32.add
        local.set $2
       end
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=8
     local.get $2
     local.get $5
     i32.store offset=12
     local.get $0
     local.get $5
     i32.store
     local.get $0
     local.get $5
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $9
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $3
     i32.store offset=8
     local.get $0
     local.get $3
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $7
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=8
    local.set $3
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $4
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $3
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $3
    local.get $1
    i32.store
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    local.get $2
    local.get $0
    i32.store
    local.get $3
    local.get $1
    local.get $6
    local.get $0
    i32.load offset=4
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=4
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Proposition/Proposition#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill
   local.get $4
   i32.const 12
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $5
   local.get $0
   i32.store offset=8
   local.get $5
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 24
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store
   local.get $4
   local.get $6
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 32
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store offset=8
   local.get $4
   local.get $6
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.store offset=12
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $4
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/set/Set<i32>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $5
   i32.store offset=4
   local.get $0
   local.get $4
   i32.store offset=16
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $4
   i32.store
   local.get $4
   i32.load offset=8
   local.set $6
   local.get $0
   local.get $4
   i32.store
   local.get $4
   i32.load offset=16
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $8
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=12
   local.get $7
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2160
    i32.const 2208
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $7
   local.get $7
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $8
   local.get $3
   i32.store
   local.get $8
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   local.get $7
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $8
   i32.store offset=4
   i32.const 0
   local.set $1
   i32.const 0
   local.set $3
   loop $for-loop|00
    local.get $3
    local.get $7
    i32.lt_s
    if
     local.get $6
     local.get $3
     i32.const 3
     i32.shl
     i32.add
     local.tee $4
     i32.load offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $1
      local.tee $0
      i32.const 1
      i32.add
      local.set $1
      local.get $8
      local.get $0
      local.get $4
      i32.load
      call $~lib/array/Array<i32>#__set
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $1
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=8
   local.get $5
   local.get $8
   i32.store
   local.get $5
   local.get $8
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/Proposition/Proposition#removeMineCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 13
  i32.const 5184
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load
   local.tee $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $1
    local.get $5
    local.get $2
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.sub
     i32.store offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $3
     i32.store
     local.get $5
     local.get $0
     i32.store offset=12
     local.get $5
     local.get $0
     i32.load
     local.tee $5
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.get $4
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#hasNoMine (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.eqz
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#isSatisfied (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/Proposition/Proposition#hasNoMine
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $0
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    i32.const 0
    i32.gt_s
   else
    i32.const 0
   end
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#getCells (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $2
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    i32.const 1
    local.get $4
    local.get $5
    local.get $1
    call $src/as/assembly/Proposition/Proposition#removeMineCells
    select
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 13
  i32.const 5216
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=16
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $5
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $2
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/array/Array<i32>#concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 5248
  i32.store offset=4
  local.get $0
  i32.const 5248
  call $~lib/array/Array<i32>#sort
  drop
  local.get $4
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.const 0
   i32.gt_s
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addProposition (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $1
   i32.store
   local.get $2
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=4
   local.get $1
   local.get $2
   call $src/as/assembly/Proposition/Proposition#removeMineCells
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.store offset=4
   local.get $1
   local.get $2
   call $src/as/assembly/Proposition/Proposition#removeSafeCells
   drop
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load offset=16
    local.tee $2
    i32.store
    local.get $2
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $2
     i32.store offset=8
     local.get $2
     local.get $3
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     block $__inlined_func$src/as/assembly/Proposition/Proposition#isEqual$10 (result i32)
      i32.const 0
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 7532
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i64.const 0
      i64.store
      local.get $5
      i32.const 0
      i32.store offset=8
      local.get $5
      local.get $4
      i32.store
      local.get $4
      i32.load offset=4
      local.set $6
      local.get $5
      local.get $1
      i32.store
      block $folding-inner0
       local.get $6
       local.get $1
       i32.load offset=4
       i32.ne
       br_if $folding-inner0
       local.get $5
       local.get $4
       i32.store offset=4
       local.get $5
       local.get $4
       i32.load
       local.tee $5
       i32.store
       local.get $5
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load
       local.tee $6
       i32.store
       local.get $6
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
       local.get $5
       i32.ne
       br_if $folding-inner0
       loop $for-loop|00
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        local.get $4
        i32.store offset=4
        local.get $5
        local.get $4
        i32.load
        local.tee $5
        i32.store
        local.get $5
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
        local.get $2
        i32.gt_s
        if
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.load
         local.tee $5
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.load
         local.tee $6
         i32.store offset=4
         local.get $5
         local.get $6
         local.get $2
         call $~lib/array/Array<i32>#__get
         call $~lib/array/Array<i32>#includes
         i32.eqz
         br_if $folding-inner0
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|00
        end
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1
       br $__inlined_func$src/as/assembly/Proposition/Proposition#isEqual$10
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 0
      return
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $src/as/assembly/Proposition/Proposition#isSatisfied
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $src/as/assembly/Proposition/Proposition#hasNoMine
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $1
     call $src/as/assembly/Proposition/Proposition#getCells
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $1
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store
     local.get $2
     local.get $1
     i32.store offset=8
     local.get $1
     call $src/as/assembly/Proposition/Proposition#getCells
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $1
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#createNewPropositions (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 48
   memory.fill
   local.get $3
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $3
   block $__inlined_func$src/as/assembly/Board/Board#getRevealedCells$11 (result i32)
    local.get $3
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     local.get $4
     i32.store offset=8
     local.get $4
     call $src/as/assembly/Board/Board#get:cells
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2928
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i64.const 0
     i64.store offset=8
     local.get $4
     i32.const 0
     i32.const 9
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.load offset=12
     local.set $5
     loop $for-loop|0
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      local.get $3
      i32.store offset=4
      local.get $1
      local.get $5
      local.get $3
      i32.load offset=12
      local.tee $7
      local.get $5
      local.get $7
      i32.lt_s
      select
      i32.lt_s
      if
       local.get $6
       local.get $3
       i32.store offset=4
       local.get $6
       local.get $3
       i32.load offset=4
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $7
       i32.store offset=8
       local.get $6
       local.get $7
       i32.store offset=4
       local.get $6
       local.get $3
       i32.store offset=12
       i32.const 3
       global.set $~argumentsLength
       local.get $7
       local.get $1
       local.get $3
       i32.const 2928
       i32.load
       call_indirect (type $5)
       if
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store offset=12
        local.get $4
        local.get $7
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
       end
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $for-loop|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     br $__inlined_func$src/as/assembly/Board/Board#getRevealedCells$11
    end
    br $folding-inner1
   end
   local.tee $3
   i32.store offset=8
   loop $for-loop|00
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $2
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.tee $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 13
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $1
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load offset=4
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=24
     local.get $1
     i32.const 0
     local.get $4
     i32.load
     call $~lib/array/Array<i32>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $1
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
     drop
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $src/as/assembly/Board/Board#getAdjacentCells
     local.tee $5
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 13
     i32.const 3216
     call $~lib/rt/__newArray
     local.tee $6
     i32.store offset=32
     i32.const 0
     local.set $1
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $1
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=24
       local.get $5
       local.get $1
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=4
       local.get $6
       local.get $7
       i32.load
       call $~lib/array/Array<i32>#push
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $for-loop|1
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $4
     i32.store offset=24
     local.get $1
     local.get $4
     i32.load
     call $~lib/util/number/itoa32
     local.tee $5
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     i32.const 3376
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=40
     i32.const 3380
     local.get $5
     i32.store
     i32.const 3376
     local.get $5
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 3376
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store offset=40
     i32.const 3376
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=24
     local.get $1
     local.get $5
     local.get $6
     local.get $4
     i32.load offset=4
     call $src/as/assembly/Proposition/Proposition#constructor
     local.tee $1
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $1
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addProposition
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#isBoardSolved (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 32
  memory.fill
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store
  local.get $2
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $4
  i32.store offset=4
  local.get $4
  call $src/as/assembly/Board/Board#get:properties
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $2
  local.get $3
  local.get $4
  i32.load offset=8
  i32.sub
  i32.lt_s
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store offset=4
   local.get $3
   call $src/as/assembly/Board/Board#get:properties
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $2
   local.get $3
   i32.load offset=8
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   local.get $2
   call $src/as/assembly/Board/Board#get:cells
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $3
    call $src/as/assembly/Board/Board#get:cells
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $2
    local.get $3
    local.get $1
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $3
    local.get $2
    i32.load
    call $~lib/array/Array<i32>#includes
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load
     call $~lib/array/Array<i32>#includes
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 1
      i32.const 13
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $3
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.load offset=4
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $3
      i32.const 0
      local.get $2
      i32.load
      call $~lib/array/Array<i32>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $0
      local.get $3
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
      drop
     end
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store
     local.get $3
     i32.const 1
     i32.const 13
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $3
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $3
     i32.const 0
     local.get $2
     i32.load
     call $~lib/array/Array<i32>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $0
     local.get $3
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
     drop
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#removedKnownCellsFromPropositions (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.store
   local.get $3
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $2
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.tee $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $src/as/assembly/Proposition/Proposition#isSatisfied
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     call $src/as/assembly/Proposition/Proposition#getCells
     local.tee $3
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/Proposition/Proposition#hasNoMine
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      i32.const 1
      local.get $1
      local.get $0
      local.get $3
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
      select
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $0
      i32.store
      local.get $4
      local.get $3
      i32.store offset=4
      i32.const 1
      local.get $1
      local.get $0
      local.get $3
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
      select
     end
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/assembly/Proposition/Proposition#getMines (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#propositionsCompared (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 24
   memory.fill
   local.get $3
   i32.const 0
   i32.const 15
   i32.const 5280
   call $~lib/rt/__newArray
   local.tee $4
   i32.store
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store offset=8
    local.get $3
    local.get $0
    i32.load offset=16
    local.tee $3
    i32.store offset=4
    local.get $3
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $6
    i32.gt_s
    if
     i32.const 0
     local.set $5
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store offset=8
      local.get $3
      local.get $0
      i32.load offset=16
      local.tee $3
      i32.store offset=4
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $5
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=16
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=16
       local.tee $3
       i32.store offset=12
       local.get $3
       local.get $6
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $3
       call $src/as/assembly/Proposition/Proposition#getCells
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
       i32.const 0
       i32.le_s
       if (result i32)
        i32.const 1
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $0
        i32.store offset=16
        local.get $3
        local.get $0
        i32.load offset=16
        local.tee $3
        i32.store offset=12
        local.get $3
        local.get $5
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $3
        call $src/as/assembly/Proposition/Proposition#getCells
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $3
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
        i32.const 0
        i32.le_s
       end
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $8
        local.get $0
        i32.store offset=16
        local.get $8
        local.get $0
        i32.load offset=16
        local.tee $3
        i32.store offset=12
        local.get $3
        local.get $6
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=16
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=16
        local.tee $3
        i32.store offset=12
        local.get $3
        local.get $5
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $3
        global.get $~lib/memory/__stack_pointer
        i32.const 28
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.tee $7
        i32.const 0
        i32.const 28
        memory.fill
        local.get $7
        local.get $9
        i32.store
        local.get $9
        i32.load offset=4
        local.set $11
        local.get $7
        local.get $10
        i32.store
        local.get $11
        local.get $10
        i32.load offset=4
        i32.sub
        local.set $11
        local.get $7
        i32.const 0
        i32.const 13
        i32.const 5312
        call $~lib/rt/__newArray
        local.tee $12
        i32.store offset=4
        loop $for-loop|00
         global.get $~lib/memory/__stack_pointer
         local.tee $7
         local.get $9
         i32.store offset=8
         local.get $7
         local.get $9
         i32.load
         local.tee $7
         i32.store
         local.get $7
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
         local.get $3
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.load
          local.tee $13
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store offset=12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.load
          local.tee $7
          i32.store offset=8
          local.get $13
          local.get $7
          local.get $3
          call $~lib/array/Array<i32>#__get
          call $~lib/array/Array<i32>#includes
          i32.eqz
          if
           global.get $~lib/memory/__stack_pointer
           local.get $12
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $9
           i32.store offset=12
           global.get $~lib/memory/__stack_pointer
           local.get $9
           i32.load
           local.tee $7
           i32.store offset=8
           local.get $12
           local.get $7
           local.get $3
           call $~lib/array/Array<i32>#__get
           call $~lib/array/Array<i32>#push
          end
          local.get $3
          i32.const 1
          i32.add
          local.set $3
          br $for-loop|00
         end
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $9
        i32.store offset=12
        local.get $3
        local.get $9
        i32.load offset=8
        local.tee $7
        i32.store offset=16
        local.get $3
        local.get $10
        i32.store offset=12
        local.get $3
        local.get $10
        i32.load offset=8
        local.tee $9
        i32.store offset=20
        local.get $3
        i32.const 5376
        i32.store offset=12
        local.get $3
        local.get $7
        i32.store offset=24
        i32.const 5376
        local.get $7
        i32.store
        i32.const 5376
        local.get $7
        i32.const 1
        call $~lib/rt/itcms/__link
        global.get $~lib/memory/__stack_pointer
        i32.const 5376
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=24
        i32.const 5384
        local.get $9
        i32.store
        i32.const 5376
        local.get $9
        i32.const 1
        call $~lib/rt/itcms/__link
        global.get $~lib/memory/__stack_pointer
        i32.const 5376
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 1680
        i32.store offset=24
        i32.const 5376
        call $~lib/staticarray/StaticArray<~lib/string/String>#join
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=8
        local.get $3
        local.get $12
        local.get $11
        call $src/as/assembly/Proposition/Proposition#constructor
        local.set $7
        global.get $~lib/memory/__stack_pointer
        i32.const 28
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $8
        local.get $7
        i32.store offset=20
        block $__inlined_func$src/as/assembly/Proposition/Proposition#isSubSetOf$639 (result i32)
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $0
         i32.store offset=16
         local.get $3
         local.get $0
         i32.load offset=16
         local.tee $3
         i32.store offset=12
         local.get $3
         local.get $5
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=16
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=16
         local.tee $3
         i32.store offset=12
         local.get $3
         local.get $6
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 7532
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         i64.const 0
         i64.store
         local.get $3
         i32.const 0
         i32.store offset=8
         local.get $3
         local.get $8
         i32.store offset=4
         local.get $3
         local.get $8
         i32.load
         local.tee $3
         i32.store
         local.get $3
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.load
         local.tee $10
         i32.store
         local.get $10
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
         local.get $3
         i32.le_s
         if
          global.get $~lib/memory/__stack_pointer
          i32.const 12
          i32.add
          global.set $~lib/memory/__stack_pointer
          i32.const 0
          br $__inlined_func$src/as/assembly/Proposition/Proposition#isSubSetOf$639
         end
         i32.const 0
         local.set $3
         loop $for-loop|001
          global.get $~lib/memory/__stack_pointer
          local.tee $10
          local.get $8
          i32.store offset=4
          local.get $10
          local.get $8
          i32.load
          local.tee $10
          i32.store
          local.get $10
          call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
          local.get $3
          i32.gt_s
          if
           global.get $~lib/memory/__stack_pointer
           local.get $9
           i32.store offset=4
           global.get $~lib/memory/__stack_pointer
           local.get $9
           i32.load
           local.tee $10
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $8
           i32.store offset=8
           global.get $~lib/memory/__stack_pointer
           local.get $8
           i32.load
           local.tee $11
           i32.store offset=4
           local.get $10
           local.get $11
           local.get $3
           call $~lib/array/Array<i32>#__get
           call $~lib/array/Array<i32>#includes
           i32.eqz
           if
            global.get $~lib/memory/__stack_pointer
            i32.const 12
            i32.add
            global.set $~lib/memory/__stack_pointer
            i32.const 0
            br $__inlined_func$src/as/assembly/Proposition/Proposition#isSubSetOf$639
           end
           local.get $3
           i32.const 1
           i32.add
           local.set $3
           br $for-loop|001
          end
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 1
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $4
         i32.store offset=4
         local.get $3
         local.get $7
         i32.store offset=8
         local.get $4
         local.get $7
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
        end
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store offset=4
        local.get $7
        call $src/as/assembly/Proposition/Proposition#getMines
        i32.const 0
        i32.gt_s
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=4
         local.get $7
         call $src/as/assembly/Proposition/Proposition#getMines
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=8
         local.get $7
         call $src/as/assembly/Proposition/Proposition#getCells
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store offset=4
         local.get $8
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
         local.get $3
         i32.eq
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $4
         i32.store offset=4
         local.get $3
         local.get $7
         i32.store offset=8
         local.get $4
         local.get $7
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
        end
       end
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|1
      end
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $4
     local.get $2
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     i32.const 1
     local.get $1
     local.get $0
     local.get $3
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addProposition
     select
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 16
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2160
   i32.const 2208
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store
    local.get $1
    i32.const 1
    i32.sub
    local.tee $5
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1680
     return
    end
    local.get $5
    i32.eqz
    if
     local.get $0
     i32.load
     call $~lib/util/number/itoa32
     local.set $0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 1216
    i32.store
    local.get $1
    i32.const 1212
    i32.load
    i32.const 1
    i32.shr_u
    local.tee $4
    i32.const 11
    i32.add
    local.get $5
    i32.mul
    i32.const 11
    i32.add
    local.tee $6
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store offset=4
    loop $for-loop|0
     local.get $3
     local.get $5
     i32.lt_s
     if
      local.get $1
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $0
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/util/number/itoa_buffered<i32>
      local.get $2
      i32.add
      local.set $2
      local.get $4
      if
       local.get $1
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       i32.const 1216
       local.get $4
       i32.const 1
       i32.shl
       memory.copy
       local.get $2
       local.get $4
       i32.add
       local.set $2
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    local.get $6
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_buffered<i32>
    local.get $2
    i32.add
    local.tee $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $1
     i32.store
     local.get $1
     local.set $0
     local.get $3
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     local.get $0
     i32.store
     local.get $2
     i32.const 0
     local.get $2
     i32.const 0
     i32.gt_s
     select
     local.tee $2
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $3
     local.get $2
     local.get $3
     i32.lt_s
     select
     local.tee $2
     i32.const 0
     local.get $2
     i32.const 0
     i32.le_s
     select
     i32.const 1
     i32.shl
     local.set $4
     block $__inlined_func$~lib/string/String#substring$679
      local.get $2
      i32.const 0
      local.get $2
      i32.const 0
      i32.ge_s
      select
      i32.const 1
      i32.shl
      local.tee $2
      local.get $4
      i32.sub
      local.tee $5
      i32.eqz
      if
       local.get $1
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1680
       local.set $0
       br $__inlined_func$~lib/string/String#substring$679
      end
      local.get $4
      i32.eqz
      local.get $2
      local.get $3
      i32.const 1
      i32.shl
      i32.eq
      i32.and
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/string/String#substring$679
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store offset=4
      local.get $1
      local.get $0
      local.get $4
      i32.add
      local.get $5
      memory.copy
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      local.set $0
     end
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  local.get $1
  i32.const 1216
  i32.store
  local.get $2
  local.get $0
  call $~lib/util/string/joinIntegerArray<i32>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $1
   local.get $0
   i32.store
   i32.const 0
   local.get $0
   i32.eqz
   br_if $~lib/util/hash/hashStr|inlined.0
   drop
   local.get $1
   local.get $0
   local.tee $1
   i32.store offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   local.get $0
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   local.get $0
   i32.const 16
   i32.shr_u
   i32.xor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   local.get $1
   i32.store
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $4
   local.get $3
   local.get $0
   i32.store
   local.get $4
   local.get $8
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $7
   block $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find$646
    loop $while-continue|0
     local.get $7
     if
      local.get $7
      i32.load offset=8
      local.tee $9
      i32.const 1
      i32.and
      if
       i32.const 0
       local.set $3
      else
       block $__inlined_func$~lib/string/String.__eq$680
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $7
        i32.load
        local.tee $6
        i32.store
        local.get $3
        local.get $1
        i32.store offset=4
        local.get $3
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i64.const 0
        i64.store
        local.get $1
        local.get $6
        i32.eq
        if
         local.get $3
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 1
         local.set $3
         br $__inlined_func$~lib/string/String.__eq$680
        end
        local.get $1
        i32.eqz
        local.get $6
        i32.eqz
        i32.or
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 0
         local.set $3
         br $__inlined_func$~lib/string/String.__eq$680
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $6
        i32.store
        local.get $6
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        local.set $4
        local.get $3
        local.get $1
        i32.store
        local.get $4
        local.get $1
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.ne
        if
         local.get $3
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 0
         local.set $3
         br $__inlined_func$~lib/string/String.__eq$680
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $6
        i32.store
        local.get $3
        local.get $1
        i32.store offset=4
        block $__inlined_func$~lib/util/string/compareImpl$2 (result i32)
         local.get $1
         local.set $3
         local.get $4
         i32.const 4
         i32.ge_u
         if (result i32)
          local.get $6
          i32.const 7
          i32.and
          local.get $1
          i32.const 7
          i32.and
          i32.or
         else
          i32.const 1
         end
         i32.eqz
         if
          loop $do-loop|0
           local.get $6
           i64.load
           local.get $3
           i64.load
           i64.eq
           if
            local.get $6
            i32.const 8
            i32.add
            local.set $6
            local.get $3
            i32.const 8
            i32.add
            local.set $3
            local.get $4
            i32.const 4
            i32.sub
            local.tee $4
            i32.const 4
            i32.ge_u
            br_if $do-loop|0
           end
          end
         end
         loop $while-continue|1
          local.get $4
          local.tee $5
          i32.const 1
          i32.sub
          local.set $4
          local.get $5
          if
           local.get $3
           i32.load16_u
           local.tee $5
           local.get $6
           i32.load16_u
           local.tee $10
           i32.ne
           if
            local.get $10
            local.get $5
            i32.sub
            br $__inlined_func$~lib/util/string/compareImpl$2
           end
           local.get $6
           i32.const 2
           i32.add
           local.set $6
           local.get $3
           i32.const 2
           i32.add
           local.set $3
           br $while-continue|1
          end
         end
         i32.const 0
        end
        i32.eqz
        local.set $3
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
      end
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find$646
      end
      local.get $9
      i32.const -2
      i32.and
      local.set $7
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    local.set $7
   end
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $7
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__link
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $0
    i32.load offset=16
    local.set $4
    local.get $3
    local.get $0
    i32.store
    local.get $4
    local.get $0
    i32.load offset=12
    i32.eq
    if
     local.get $3
     local.get $0
     i32.store
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=20
     local.set $4
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $0
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $3
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 20
     memory.fill
     local.get $3
     local.get $10
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $11
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $12
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     i32.load offset=8
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $5
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $6
     local.get $4
     local.set $3
     loop $while-continue|00
      local.get $5
      local.get $6
      i32.ne
      if
       local.get $5
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $7
        local.get $5
        i32.load
        local.tee $13
        i32.store offset=12
        local.get $7
        local.get $13
        i32.store offset=8
        local.get $3
        local.get $13
        i32.store
        local.get $7
        local.get $5
        i32.load offset=4
        local.tee $9
        i32.store offset=8
        local.get $3
        local.get $9
        i32.store offset=4
        local.get $7
        local.get $13
        i32.store offset=8
        local.get $3
        local.get $11
        local.get $13
        call $~lib/util/hash/HASH<~lib/string/String>
        local.get $10
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee $7
        i32.load
        i32.store offset=8
        local.get $7
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $5
       i32.const 12
       i32.add
       local.set $5
       br $while-continue|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=8
     local.get $3
     local.get $11
     i32.store offset=16
     local.get $0
     local.get $11
     i32.store
     local.get $0
     local.get $11
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $10
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     i32.store offset=8
     local.get $0
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $12
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load offset=8
    local.tee $4
    i32.store offset=8
    local.get $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $3
    local.get $1
    i32.store
    local.get $4
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.tee $3
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $1
    local.get $8
    local.get $0
    i32.load offset=4
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#satisfiedPropositionsRemoved (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 36
   memory.fill
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#removedKnownCellsFromPropositions
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
   local.tee $7
   i32.store offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.load offset=16
    local.tee $1
    i32.store
    local.get $1
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $5
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $5
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.tee $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/Proposition/Proposition#isSatisfied
     if (result i32)
      i32.const 0
     else
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      local.get $4
      call $src/as/assembly/Proposition/Proposition#getCells
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      i32.const 0
      i32.ge_s
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $7
      i32.store
      local.get $1
      local.get $4
      i32.store offset=4
      local.get $7
      local.get $4
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $4
      i32.store
      local.get $1
      local.get $4
      call $src/as/assembly/Proposition/Proposition#getCells
      local.tee $3
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      call $src/as/assembly/Proposition/Proposition#hasNoMine
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $0
       local.get $3
       call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
       drop
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.store
       local.get $1
       local.get $3
       i32.store offset=4
       local.get $0
       local.get $3
       call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
       drop
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 24
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $6
   local.get $1
   i32.store
   local.get $6
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   i32.const 48
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $6
   local.get $1
   i32.store offset=8
   local.get $6
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $6
   i32.store offset=20
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $9
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=32
     local.get $7
     local.get $9
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i32.const 0
     i32.const 24
     memory.fill
     local.get $4
     local.get $5
     i32.store offset=12
     local.get $4
     local.get $5
     i32.load
     local.tee $1
     i32.store offset=4
     local.get $4
     i32.const 5472
     i32.store offset=8
     local.get $1
     i32.const 5472
     call $~lib/array/Array<i32>#sort
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     local.get $3
     i32.store
     local.get $1
     i32.const 1216
     i32.store offset=4
     local.get $3
     call $~lib/array/Array<i32>#join
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     local.get $3
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     call $~lib/util/number/itoa32
     local.tee $1
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     i32.const 5440
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     i32.const 5440
     local.get $3
     i32.store
     i32.const 5440
     local.get $3
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 5440
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     i32.const 5448
     local.get $1
     i32.store
     i32.const 5440
     local.get $1
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 5440
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store offset=4
     i32.const 5440
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=28
     local.get $7
     local.get $9
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     local.get $6
     local.get $3
     local.get $1
     call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   local.get $6
   i32.store offset=24
   block $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#values$18 (result i32)
    i32.const 0
    local.set $9
    local.get $1
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 7532
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i32.const 0
     i32.store offset=8
     local.get $1
     local.get $6
     i32.store
     local.get $6
     i32.load offset=8
     local.set $7
     local.get $1
     local.get $6
     i32.store
     local.get $1
     local.get $6
     i32.load offset=16
     local.tee $6
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
     local.tee $5
     i32.store offset=4
     loop $for-loop|01
      local.get $6
      local.get $9
      i32.gt_s
      if
       local.get $7
       local.get $9
       i32.const 12
       i32.mul
       i32.add
       local.tee $4
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $5
        i32.store
        local.get $2
        local.tee $1
        i32.const 1
        i32.add
        local.set $2
        local.get $3
        local.get $4
        i32.load offset=4
        local.tee $4
        i32.store offset=8
        local.get $3
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner00
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i32.const 0
        i32.store
        local.get $3
        local.get $5
        i32.store
        local.get $1
        local.get $5
        i32.load offset=12
        i32.ge_u
        if
         local.get $1
         i32.const 0
         i32.lt_s
         if
          i32.const 1472
          i32.const 2208
          i32.const 130
          i32.const 22
          call $~lib/builtins/abort
          unreachable
         end
         local.get $5
         local.get $1
         i32.const 1
         i32.add
         local.tee $3
         i32.const 1
         call $~lib/array/ensureCapacity
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store
         local.get $5
         local.get $3
         i32.store offset=12
        end
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        i32.load offset=4
        local.get $1
        i32.const 2
        i32.shl
        i32.add
        local.get $4
        i32.store
        local.get $5
        local.get $4
        i32.const 1
        call $~lib/rt/itcms/__link
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
       local.get $9
       i32.const 1
       i32.add
       local.set $9
       br $for-loop|01
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $2
     call $~lib/array/Array<i32>#set:length
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     br $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#values$18
    end
    br $folding-inner1
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=16
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $8
   i32.ne
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $__inlined_func$~lib/string/String#concat$682 (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.set $2
    local.get $5
    local.get $1
    i32.store
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $2
    i32.add
    local.tee $4
    i32.eqz
    if
     local.get $5
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1680
     br $__inlined_func$~lib/string/String#concat$682
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $0
    local.get $2
    memory.copy
    local.get $2
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#updatePropositions (param $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#createNewPropositions
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#isBoardSolved
    i32.eqz
    if
     block $while-break|0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=12
      local.tee $1
      i32.store
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $3
      i32.store
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $1
      i32.add
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#removedKnownCellsFromPropositions
      i32.const 0
      i32.ne
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $3
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#propositionsCompared
      select
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $3
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#satisfiedPropositionsRemoved
      select
      i32.eqz
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=12
      local.tee $3
      i32.store
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $3
      i32.store
      local.get $4
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $5
      i32.add
      local.get $1
      i32.eq
      i32.and
      if
       local.get $2
       f64.const 1
       f64.add
       local.tee $2
       f64.const 5
       f64.gt
       br_if $while-break|0
      else
       local.get $2
       f64.const 0
       f64.gt
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        i32.const 5504
        i32.store offset=4
        local.get $1
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        i32.const 0
        i32.store
        block $__inlined_func$~lib/util/number/dtoa$83
         local.get $2
         f64.const 0
         f64.eq
         if
          local.get $1
          i32.const 4
          i32.add
          global.set $~lib/memory/__stack_pointer
          i32.const 5584
          local.set $1
          br $__inlined_func$~lib/util/number/dtoa$83
         end
         local.get $2
         local.get $2
         f64.sub
         f64.const 0
         f64.ne
         if
          local.get $2
          local.get $2
          f64.ne
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 4
           i32.add
           global.set $~lib/memory/__stack_pointer
           i32.const 5616
           local.set $1
           br $__inlined_func$~lib/util/number/dtoa$83
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.add
          global.set $~lib/memory/__stack_pointer
          i32.const 5648
          i32.const 5696
          local.get $2
          f64.const 0
          f64.lt
          select
          local.set $1
          br $__inlined_func$~lib/util/number/dtoa$83
         end
         local.get $2
         call $~lib/util/number/dtoa_core
         i32.const 1
         i32.shl
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.const 2
         call $~lib/rt/itcms/__new
         local.tee $1
         i32.store
         local.get $1
         i32.const 5728
         local.get $3
         memory.copy
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
        end
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        i32.const 5504
        local.get $1
        call $~lib/string/String.__concat
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 7532
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i32.const 0
        i32.store
        local.get $3
        local.get $1
        i32.store
        local.get $1
        call $~lib/bindings/dom/console.log
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
       f64.const 0
       local.set $2
      end
      br $while-continue|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<src/as/assembly/models/Guess/Guess>#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/as-string-sink/assembly/index/StringSink#write@varargs (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $2of2
    block $1of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $1of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 2147483647
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   local.get $3
   i32.const 2147483647
   i32.ne
   if
    local.get $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.le_s
    select
    local.tee $5
    local.get $3
    i32.const 0
    local.get $3
    i32.const 0
    i32.gt_s
    select
    local.tee $3
    local.get $2
    local.get $2
    local.get $3
    i32.gt_s
    select
    local.tee $2
    local.get $2
    local.get $5
    i32.gt_s
    select
    local.set $4
    local.get $5
    local.get $2
    local.get $2
    local.get $5
    i32.lt_s
    select
    local.get $4
    i32.sub
    local.set $2
   end
   block $__inlined_func$~lib/as-string-sink/assembly/index/StringSink#write$19
    local.get $2
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/as-string-sink/assembly/index/StringSink#write$19
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    local.tee $5
    i32.store offset=8
    local.get $3
    local.get $0
    i32.store
    local.get $2
    i32.const 1
    i32.shl
    local.tee $6
    local.get $0
    i32.load offset=4
    i32.add
    local.set $2
    local.get $3
    local.get $5
    i32.store
    local.get $2
    local.get $5
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.store
     local.get $5
     i32.const 1
     i32.const 32
     local.get $2
     i32.const 1
     i32.sub
     i32.clz
     i32.sub
     i32.shl
     call $~lib/rt/itcms/__renew
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=12
     local.get $0
     local.get $2
     i32.store
     local.get $0
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $3
    local.get $2
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    i32.add
    local.get $1
    local.get $4
    i32.const 1
    i32.shl
    i32.add
    local.get $6
    memory.copy
    local.get $2
    local.get $0
    i32.store
    local.get $0
    local.get $3
    local.get $6
    i32.add
    i32.store offset=4
    local.get $2
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/index/processBoard (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 184
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.const 184
   memory.fill
   local.get $6
   local.get $0
   i32.store
   local.get $6
   local.get $0
   i32.store offset=4
   local.get $6
   local.get $0
   call $~lib/string/String#trimStart
   local.tee $7
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $8
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
   local.tee $5
   i32.store offset=20
   i32.const 1
   local.set $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $7
    i32.store offset=4
    local.get $0
    local.get $7
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.sub
    i32.lt_s
    if
     local.get $1
     local.get $7
     i32.store offset=24
     local.get $7
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.tee $1
     i32.const 91
     i32.eq
     if
      local.get $0
      local.set $1
      loop $for-loop|1
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $7
       i32.store offset=4
       local.get $1
       local.get $7
       i32.const 20
       i32.sub
       i32.load offset=16
       i32.const 1
       i32.shr_u
       i32.const 1
       i32.sub
       i32.lt_s
       if
        block $for-break1
         local.get $2
         local.get $7
         i32.store offset=28
         local.get $7
         local.get $1
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
         local.tee $2
         i32.const 91
         i32.eq
         if
          local.get $4
          i32.const 1
          i32.add
          local.set $4
         else
          local.get $2
          i32.const 93
          i32.eq
          if
           local.get $4
           i32.const 1
           i32.sub
           local.tee $4
           i32.eqz
           if
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            local.get $8
            i32.store offset=4
            local.get $2
            local.get $5
            i32.store offset=32
            local.get $2
            local.get $7
            i32.store offset=36
            local.get $8
            local.get $5
            local.get $7
            local.get $0
            local.get $1
            i32.const 1
            i32.add
            local.tee $0
            call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $3
            br $for-break1
           end
          end
         end
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $for-loop|1
        end
       end
      end
     else
      local.get $1
      i32.const 123
      i32.eq
      if
       local.get $0
       local.set $1
       loop $for-loop|2
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $7
        i32.store offset=4
        local.get $1
        local.get $7
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.const 1
        i32.sub
        i32.lt_s
        if
         block $for-break2
          local.get $2
          local.get $7
          i32.store offset=40
          local.get $7
          local.get $1
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          local.tee $2
          i32.const 123
          i32.eq
          if
           local.get $4
           i32.const 1
           i32.add
           local.set $4
          else
           local.get $2
           i32.const 125
           i32.eq
           if
            local.get $4
            i32.const 1
            i32.sub
            local.tee $4
            i32.eqz
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $2
             local.get $8
             i32.store offset=4
             local.get $2
             local.get $5
             i32.store offset=32
             local.get $2
             local.get $7
             i32.store offset=36
             local.get $8
             local.get $5
             local.get $7
             local.get $0
             local.get $1
             i32.const 1
             i32.add
             local.tee $0
             call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             i32.const 0
             local.set $3
             br $for-break2
            end
           end
          end
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $for-loop|2
         end
        end
       end
      else
       local.get $1
       i32.const 34
       i32.eq
       if
        i32.const 0
        local.set $2
        local.get $0
        i32.const 1
        i32.add
        local.tee $0
        local.set $1
        loop $for-loop|3
         global.get $~lib/memory/__stack_pointer
         local.tee $9
         local.get $7
         i32.store offset=4
         local.get $1
         local.get $7
         i32.const 20
         i32.sub
         i32.load offset=16
         i32.const 1
         i32.shr_u
         i32.const 1
         i32.sub
         i32.lt_s
         if
          block $for-break3
           local.get $9
           local.get $7
           i32.store offset=44
           local.get $2
           i32.eqz
           local.get $7
           local.get $1
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.tee $9
           i32.const 92
           i32.eq
           i32.and
           if (result i32)
            i32.const 1
           else
            local.get $2
            i32.eqz
            local.get $9
            i32.const 34
            i32.eq
            i32.and
            if
             local.get $3
             if (result i32)
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $8
              i32.store offset=4
              local.get $2
              local.get $5
              i32.store offset=32
              local.get $2
              local.get $7
              i32.store offset=36
              local.get $8
              local.get $5
              local.get $7
              local.get $0
              local.get $1
              call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              i32.const 0
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $5
              i32.store offset=4
              local.get $2
              local.get $7
              i32.store offset=32
              local.get $5
              local.get $7
              local.get $0
              local.get $1
              call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
              i32.const 1
             end
             local.set $3
             local.get $1
             i32.const 1
             i32.add
             local.set $0
             br $for-break3
            end
            i32.const 0
           end
           local.set $2
           local.get $1
           i32.const 1
           i32.add
           local.set $1
           br $for-loop|3
          end
         end
        end
       else
        local.get $1
        i32.const 110
        i32.eq
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $8
         i32.store offset=4
         local.get $1
         local.get $5
         i32.store offset=32
         local.get $1
         i32.const 1120
         i32.store offset=36
         local.get $8
         local.get $5
         i32.const 1120
         i32.const 0
         i32.const 4
         call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
         i32.const 0
         local.set $3
        else
         local.get $1
         i32.const 116
         i32.eq
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=48
          local.get $7
          local.get $0
          i32.const 1
          i32.add
          local.tee $0
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          i32.const 114
          i32.eq
         else
          i32.const 0
         end
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=52
          local.get $7
          local.get $0
          i32.const 1
          i32.add
          local.tee $0
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          i32.const 117
          i32.eq
         else
          i32.const 0
         end
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=56
          local.get $7
          local.get $0
          i32.const 1
          i32.add
          local.tee $0
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          i32.const 101
          i32.eq
         else
          i32.const 0
         end
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $8
          i32.store offset=4
          local.get $1
          local.get $5
          i32.store offset=32
          local.get $1
          i32.const 1056
          i32.store offset=36
          local.get $8
          local.get $5
          i32.const 1056
          i32.const 0
          i32.const 4
          call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
          i32.const 0
          local.set $3
         else
          local.get $1
          i32.const 102
          i32.eq
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $7
           i32.store offset=60
           local.get $7
           local.get $0
           i32.const 1
           i32.add
           local.tee $0
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $9
           local.get $2
           i32.const 2032
           i32.store offset=4
           i32.const 2032
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $7
           i32.store offset=64
           local.get $7
           local.get $0
           i32.const 1
           i32.add
           local.tee $0
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $9
           local.get $2
           i32.const 2064
           i32.store offset=4
           i32.const 2064
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $7
           i32.store offset=68
           local.get $7
           local.get $0
           i32.const 1
           i32.add
           local.tee $0
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $9
           local.get $2
           i32.const 2096
           i32.store offset=4
           i32.const 2096
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $7
           i32.store offset=72
           local.get $7
           local.get $0
           i32.const 1
           i32.add
           local.tee $0
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           i32.const 101
           i32.eq
          else
           i32.const 0
          end
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $8
           i32.store offset=4
           local.get $1
           local.get $5
           i32.store offset=32
           local.get $1
           i32.const 1088
           i32.store offset=36
           local.get $8
           local.get $5
           i32.const 1088
           i32.const 0
           i32.const 5
           call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $3
          else
           local.get $1
           i32.const 57
           i32.le_u
           local.get $1
           i32.const 48
           i32.ge_u
           i32.and
           local.get $1
           i32.const 45
           i32.eq
           i32.or
           if
            local.get $0
            i32.const 1
            i32.add
            local.tee $0
            local.set $1
            loop $for-loop|4
             global.get $~lib/memory/__stack_pointer
             local.tee $2
             local.get $7
             i32.store offset=4
             local.get $1
             local.get $7
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.const 1
             i32.shr_u
             i32.lt_s
             if
              block $for-break4
               local.get $2
               local.get $7
               i32.store offset=76
               local.get $7
               local.get $1
               i32.const 1
               i32.shl
               i32.add
               i32.load16_u
               local.tee $2
               i32.const 125
               i32.eq
               local.get $2
               i32.const 44
               i32.eq
               i32.or
               if (result i32)
                i32.const 1
               else
                block $__inlined_func$~lib/util/string/isSpace$20 (result i32)
                 local.get $2
                 i32.const 128
                 i32.or
                 i32.const 160
                 i32.eq
                 local.get $2
                 i32.const 9
                 i32.sub
                 i32.const 4
                 i32.le_u
                 i32.or
                 local.get $2
                 i32.const 5760
                 i32.lt_u
                 br_if $__inlined_func$~lib/util/string/isSpace$20
                 drop
                 i32.const 1
                 local.get $2
                 i32.const -8192
                 i32.add
                 i32.const 10
                 i32.le_u
                 br_if $__inlined_func$~lib/util/string/isSpace$20
                 drop
                 block $break|0
                  block $case6|0
                   local.get $2
                   i32.const 5760
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 8232
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 8233
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 8239
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 8287
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 12288
                   i32.eq
                   br_if $case6|0
                   local.get $2
                   i32.const 65279
                   i32.eq
                   br_if $case6|0
                   br $break|0
                  end
                  i32.const 1
                  br $__inlined_func$~lib/util/string/isSpace$20
                 end
                 i32.const 0
                end
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $2
                local.get $8
                i32.store offset=4
                local.get $2
                local.get $5
                i32.store offset=32
                local.get $2
                local.get $7
                i32.store offset=36
                local.get $8
                local.get $5
                local.get $7
                local.get $0
                i32.const 1
                i32.sub
                local.get $1
                call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                local.get $1
                local.set $0
                i32.const 0
                local.set $3
                br $for-break4
               end
               local.get $1
               i32.const 1
               i32.add
               local.set $1
               br $for-loop|4
              end
             end
            end
           end
          end
         end
        end
       end
      end
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   local.get $6
   local.get $8
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $8
   i32.store offset=4
   local.get $0
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 21
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store8 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=8
   local.get $1
   local.get $8
   i32.store
   local.get $1
   local.get $8
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   i32.const 0
   i32.const 13
   i32.const 2624
   call $~lib/rt/__newArray
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   i32.const 0
   i32.const 13
   i32.const 2656
   call $~lib/rt/__newArray
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   i32.const 0
   i32.const 15
   i32.const 2688
   call $~lib/rt/__newArray
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=16
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store8 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $2
   i32.store offset=12
   local.get $2
   call $src/as/assembly/Board/Board#get:properties
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $3
   i32.store offset=12
   local.get $3
   call $src/as/assembly/Board/Board#get:properties
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $1
   local.get $2
   local.get $3
   i32.load offset=4
   i32.mul
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#updatePropositions
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $1
   i32.store
   local.get $1
   i32.load offset=12
   local.set $3
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $3
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $1
   i32.store
   local.get $1
   i32.load offset=8
   local.set $1
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 12
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store offset=4
   local.get $5
   local.get $4
   call $~lib/object/Object#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $4
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $4
   local.get $1
   i32.store
   local.get $4
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=32
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 0
   i32.const 23
   i32.const 6720
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $4
   local.get $1
   i32.store offset=8
   local.get $4
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $4
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=104
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=108
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $4
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.eqz
   if
    i32.const 2720
    i32.const 7008
    i32.const 6
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store offset=112
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 1152
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    i32.const 1216
    i32.store offset=124
    local.get $2
    call $~lib/array/Array<i32>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=116
    i32.const 1152
    local.get $0
    call $~lib/string/String.__concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1248
    i32.store offset=32
    local.get $0
    i32.const 1248
    call $~lib/string/String.__concat
   else
    i32.const 1184
   end
   local.tee $1
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $4
   i32.store offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $4
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   i32.eqz
   if
    i32.const 2720
    i32.const 7008
    i32.const 7
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 1152
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    i32.const 1216
    i32.store offset=124
    local.get $2
    call $~lib/array/Array<i32>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=116
    i32.const 1152
    local.get $0
    call $~lib/string/String.__concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1248
    i32.store offset=32
    local.get $0
    i32.const 1248
    call $~lib/string/String.__concat
   else
    i32.const 1184
   end
   local.tee $2
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $4
   i32.store offset=4
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7532
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $4
   i32.load offset=8
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2720
    i32.const 7008
    i32.const 8
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $0
   i32.store offset=140
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   if
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 1152
    i32.store offset=4
    i32.const 1
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i32.const 0
    i32.store offset=4
    local.get $5
    i32.const 1152
    i32.store offset=8
    local.get $5
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    i32.const 0
    i32.store offset=8
    local.get $5
    i32.const 8
    i32.const 25
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    i32.const 0
    i32.store
    local.get $5
    i32.const 0
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    i32.const 0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1152
    i32.store offset=4
    i32.const 1148
    i32.load
    i32.const -2
    i32.and
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    i32.const 64
    local.get $6
    local.get $6
    i32.const 64
    i32.le_u
    select
    i32.const 1
    call $~lib/rt/itcms/__new
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    i32.store
    local.get $5
    local.get $7
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.load
     i32.const 1152
     local.get $6
     memory.copy
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     local.get $6
     local.get $5
     i32.load offset=4
     i32.add
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    local.get $5
    i32.store offset=144
    i32.const 0
    local.set $4
    loop $for-loop|5
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $0
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $0
      local.get $4
      call $~lib/array/Array<src/as/assembly/models/Guess/Guess>#__uget
      local.tee $6
      i32.store offset=148
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=152
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.load
      call $~lib/util/number/itoa32
      local.tee $7
      i32.store offset=156
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.load offset=4
      call $~lib/util/number/itoa32
      local.tee $6
      i32.store offset=160
      global.get $~lib/memory/__stack_pointer
      i32.const 7216
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=116
      i32.const 7220
      local.get $7
      i32.store
      i32.const 7216
      local.get $7
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 7216
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=116
      i32.const 7228
      local.get $6
      i32.store
      i32.const 7216
      local.get $6
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 7216
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      i32.const 1680
      i32.store offset=116
      i32.const 7216
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=32
      i32.const 1
      global.set $~argumentsLength
      local.get $5
      local.get $6
      call $~lib/as-string-sink/assembly/index/StringSink#write@varargs
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1216
      i32.store offset=32
      i32.const 1
      global.set $~argumentsLength
      local.get $5
      i32.const 1216
      call $~lib/as-string-sink/assembly/index/StringSink#write@varargs
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $5
    i32.store offset=4
    local.get $4
    local.get $0
    i32.store offset=36
    local.get $4
    local.get $0
    i32.store offset=116
    local.get $4
    local.get $0
    local.get $0
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    i32.const 1
    i32.sub
    call $~lib/array/Array<src/as/assembly/models/Guess/Guess>#__uget
    local.tee $0
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    call $~lib/util/number/itoa32
    local.tee $4
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    call $~lib/util/number/itoa32
    local.tee $0
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=116
    i32.const 7268
    local.get $4
    i32.store
    i32.const 7264
    local.get $4
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=116
    i32.const 7276
    local.get $0
    i32.store
    i32.const 7264
    local.get $0
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    i32.const 1680
    i32.store offset=116
    i32.const 7264
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 1
    global.set $~argumentsLength
    local.get $5
    local.get $0
    call $~lib/as-string-sink/assembly/index/StringSink#write@varargs
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1248
    i32.store offset=32
    i32.const 1
    global.set $~argumentsLength
    local.get $5
    i32.const 1248
    call $~lib/as-string-sink/assembly/index/StringSink#write@varargs
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 7532
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    local.get $5
    i32.store
    block $__inlined_func$~lib/as-string-sink/assembly/index/StringSink#toString$667
     local.get $5
     i32.load offset=4
     local.tee $4
     i32.eqz
     if
      local.get $0
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1680
      local.set $0
      br $__inlined_func$~lib/as-string-sink/assembly/index/StringSink#toString$667
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $0
     local.get $5
     i32.load
     local.get $4
     memory.copy
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
   else
    i32.const 1184
    local.set $0
   end
   local.get $3
   local.get $0
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 6960
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=32
   i32.const 6964
   local.get $1
   i32.store
   i32.const 6960
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6960
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   i32.const 6972
   local.get $2
   i32.store
   i32.const 6960
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6960
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   i32.const 6980
   local.get $0
   i32.store
   i32.const 6960
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6960
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1680
   i32.store offset=32
   i32.const 6960
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 184
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40320
  i32.const 40368
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String> (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  local.get $5
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/assembly/Board/Board#get:properties (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 2720
   i32.const 2848
   i32.const 11
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Board/Board#get:cells (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 2720
   i32.const 2848
   i32.const 12
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2160
   i32.const 3248
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3600
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $2
  select
  local.tee $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  i32.const 1
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $2
  local.get $3
  i32.add
  local.get $0
  local.get $1
  call $~lib/util/number/utoa32_dec_lut
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/assembly/index/processBoard (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7532
  i32.lt_s
  if
   i32.const 40320
   i32.const 40368
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/index/processBoard
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
