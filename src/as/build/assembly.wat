(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i32 i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32 i32 i32)))
 (type $7 (func (result i32)))
 (type $8 (func (param i32 i32 i32) (result i32)))
 (type $9 (func (param i32 i32 i32 i32)))
 (type $10 (func (param i32 i32 i64)))
 (type $11 (func (param i32 i32 i32 i32) (result i32)))
 (type $12 (func (param i32 i32 i32 i32 i32 i32)))
 (type $13 (func (result f64)))
 (type $14 (func (param i32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "console.log" (func $~lib/bindings/dom/console.log (param i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
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
 (global $src/as/assembly/index/ai (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7664))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 40524))
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
 (data $7 (i32.const 1260) "\1c")
 (data $7.1 (i32.const 1272) "\01")
 (data $8 (i32.const 1292) "<")
 (data $8.1 (i32.const 1304) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $9 (i32.const 1356) "<")
 (data $9.1 (i32.const 1368) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $12 (i32.const 1484) "<")
 (data $12.1 (i32.const 1496) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $13 (i32.const 1548) ",")
 (data $13.1 (i32.const 1560) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $15 (i32.const 1628) "<")
 (data $15.1 (i32.const 1640) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $16 (i32.const 1692) "\1c")
 (data $16.1 (i32.const 1704) "\01")
 (data $17 (i32.const 1724) "\1c")
 (data $17.1 (i32.const 1736) "\01")
 (data $18 (i32.const 1756) "\1c")
 (data $18.1 (i32.const 1768) "\02")
 (data $19 (i32.const 1788) ",")
 (data $19.1 (i32.const 1800) "\02\00\00\00\14\00\00\00p\00r\00o\00p\00e\00r\00t\00i\00e\00s")
 (data $20 (i32.const 1836) "\1c")
 (data $20.1 (i32.const 1848) "\02\00\00\00\0c\00\00\00h\00e\00i\00g\00h\00t")
 (data $21 (i32.const 1868) "\1c")
 (data $21.1 (i32.const 1880) "\02\00\00\00\n\00\00\00w\00i\00d\00t\00h")
 (data $22 (i32.const 1900) "\1c")
 (data $22.1 (i32.const 1912) "\02\00\00\00\n\00\00\00m\00i\00n\00e\00s")
 (data $23 (i32.const 1932) "L")
 (data $23.1 (i32.const 1944) "\02\00\00\00<\00\00\00S\00t\00a\00r\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \00e\00n\00d\00!")
 (data $24 (i32.const 2012) "\\")
 (data $24.1 (i32.const 2024) "\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00v\00i\00r\00t\00u\00a\00l\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data $25 (i32.const 2108) "\1c")
 (data $25.1 (i32.const 2120) "\02\00\00\00\02\00\00\00a")
 (data $26 (i32.const 2140) "\1c")
 (data $26.1 (i32.const 2152) "\02\00\00\00\02\00\00\00l")
 (data $27 (i32.const 2172) "\1c")
 (data $27.1 (i32.const 2184) "\02\00\00\00\02\00\00\00s")
 (data $28 (i32.const 2204) "\1c")
 (data $28.1 (i32.const 2216) "\02\00\00\00\n\00\00\00c\00e\00l\00l\00s")
 (data $29 (i32.const 2236) ",")
 (data $29.1 (i32.const 2248) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $30 (i32.const 2284) ",")
 (data $30.1 (i32.const 2296) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $31 (i32.const 2332) "\1c")
 (data $31.1 (i32.const 2344) "\02\00\00\00\06\00\00\00_\00i\00d")
 (data $32 (i32.const 2364) ",")
 (data $32.1 (i32.const 2376) "\02\00\00\00\14\00\00\00m\00i\00n\00e\00s\00C\00o\00u\00n\00t")
 (data $33 (i32.const 2412) ",")
 (data $33.1 (i32.const 2424) "\02\00\00\00\10\00\00\00r\00e\00v\00e\00a\00l\00e\00d")
 (data $34 (i32.const 2460) "<")
 (data $34.1 (i32.const 2472) "\02\00\00\00(\00\00\00J\00S\00O\00N\00:\00 \00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00\"")
 (data $35 (i32.const 2524) ",")
 (data $35.1 (i32.const 2536) "\02\00\00\00\18\00\00\00\"\00 \00a\00s\00 \00b\00o\00o\00l\00e\00a\00n")
 (data $36 (i32.const 2572) "\1c\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\0c\00\00\00\b0\t\00\00\00\00\00\00\f0\t")
 (data $37 (i32.const 2604) "\\")
 (data $37.1 (i32.const 2616) "\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00j\00s\00o\00n\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00r\00c\00/\00j\00s\00o\00n\00.\00t\00s")
 (data $38 (i32.const 2700) "|")
 (data $38.1 (i32.const 2712) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $39 (i32.const 2828) "\\")
 (data $39.1 (i32.const 2840) "\02\00\00\00H\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00M\00i\00n\00e\00S\00w\00e\00e\00p\00e\00r\00S\00o\00l\00v\00e\00r\00.\00t\00s")
 (data $40 (i32.const 2924) "\1c")
 (data $40.1 (i32.const 2936) "\01")
 (data $41 (i32.const 2956) "L")
 (data $41.1 (i32.const 2968) "\02\00\00\000\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00B\00o\00a\00r\00d\00.\00t\00s")
 (data $42 (i32.const 3036) "|")
 (data $42.1 (i32.const 3048) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $43 (i32.const 3164) "\1c")
 (data $43.1 (i32.const 3176) "\01")
 (data $44 (i32.const 3196) "\1c")
 (data $44.1 (i32.const 3208) "\01")
 (data $45 (i32.const 3228) "\1c")
 (data $45.1 (i32.const 3240) "\0e\00\00\00\08\00\00\00\01")
 (data $46 (i32.const 3260) "\1c")
 (data $46.1 (i32.const 3272) "\01")
 (data $47 (i32.const 3292) "\1c")
 (data $47.1 (i32.const 3304) "\01")
 (data $48 (i32.const 3324) "<")
 (data $48.1 (i32.const 3336) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $49 (i32.const 3388) "|")
 (data $49.1 (i32.const 3400) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $50 (i32.const 3516) "<")
 (data $50.1 (i32.const 3528) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $51 (i32.const 3580) "\1c")
 (data $51.1 (i32.const 3592) "\02\00\00\00\02\00\00\000")
 (data $52 (i32.const 3612) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $53 (i32.const 4012) "\1c\04")
 (data $53.1 (i32.const 4024) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $54 (i32.const 5068) "\\")
 (data $54.1 (i32.const 5080) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $55 (i32.const 5164) "\1c")
 (data $55.1 (i32.const 5176) "\01")
 (data $56 (i32.const 5196) "L")
 (data $56.1 (i32.const 5208) "\02\00\00\00:\00\00\00m\00i\00n\00s\00D\00i\00f\00f\00 \00i\00s\00 \00n\00e\00g\00a\00t\00i\00v\00e\00.\00 \00M\00i\00n\00e\00s\00 \00(")
 (data $57 (i32.const 5276) ",")
 (data $57.1 (i32.const 5288) "\02\00\00\00\10\00\00\00)\00.\00 \00T\00h\00i\00s\00 ")
 (data $58 (i32.const 5324) ",")
 (data $58.1 (i32.const 5336) "\02\00\00\00\0e\00\00\00.\00 \00C\00e\00l\00l\00 ")
 (data $59 (i32.const 5372) "\1c")
 (data $59.1 (i32.const 5384) "\02\00\00\00\02\00\00\00?")
 (data $60 (i32.const 5404) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\1c\00\00\00`\14\00\00\00\00\00\00\b0\14\00\00\00\00\00\00\e0\14\00\00\00\00\00\00\10\15")
 (data $61 (i32.const 5452) "\1c")
 (data $61.1 (i32.const 5464) "\02\00\00\00\02\00\00\00|")
 (data $62 (i32.const 5484) "\1c")
 (data $62.1 (i32.const 5496) "\02\00\00\00\06\00\00\00|\00 \00{")
 (data $63 (i32.const 5516) ",")
 (data $63.1 (i32.const 5528) "\02\00\00\00\0e\00\00\00}\00 \00=\00 \00-\00>\00 ")
 (data $64 (i32.const 5564) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\18\00\00\00`\15\00\00\00\00\00\00\80\15\00\00\00\00\00\00\a0\15")
 (data $65 (i32.const 5612) "\1c")
 (data $65.1 (i32.const 5624) "\0e\00\00\00\08\00\00\00\02")
 (data $66 (i32.const 5644) "\1c")
 (data $66.1 (i32.const 5656) "\01")
 (data $67 (i32.const 5676) "\1c")
 (data $67.1 (i32.const 5688) "\0e\00\00\00\08\00\00\00\03")
 (data $68 (i32.const 5708) "\1c")
 (data $68.1 (i32.const 5720) "\02\00\00\00\02\00\00\00:")
 (data $69 (i32.const 5740) "\1c\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\0c\00\00\00\00\00\00\00`\16")
 (data $70 (i32.const 5772) "\1c")
 (data $70.1 (i32.const 5784) "\0e\00\00\00\08\00\00\00\04")
 (data $71 (i32.const 5804) "\1c")
 (data $71.1 (i32.const 5816) "\01")
 (data $72 (i32.const 5836) "\1c")
 (data $72.1 (i32.const 5848) "\01")
 (data $73 (i32.const 5868) "L")
 (data $73.1 (i32.const 5880) "\02\00\00\002\00\00\00m\00i\00n\00s\00D\00i\00f\00f\00 \00i\00s\00 \00n\00e\00g\00a\00t\00i\00v\00e\00.\00 \00I\00s\00 ")
 (data $74 (i32.const 5948) "<")
 (data $74.1 (i32.const 5960) "\02\00\00\00$\00\00\00 \00r\00e\00a\00l\00l\00y\00 \00s\00u\00b\00s\00e\00t\00 \00o\00f\00 ")
 (data $75 (i32.const 6012) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\14\00\00\00\00\17\00\00\00\00\00\00P\17\00\00\00\00\00\00\10\15")
 (data $76 (i32.const 6060) "\1c")
 (data $76.1 (i32.const 6072) "\01")
 (data $77 (i32.const 6092) "\1c")
 (data $77.1 (i32.const 6104) "\02\00\00\00\02\00\00\00(")
 (data $78 (i32.const 6124) "\1c")
 (data $78.1 (i32.const 6136) "\02\00\00\00\06\00\00\00 \00-\00 ")
 (data $79 (i32.const 6156) "\1c")
 (data $79.1 (i32.const 6168) "\02\00\00\00\02\00\00\00)")
 (data $80 (i32.const 6188) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\14\00\00\00\e0\17\00\00\00\00\00\00\00\18\00\00\00\00\00\00 \18")
 (data $81 (i32.const 6236) "\1c")
 (data $81.1 (i32.const 6248) "\01")
 (data $82 (i32.const 6268) "\1c")
 (data $82.1 (i32.const 6280) "\02\00\00\00\02\00\00\00*")
 (data $83 (i32.const 6300) "<")
 (data $83.1 (i32.const 6312) "\02\00\00\00*\00\00\00{\00\"\00k\00n\00o\00w\00n\00M\00i\00n\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:")
 (data $84 (i32.const 6364) "<")
 (data $84.1 (i32.const 6376) "\02\00\00\00*\00\00\00,\00\"\00k\00n\00o\00w\00n\00S\00a\00f\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:")
 (data $85 (i32.const 6428) "\1c")
 (data $85.1 (i32.const 6440) "\02\00\00\00\02\00\00\00}")
 (data $86 (i32.const 6460) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\14\00\00\00\b0\18\00\00\00\00\00\00\f0\18\00\00\00\00\00\000\19")
 (data $87 (i32.const 6508) "l")
 (data $87.1 (i32.const 6520) "\02\00\00\00P\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00s\00/\00S\00o\00l\00v\00e\00r\00R\00e\00s\00p\00o\00n\00s\00e\00.\00t\00s")
 (data $88 (i32.const 6620) "\1c")
 (data $88.1 (i32.const 6632) "\01")
 (data $89 (i32.const 6652) "\1c")
 (data $89.1 (i32.const 6664) "\01")
 (data $90 (i32.const 6684) "\1c")
 (data $90.1 (i32.const 6696) "\02\00\00\00\0c\00\00\00{\00\"\00i\00d\00\"\00:")
 (data $91 (i32.const 6716) ",")
 (data $91.1 (i32.const 6728) "\02\00\00\00\12\00\00\00,\00\"\00m\00i\00n\00e\00s\00\"\00:")
 (data $92 (i32.const 6764) ",")
 (data $92.1 (i32.const 6776) "\02\00\00\00\12\00\00\00,\00\"\00c\00e\00l\00l\00s\00\"\00:")
 (data $93 (i32.const 6812) ",\00\00\00\03\00\00\00\00\00\00\00\r\00\00\00\1c\00\00\000\1a\00\00\00\00\00\00P\1a\00\00\00\00\00\00\80\1a\00\00\00\00\00\000\19")
 (data $94 (i32.const 6860) ",")
 (data $94.1 (i32.const 6872) "\02\00\00\00\1a\00\00\00r\00u\00n\00n\00i\00n\00g\00 \00t\00e\00s\00t\00s")
 (data $95 (i32.const 6908) "\1c")
 (data $95.1 (i32.const 6920) "\01\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data $96 (i32.const 6940) "\1c")
 (data $96.1 (i32.const 6952) "\02\00\00\00\02\00\00\00b")
 (data $97 (i32.const 6972) ",")
 (data $97.1 (i32.const 6984) "\01\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data $98 (i32.const 7020) "\1c")
 (data $98.1 (i32.const 7032) "\02\00\00\00\02\00\00\00c")
 (data $99 (i32.const 7052) "\1c")
 (data $99.1 (i32.const 7064) "\01\00\00\00\08\00\00\00\02\00\00\00\05")
 (data $100 (i32.const 7084) "<")
 (data $100.1 (i32.const 7096) "\02\00\00\00$\00\00\00o\00v\00e\00r\00l\00a\00p\00p\00i\00n\00g\00:\00 \00(\00a\00,\00b\00)")
 (data $101 (i32.const 7148) "<")
 (data $101.1 (i32.const 7160) "\02\00\00\00$\00\00\00o\00v\00e\00r\00l\00a\00p\00p\00i\00n\00g\00:\00 \00(\00a\00,\00c\00)")
 (data $102 (i32.const 7212) "<")
 (data $102.1 (i32.const 7224) "\02\00\00\00$\00\00\00o\00v\00e\00r\00l\00a\00p\00p\00i\00n\00g\00:\00 \00(\00b\00,\00c\00)")
 (data $103 (i32.const 7276) "<")
 (data $103.1 (i32.const 7288) "\02\00\00\00$\00\00\00s\00u\00b\00s\00e\00t\00:\00 \00(\00a\00 \00i\00s\00s\00o\00 \00b\00)")
 (data $104 (i32.const 7340) "<")
 (data $104.1 (i32.const 7352) "\02\00\00\00$\00\00\00s\00u\00b\00s\00e\00t\00:\00 \00(\00a\00 \00i\00s\00s\00o\00 \00c\00)")
 (data $105 (i32.const 7404) "<")
 (data $105.1 (i32.const 7416) "\02\00\00\00$\00\00\00s\00u\00b\00s\00e\00t\00:\00 \00(\00b\00 \00i\00s\00s\00o\00 \00c\00)")
 (data $106 (i32.const 7468) "<")
 (data $106.1 (i32.const 7480) "\02\00\00\00$\00\00\00s\00u\00b\00s\00e\00t\00:\00 \00(\00c\00 \00i\00s\00s\00o\00 \00b\00)")
 (data $107 (i32.const 7532) "<")
 (data $107.1 (i32.const 7544) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $108 (i32.const 7596) "<")
 (data $108.1 (i32.const 7608) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $109 (i32.const 7664) "\16\00\00\00 \00\00\00 \00\00\00 ")
 (data $109.1 (i32.const 7692) " \00\00\00 \00\00\00\02A\00\00\02\t\00\00\00\00\00\00\02A\00\00 \00\00\00\04A\00\00\00\00\00\00 \00\00\00\08\t\00\00\10A\82\00\00\00\00\00 \00\00\00 \00\00\00 ")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0 $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells~anonymous|0)
 (export "tests" (func $src/as/assembly/index/tests))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "update" (func $export:src/as/assembly/index/update))
 (export "guess" (func $export:src/as/assembly/index/guess))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $src/as/assembly/index/ai
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1504
  call $~lib/rt/itcms/__visit
  i32.const 2256
  call $~lib/rt/itcms/__visit
  i32.const 3056
  call $~lib/rt/itcms/__visit
  i32.const 1312
  call $~lib/rt/itcms/__visit
  i32.const 7552
  call $~lib/rt/itcms/__visit
  i32.const 7616
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
     i32.const 1376
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
   i32.const 40524
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1376
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
   i32.const 1376
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
    i32.const 1376
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
   i32.const 7664
   i32.load
   i32.gt_u
   if
    i32.const 1504
    i32.const 1568
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 7668
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
    i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
    i32.const 1648
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
    i32.const 1648
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
  i32.const 40528
  i32.const 0
  i32.store
  i32.const 42096
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
    i32.const 40528
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
      i32.const 40528
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
  i32.const 40528
  i32.const 42100
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 40528
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 40524
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
   i32.const 1648
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
      i32.const 40524
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
     i32.const 1376
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 40524
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
   i32.const 1648
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
     i32.const 1648
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
   i32.const 1312
   i32.const 1648
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
    i32.const 1648
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
   i32.const 1648
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
   i32.const 1648
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
   i32.const 1312
   i32.const 1376
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
   i32.const 1376
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
    local.tee $5
    i32.load offset=4
    local.set $3
    local.get $5
    i32.load
    local.tee $6
    local.set $5
    local.get $6
    local.get $3
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
      local.get $0
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      local.tee $8
      i32.load
      local.tee $9
      local.get $5
      local.get $4
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      if
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
    local.get $5
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      local.get $0
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      local.tee $5
      i32.load
      local.tee $8
      local.get $3
      local.get $4
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      if
       local.get $5
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
    local.get $3
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
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
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
     local.get $5
     i32.load
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
     local.get $1
     i32.load
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
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $7
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    local.tee $6
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
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $4
    local.get $7
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
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
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
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
    i32.const 7552
    i32.const 1376
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
   i32.const 7616
   i32.const 1376
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
 (func $src/as/assembly/Board/Board~visit (param $0 i32)
  (local $1 i32)
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
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
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
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $src/as/assembly/models/SolverResponse/SolverGuessResponse
      block $src/as/assembly/MineSweeperSolver/Guess
       block $~lib/date/Date
        block $src/as/assembly/models/SolverResponse/SolverUpdateResponse
         block $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>
          block $~lib/set/Set<i32>
           block $src/as/assembly/Board/Location
            block $~lib/function/Function<%28i32%2Ci32%29=>i32>
             block $~lib/staticarray/StaticArray<~lib/string/String>
              block $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>
               block $~lib/array/Array<src/as/assembly/Proposition/Proposition>
                block $src/as/assembly/Proposition/Proposition
                 block $~lib/array/Array<i32>
                  block $~lib/array/Array<src/as/assembly/models/Cell/Cell>
                   block $src/as/assembly/models/Cell/Cell
                    block $src/as/assembly/models/BoardProperties/BoardProperties
                     block $src/as/assembly/Board/Board
                      block $src/as/assembly/MineSweeperSolver/MineSweeperSolver
                       block $~lib/arraybuffer/ArrayBufferView
                        block $~lib/string/String
                         block $~lib/arraybuffer/ArrayBuffer
                          block $~lib/object/Object
                           local.get $0
                           i32.const 8
                           i32.sub
                           i32.load
                           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $src/as/assembly/MineSweeperSolver/MineSweeperSolver $src/as/assembly/Board/Board $src/as/assembly/models/BoardProperties/BoardProperties $src/as/assembly/models/Cell/Cell $~lib/array/Array<src/as/assembly/models/Cell/Cell> $~lib/array/Array<i32> $src/as/assembly/Proposition/Proposition $~lib/array/Array<src/as/assembly/Proposition/Proposition> $~lib/as-virtual/assembly/index/Virtual<~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/function/Function<%28i32%2Ci32%29=>i32> $src/as/assembly/Board/Location $~lib/set/Set<i32> $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition> $src/as/assembly/models/SolverResponse/SolverUpdateResponse $~lib/date/Date $src/as/assembly/MineSweeperSolver/Guess $src/as/assembly/models/SolverResponse/SolverGuessResponse $invalid
                          end
                          return
                         end
                         return
                        end
                        return
                       end
                       local.get $0
                       i32.load
                       local.tee $0
                       if
                        local.get $0
                        call $~lib/rt/itcms/__visit
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
                      local.tee $0
                      if
                       local.get $0
                       call $~lib/rt/itcms/__visit
                      end
                      return
                     end
                     local.get $0
                     call $src/as/assembly/Board/Board~visit
                     return
                    end
                    return
                   end
                   return
                  end
                  local.get $0
                  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>~visit
                  return
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 4
                 i32.sub
                 global.set $~lib/memory/__stack_pointer
                 global.get $~lib/memory/__stack_pointer
                 i32.const 7756
                 i32.lt_s
                 br_if $folding-inner0
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
                 br $folding-inner1
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
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/itcms/__visit
                end
                return
               end
               local.get $0
               call $~lib/array/Array<src/as/assembly/models/Cell/Cell>~visit
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
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 7756
            i32.lt_s
            br_if $folding-inner0
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
            br $folding-inner1
           end
           return
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 7756
          i32.lt_s
          br_if $folding-inner0
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
          br $folding-inner1
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 7756
         i32.lt_s
         br_if $folding-inner0
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
         br $folding-inner1
        end
        local.get $0
        call $src/as/assembly/Board/Board~visit
        return
       end
       return
      end
      return
     end
     return
    end
    unreachable
   end
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  memory.size
  i32.const 16
  i32.shl
  i32.const 40524
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1428
  i32.const 1424
  i32.store
  i32.const 1432
  i32.const 1424
  i32.store
  i32.const 1424
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1460
  i32.const 1456
  i32.store
  i32.const 1464
  i32.const 1456
  i32.store
  i32.const 1456
  global.set $~lib/rt/itcms/toSpace
  i32.const 1604
  i32.const 1600
  i32.store
  i32.const 1608
  i32.const 1600
  i32.store
  i32.const 1600
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.store offset=8
  local.get $0
  i32.const 17
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  i32.const 9
  i32.const 1280
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  i32.const 9
  i32.const 1712
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  i32.const 11
  i32.const 1744
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $src/as/assembly/index/ai
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
    block $__inlined_func$~lib/util/string/isSpace$1 (result i32)
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
      br $__inlined_func$~lib/util/string/isSpace$1
     end
     i32.const 1
     local.get $3
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$1
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
      br $__inlined_func$~lib/util/string/isSpace$1
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
   i32.const 1776
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 1776
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 1856
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 1856
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
   i32.const 1888
   i32.store offset=4
   local.get $1
   i32.const 1888
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
   i32.const 1920
   i32.store offset=4
   local.get $1
   i32.const 1920
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 1952
   i32.const 2032
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 1776
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
   i32.const 1776
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
  i32.const 1776
  i32.store offset=8
  local.get $1
  local.get $2
  local.get $4
  i32.const 1772
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
     i32.const 1776
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 1776
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 2352
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 2352
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
   i32.const 2384
   i32.store offset=4
   local.get $1
   i32.const 2384
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
   i32.const 2432
   i32.store offset=4
   local.get $1
   i32.const 2432
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
      i32.const 2592
      i32.store offset=4
      local.get $0
      local.get $2
      i32.store offset=24
      i32.const 2596
      local.get $2
      i32.store
      i32.const 2592
      local.get $2
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 2592
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1776
      i32.store offset=24
      i32.const 2592
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      i32.const 2624
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  local.tee $4
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2256
    i32.const 2304
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $3
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $2
   if
    i32.const 1073741820
    local.get $4
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
   block $__inlined_func$~lib/rt/itcms/__renew$641
    local.get $3
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $4
     local.get $1
     i32.store offset=16
     local.get $3
     local.set $2
     br $__inlined_func$~lib/rt/itcms/__renew$641
    end
    local.get $1
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $2
    local.get $3
    local.get $1
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $1
    local.get $4
    i32.lt_u
    select
    memory.copy
   end
   local.get $2
   local.get $3
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 7756
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
   i32.const 1808
   i32.store offset=4
   local.get $1
   i32.const 1808
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
    i32.const 6
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
            i32.const 2128
            i32.store offset=8
            i32.const 2128
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
            i32.const 2160
            i32.store offset=8
            i32.const 2160
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
            i32.const 2192
            i32.store offset=8
            i32.const 2192
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
                 block $__inlined_func$~lib/util/string/isSpace$3 (result i32)
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
                  br_if $__inlined_func$~lib/util/string/isSpace$3
                  drop
                  i32.const 1
                  local.get $1
                  i32.const -8192
                  i32.add
                  i32.const 10
                  i32.le_u
                  br_if $__inlined_func$~lib/util/string/isSpace$3
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
                   br $__inlined_func$~lib/util/string/isSpace$3
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
   i32.const 2224
   i32.store offset=4
   local.get $1
   i32.const 2224
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
    i32.const 7
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
    i32.const 7756
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
    i32.const 8
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
         i32.const 7
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
                 i32.const 2128
                 i32.store offset=44
                 i32.const 2128
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
                 i32.const 2160
                 i32.store offset=44
                 i32.const 2160
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
                 i32.const 2192
                 i32.store offset=44
                 i32.const 2192
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
                      block $__inlined_func$~lib/util/string/isSpace$5 (result i32)
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
                       br_if $__inlined_func$~lib/util/string/isSpace$5
                       drop
                       i32.const 1
                       local.get $2
                       i32.const -8192
                       i32.add
                       i32.const 10
                       i32.le_u
                       br_if $__inlined_func$~lib/util/string/isSpace$5
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
                        br $__inlined_func$~lib/util/string/isSpace$5
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
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#initializeIfNot (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 1504
   i32.const 2304
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
   i32.const 3056
   i32.const 2304
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
    i32.const 1504
    i32.const 2304
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 1504
   i32.const 2304
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
   i32.const 7756
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
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $0
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf$653
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
     br $__inlined_func$~lib/array/Array<i32>#indexOf$653
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
       br $__inlined_func$~lib/array/Array<i32>#indexOf$653
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
  i32.const 40544
  i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 9
  i32.const 3184
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 2256
   i32.const 2304
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 9
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
      local.tee $1
      local.get $0
      i32.load offset=4
      local.tee $3
      local.get $2
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.set $4
      local.get $0
      local.get $3
      local.get $1
      local.get $4
      select
      i32.store
      local.get $1
      local.get $3
      local.get $4
      select
      local.tee $1
      local.get $0
      i32.load offset=8
      local.tee $3
      local.get $2
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.set $4
      local.get $0
      local.get $3
      local.get $1
      local.get $4
      select
      i32.store offset=4
      local.get $0
      local.get $1
      local.get $3
      local.get $4
      select
      i32.store offset=8
     end
     local.get $0
     i32.load
     local.tee $1
     local.get $0
     i32.load offset=4
     local.tee $3
     local.get $2
     i32.load
     call_indirect (type $0)
     i32.const 0
     i32.gt_s
     local.set $2
     local.get $0
     local.get $3
     local.get $1
     local.get $2
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 24
  memory.fill
  local.get $5
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=12
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
    i32.load offset=12
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
  i32.const 9
  i32.const 3216
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
  i32.const 3248
  i32.store offset=4
  local.get $0
  i32.const 3248
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
   i32.const 7756
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
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 8
   i32.const 15
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
   i32.const 8
   i32.const 3280
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
        i32.const 7756
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
  i32.const 40544
  i32.const 40592
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
   i32.const 7756
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
   i32.const 7756
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
   block $__inlined_func$~lib/set/Set<i32>#find$656
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
       br $__inlined_func$~lib/set/Set<i32>#find$656
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
     i32.const 7756
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
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 9
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
   i32.const 2256
   i32.const 2304
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
 (func $~lib/array/Array<i32>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill
   local.get $4
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
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
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $4
   local.get $0
   i32.store offset=8
   local.get $4
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
   i32.const 7756
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
   i32.const 24
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $6
   local.get $5
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
   i32.const 32
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store offset=8
   local.get $6
   local.get $5
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
   local.get $0
   local.get $6
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
     local.get $6
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $6
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
   local.get $4
   i32.store offset=4
   local.get $0
   local.get $6
   i32.store offset=16
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $6
   i32.store
   local.get $6
   i32.load offset=8
   local.set $5
   local.get $0
   local.get $6
   i32.store
   local.get $0
   local.get $6
   i32.load offset=16
   local.tee $7
   call $~lib/array/Array<i32>#constructor
   local.tee $6
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
     local.get $5
     local.get $3
     i32.const 3
     i32.shl
     i32.add
     local.tee $8
     i32.load offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $1
      local.tee $0
      i32.const 1
      i32.add
      local.set $1
      local.get $6
      local.get $0
      local.get $8
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
   local.get $6
   i32.store
   local.get $6
   local.get $1
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
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
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
    i32.const 7756
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
     i32.const 1776
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
     i32.const 7756
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
     block $__inlined_func$~lib/string/String#substring$703
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
       i32.const 1776
       local.set $0
       br $__inlined_func$~lib/string/String#substring$703
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
       br $__inlined_func$~lib/string/String#substring$703
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
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
 (func $~lib/array/Array<i32>#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  local.get $1
  i32.const 1216
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<i32>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 28
  memory.fill
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $2
  local.get $0
  i32.load
  local.tee $3
  i32.store offset=8
  local.get $2
  i32.const 5632
  i32.store offset=12
  local.get $3
  i32.const 5632
  call $~lib/array/Array<i32>#sort
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  call $~lib/array/Array<i32>#toString
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  call $~lib/util/number/itoa32
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 5584
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  i32.const 5588
  local.get $1
  i32.store
  i32.const 5584
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 5584
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  i32.const 5596
  local.get $2
  i32.store
  i32.const 5584
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 5584
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 5604
  local.get $0
  i32.store
  i32.const 5584
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 5584
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store offset=8
  i32.const 5584
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/console/console.log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  call $~lib/bindings/dom/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Proposition/Proposition#removeMineCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.const 28
  memory.fill
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
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 9
  i32.const 5184
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $4
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
    local.tee $4
    i32.store offset=4
    local.get $1
    local.get $4
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
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=4
     i32.const 0
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $1
      call $~lib/array/Array<i32>#toString
      local.tee $6
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      call $src/as/assembly/Proposition/Proposition#toString
      local.tee $4
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $7
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $7
      local.get $2
      call $~lib/array/Array<i32>#__get
      call $~lib/util/number/itoa32
      local.tee $7
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      i32.const 5424
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      i32.const 5428
      local.get $6
      i32.store
      i32.const 5424
      local.get $6
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 5424
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=12
      i32.const 5436
      local.get $4
      i32.store
      i32.const 5424
      local.get $4
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 5424
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      i32.const 5444
      local.get $7
      i32.store
      i32.const 5424
      local.get $7
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 5424
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1776
      i32.store offset=12
      i32.const 5424
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      call $~lib/console/console.log
     end
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $3
     i32.store
     local.get $4
     local.get $0
     i32.store offset=12
     local.get $4
     local.get $0
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $3
     local.get $4
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
  local.get $5
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 24
  memory.fill
  local.get $5
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=12
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
    i32.load offset=12
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
  i32.const 9
  i32.const 5664
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
    i32.load offset=4
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
  i32.load offset=4
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
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 5696
  i32.store offset=4
  local.get $0
  i32.const 5696
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
   i32.const 7756
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
   i32.load offset=4
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
   i32.load offset=8
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
    i32.load offset=12
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
     i32.load offset=12
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
     block $__inlined_func$src/as/assembly/Proposition/Proposition#isEqual$13 (result i32)
      i32.const 0
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 7756
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
       br $__inlined_func$src/as/assembly/Proposition/Proposition#isEqual$13
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
   i32.load offset=12
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
  i32.const 40544
  i32.const 40592
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
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 40
   memory.fill
   local.get $3
   local.get $0
   i32.store offset=4
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i32.const 0
   i32.const 20
   memory.fill
   local.get $5
   i32.const 0
   i32.const 8
   i32.const 2944
   call $~lib/rt/__newArray
   local.tee $5
   i32.store
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    call $src/as/assembly/Board/Board#get:cells
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $4
     call $src/as/assembly/Board/Board#get:cells
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $1
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     i32.load8_u offset=8
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=16
      local.get $4
      call $src/as/assembly/Board/Board#get:cells
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $6
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
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $5
   i32.store offset=8
   loop $for-loop|00
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     local.get $2
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.tee $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 9
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
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     local.get $0
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $1
     local.get $3
     local.get $4
     call $src/as/assembly/Board/Board#getAdjacentCells
     local.tee $6
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 9
     i32.const 3312
     call $~lib/rt/__newArray
     local.tee $3
     i32.store offset=32
     i32.const 0
     local.set $1
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $1
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=24
       local.get $6
       local.get $1
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=4
       local.get $3
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
     local.get $4
     i32.load
     call $~lib/util/number/itoa32
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=24
     local.get $1
     local.get $6
     local.get $3
     local.get $4
     i32.load offset=4
     call $src/as/assembly/Proposition/Proposition#constructor
     local.tee $1
     i32.store offset=36
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
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.load offset=12
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
    i32.load offset=12
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
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 11
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
   i32.const 2256
   i32.const 2304
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 7756
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
   i32.const 7756
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
   block $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find$665
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
       block $__inlined_func$~lib/string/String.__eq$704
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
        i32.const 7756
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
         br $__inlined_func$~lib/string/String.__eq$704
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
         br $__inlined_func$~lib/string/String.__eq$704
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
         br $__inlined_func$~lib/string/String.__eq$704
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $6
        i32.store
        local.get $3
        local.get $1
        i32.store offset=4
        block $__inlined_func$~lib/util/string/compareImpl$1 (result i32)
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
            br $__inlined_func$~lib/util/string/compareImpl$1
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
       br $__inlined_func$~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find$665
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
     i32.const 7756
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
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
    i32.const 1504
    i32.const 2304
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
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 36
   memory.fill
   local.get $4
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.store
   local.get $4
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#removedKnownCellsFromPropositions
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
   local.tee $5
   i32.store offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $0
    i32.store offset=4
    local.get $6
    local.get $0
    i32.load offset=12
    local.tee $6
    i32.store
    local.get $6
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=12
     local.tee $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     local.get $2
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.tee $6
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $src/as/assembly/Proposition/Proposition#isSatisfied
     if (result i32)
      i32.const 0
     else
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      call $src/as/assembly/Proposition/Proposition#getCells
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      local.get $7
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      i32.const 0
      i32.ge_s
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      local.get $5
      i32.store
      local.get $7
      local.get $6
      i32.store offset=4
      local.get $5
      local.get $6
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      local.get $6
      i32.store
      local.get $7
      local.get $6
      call $src/as/assembly/Proposition/Proposition#getCells
      local.tee $7
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $src/as/assembly/Proposition/Proposition#hasNoMine
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=4
       local.get $0
       local.get $7
       call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addSafeCells
       drop
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $0
       i32.store
       local.get $6
       local.get $7
       i32.store offset=4
       local.get $0
       local.get $7
       call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
       drop
      end
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store
   local.get $6
   i32.const 0
   i32.store offset=8
   local.get $6
   i32.const 24
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $6
   local.get $7
   i32.store
   local.get $6
   local.get $7
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
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $6
   local.get $7
   i32.store offset=8
   local.get $6
   local.get $7
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
   local.get $2
   local.get $6
   i32.store offset=20
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=32
     local.get $5
     local.get $3
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7756
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $7
     i32.const 0
     i32.const 24
     memory.fill
     local.get $7
     local.get $2
     i32.store offset=12
     local.get $7
     local.get $2
     i32.load
     local.tee $8
     i32.store offset=4
     local.get $7
     i32.const 5792
     i32.store offset=8
     local.get $8
     i32.const 5792
     call $~lib/array/Array<i32>#sort
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $7
     local.get $8
     call $~lib/array/Array<i32>#toString
     local.tee $7
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     call $~lib/util/number/itoa32
     local.tee $2
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     i32.const 5760
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     i32.const 5760
     local.get $7
     i32.store
     i32.const 5760
     local.get $7
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 5760
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     i32.const 5768
     local.get $2
     i32.store
     i32.const 5760
     local.get $2
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 5760
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1776
     i32.store offset=4
     i32.const 5760
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=28
     local.get $5
     local.get $3
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=24
     local.get $6
     local.get $2
     local.get $7
     call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $6
   i32.store offset=24
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $6
   i32.store
   local.get $6
   i32.load offset=8
   local.set $3
   local.get $2
   local.get $6
   i32.store
   local.get $2
   local.get $6
   i32.load offset=16
   local.tee $5
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
   local.tee $6
   i32.store offset=4
   i32.const 0
   local.set $2
   loop $for-loop|00
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $3
     local.get $2
     i32.const 12
     i32.mul
     i32.add
     local.tee $7
     i32.load offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $6
      i32.store
      local.get $8
      local.get $7
      i32.load offset=4
      local.tee $7
      i32.store offset=8
      local.get $6
      local.get $1
      local.get $7
      call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   local.get $1
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $0
   local.get $6
   i32.store offset=12
   local.get $0
   local.get $6
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $4
   i32.ne
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/Proposition/Proposition#getOverlappingCells (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 0
  i32.const 9
  i32.const 5856
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
   i32.load
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load
    local.tee $5
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $5
    local.get $3
    local.get $2
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=8
     local.get $4
     local.get $3
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
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/assembly/Proposition/Proposition#isSubSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $2
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  local.get $3
  i32.lt_s
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $src/as/assembly/Proposition/Proposition#getOverlappingCells
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.set $1
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
   local.get $1
   i32.eq
  else
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#subtractSubset (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.const 36
  memory.fill
  local.get $3
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  local.get $1
  i32.store
  local.get $4
  local.get $1
  i32.load offset=4
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   local.get $1
   call $src/as/assembly/Proposition/Proposition#toString
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $src/as/assembly/Proposition/Proposition#toString
   local.tee $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 6032
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   i32.const 6036
   local.get $3
   i32.store
   i32.const 6032
   local.get $3
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6032
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   i32.const 6044
   local.get $5
   i32.store
   i32.const 6032
   local.get $5
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6032
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1776
   i32.store offset=16
   i32.const 6032
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/console/console.log
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 9
  i32.const 6080
  call $~lib/rt/__newArray
  local.tee $5
  i32.store offset=20
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $3
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
    local.tee $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $6
    local.get $3
    local.get $2
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=4
     local.get $5
     local.get $3
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
  local.tee $2
  local.get $0
  i32.store offset=16
  local.get $2
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store offset=24
  local.get $2
  local.get $1
  i32.store offset=16
  local.get $2
  local.get $1
  i32.load offset=8
  local.tee $1
  i32.store offset=28
  local.get $2
  i32.const 6208
  i32.store offset=16
  local.get $2
  local.get $0
  i32.store offset=32
  i32.const 6212
  local.get $0
  i32.store
  i32.const 6208
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 6208
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  i32.const 6220
  local.get $1
  i32.store
  i32.const 6208
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 6208
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store offset=32
  i32.const 6208
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $0
  local.get $5
  local.get $4
  call $src/as/assembly/Proposition/Proposition#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#getMines (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 36
   memory.fill
   local.get $3
   i32.const 0
   i32.const 11
   i32.const 5824
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
    i32.load offset=12
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
      i32.load offset=12
      local.tee $3
      i32.store offset=4
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $5
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=12
       local.tee $3
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $3
       local.get $6
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.tee $7
       i32.store offset=12
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=12
       local.tee $3
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $3
       local.get $5
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.tee $3
       i32.store offset=16
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
       i32.const 0
       i32.le_s
       if (result i32)
        i32.const 1
       else
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $3
        call $src/as/assembly/Proposition/Proposition#getCells
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=4
        local.get $8
        call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
        i32.const 0
        i32.le_s
       end
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $8
        local.get $3
        i32.store offset=4
        local.get $8
        local.get $7
        i32.store offset=8
        local.get $3
        local.get $7
        call $src/as/assembly/Proposition/Proposition#isSubSetOf
        if
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store offset=24
         local.get $7
         local.get $3
         call $src/as/assembly/Proposition/Proposition#subtractSubset
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store offset=8
         local.get $4
         local.get $3
         call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
        else
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=4
         local.get $7
         call $src/as/assembly/Proposition/Proposition#getMines
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store offset=4
         local.get $3
         call $src/as/assembly/Proposition/Proposition#getMines
         local.get $8
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=4
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $7
          local.get $3
          call $src/as/assembly/Proposition/Proposition#getOverlappingCells
          local.tee $8
          i32.store offset=28
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=8
          local.get $7
          call $src/as/assembly/Proposition/Proposition#getCells
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store offset=4
          local.get $9
          call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store offset=4
          local.get $9
          local.get $8
          call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
          i32.sub
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $7
          i32.store offset=4
          local.get $7
          call $src/as/assembly/Proposition/Proposition#getMines
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store offset=4
          local.get $9
          local.get $10
          local.get $3
          call $src/as/assembly/Proposition/Proposition#getMines
          i32.sub
          i32.eq
          if
           global.get $~lib/memory/__stack_pointer
           local.set $9
           global.get $~lib/memory/__stack_pointer
           local.get $7
           i32.store offset=4
           global.get $~lib/memory/__stack_pointer
           local.get $8
           i32.store offset=8
           global.get $~lib/memory/__stack_pointer
           i32.const 16
           i32.sub
           global.set $~lib/memory/__stack_pointer
           global.get $~lib/memory/__stack_pointer
           i32.const 7756
           i32.lt_s
           br_if $folding-inner0
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           i64.const 0
           i64.store
           local.get $3
           i64.const 0
           i64.store offset=8
           local.get $3
           i32.const 0
           i32.const 9
           i32.const 6256
           call $~lib/rt/__newArray
           local.tee $10
           i32.store
           i32.const 0
           local.set $3
           loop $for-loop|00
            global.get $~lib/memory/__stack_pointer
            local.tee $11
            local.get $7
            i32.store offset=8
            local.get $11
            local.get $7
            i32.load
            local.tee $11
            i32.store offset=4
            local.get $11
            call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
            local.get $3
            i32.gt_s
            if
             global.get $~lib/memory/__stack_pointer
             local.get $8
             i32.store offset=4
             global.get $~lib/memory/__stack_pointer
             local.get $7
             i32.store offset=12
             global.get $~lib/memory/__stack_pointer
             local.get $7
             i32.load
             local.tee $11
             i32.store offset=8
             local.get $8
             local.get $11
             local.get $3
             call $~lib/array/Array<i32>#__get
             call $~lib/array/Array<i32>#includes
             i32.eqz
             if
              global.get $~lib/memory/__stack_pointer
              local.get $10
              i32.store offset=4
              global.get $~lib/memory/__stack_pointer
              local.get $7
              i32.store offset=12
              global.get $~lib/memory/__stack_pointer
              local.get $7
              i32.load
              local.tee $11
              i32.store offset=8
              local.get $10
              local.get $11
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
           i32.const 16
           i32.add
           global.set $~lib/memory/__stack_pointer
           local.get $9
           local.get $10
           i32.store offset=32
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store offset=4
           global.get $~lib/memory/__stack_pointer
           local.get $10
           i32.store offset=8
           local.get $0
           local.get $10
           call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addMineCells
           drop
          end
         end
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
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=20
     local.get $4
     local.get $1
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     i32.const 1
     local.get $2
     local.get $0
     local.get $3
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addProposition
     select
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#checkMainPropositionAddition (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.store offset=8
  local.get $0
  call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/assembly/Board/Board#get:properties
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/as/assembly/Board/Board#get:properties
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.load offset=4
  i32.mul
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load8_u offset=16
  if (result i32)
   i32.const 0
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $3
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   local.get $4
   i32.add
   i32.sub
   i32.const 10
   i32.le_s
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   call $~lib/array/Array<i32>#constructor
   local.tee $2
   i32.store offset=12
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $0
    call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $src/as/assembly/Board/Board#get:cells
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     local.get $0
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=16
     local.get $3
     call $src/as/assembly/Board/Board#get:cells
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $3
     local.get $1
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $2
     local.get $3
     i32.load
     call $~lib/array/Array<i32>#push
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   i32.store8 offset=16
   local.get $1
   local.get $0
   i32.store
   local.get $1
   i32.const 6288
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=16
   local.get $1
   local.get $0
   i32.store offset=28
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   call $src/as/assembly/Board/Board#get:properties
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   i32.const 6288
   local.get $2
   local.get $1
   i32.load offset=8
   call $src/as/assembly/Proposition/Proposition#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#addProposition
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#propositionsCompared
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#updatePropositions (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#createNewPropositions
   loop $while-continue|0
    block $__inlined_func$src/as/assembly/MineSweeperSolver/MineSweeperSolver#isBoardSolved$670 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $1
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 7756
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
     i32.store offset=8
     local.get $0
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     call $src/as/assembly/Board/Board#get:properties
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     i32.load
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     call $src/as/assembly/Board/Board#get:properties
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $1
     local.get $2
     i32.load offset=4
     i32.mul
     local.set $1
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
     local.get $0
     call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     call $src/as/assembly/Board/Board#get:properties
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $2
     local.get $1
     local.get $3
     i32.load offset=8
     i32.sub
     i32.ge_s
     if (result i32)
      i32.const 1
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=4
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.store
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $2
      call $src/as/assembly/Board/Board#get:properties
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $1
      local.get $2
      i32.load offset=8
      i32.ge_s
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1
      br $__inlined_func$src/as/assembly/MineSweeperSolver/MineSweeperSolver#isBoardSolved$670
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
    end
    i32.eqz
    if
     block $while-break|0
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=4
      local.get $1
      local.get $0
      i32.load offset=8
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
      i32.load offset=4
      local.tee $2
      i32.store
      local.get $2
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $1
      i32.add
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#removedKnownCellsFromPropositions
      i32.const 0
      i32.ne
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $1
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#satisfiedPropositionsRemoved
      select
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $1
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#propositionsCompared
      select
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $1
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#satisfiedPropositionsRemoved
      select
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      i32.const 1
      local.get $1
      local.get $0
      call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#checkMainPropositionAddition
      select
      i32.eqz
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $1
      i32.store
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.store
      local.get $3
      local.get $1
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
      local.get $4
      i32.add
      local.get $2
      i32.eq
      i32.and
      br_if $while-break|0
      br $while-continue|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 40544
  i32.const 40592
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
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $__inlined_func$~lib/string/String#concat$705 (result i32)
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
    i32.const 7756
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
     i32.const 1776
     br $__inlined_func$~lib/string/String#concat$705
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
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/index/update (param $0 i32) (result i32)
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
  i32.const 136
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i32.const 0
   i32.const 136
   memory.fill
   local.get $5
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   call $~lib/string/String#trimStart
   local.tee $6
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
   local.tee $8
   i32.store offset=20
   i32.const 1
   local.set $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $6
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
     local.get $6
     i32.store offset=24
     local.get $6
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
       local.get $6
       i32.store offset=4
       local.get $1
       local.get $6
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
         local.get $6
         i32.store offset=28
         local.get $6
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
            local.get $7
            i32.store offset=4
            local.get $2
            local.get $8
            i32.store offset=32
            local.get $2
            local.get $6
            i32.store offset=36
            local.get $7
            local.get $8
            local.get $6
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
        local.get $6
        i32.store offset=4
        local.get $1
        local.get $6
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
          local.get $6
          i32.store offset=40
          local.get $6
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
             local.get $7
             i32.store offset=4
             local.get $2
             local.get $8
             i32.store offset=32
             local.get $2
             local.get $6
             i32.store offset=36
             local.get $7
             local.get $8
             local.get $6
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
        local.set $1
        local.get $0
        i32.const 1
        i32.add
        local.tee $0
        local.set $2
        loop $for-loop|3
         global.get $~lib/memory/__stack_pointer
         local.tee $9
         local.get $6
         i32.store offset=4
         local.get $2
         local.get $6
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
           local.get $6
           i32.store offset=44
           local.get $1
           i32.eqz
           local.get $6
           local.get $2
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
            local.get $1
            i32.eqz
            local.get $9
            i32.const 34
            i32.eq
            i32.and
            if
             local.get $3
             if (result i32)
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $7
              i32.store offset=4
              local.get $1
              local.get $8
              i32.store offset=32
              local.get $1
              local.get $6
              i32.store offset=36
              local.get $7
              local.get $8
              local.get $6
              local.get $0
              local.get $2
              call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              i32.const 0
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $8
              i32.store offset=4
              local.get $1
              local.get $6
              i32.store offset=32
              local.get $8
              local.get $6
              local.get $0
              local.get $2
              call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
              i32.const 1
             end
             local.set $3
             local.get $2
             i32.const 1
             i32.add
             local.set $0
             br $for-break3
            end
            i32.const 0
           end
           local.set $1
           local.get $2
           i32.const 1
           i32.add
           local.set $2
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
         local.get $7
         i32.store offset=4
         local.get $1
         local.get $8
         i32.store offset=32
         local.get $1
         i32.const 1120
         i32.store offset=36
         local.get $7
         local.get $8
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
          local.get $6
          i32.store offset=48
          local.get $6
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
          local.get $6
          i32.store offset=52
          local.get $6
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
          local.get $6
          i32.store offset=56
          local.get $6
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
          local.get $7
          i32.store offset=4
          local.get $1
          local.get $8
          i32.store offset=32
          local.get $1
          i32.const 1056
          i32.store offset=36
          local.get $7
          local.get $8
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
           local.get $6
           i32.store offset=60
           local.get $6
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
           i32.const 2128
           i32.store offset=4
           i32.const 2128
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $6
           i32.store offset=64
           local.get $6
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
           i32.const 2160
           i32.store offset=4
           i32.const 2160
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $6
           i32.store offset=68
           local.get $6
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
           i32.const 2192
           i32.store offset=4
           i32.const 2192
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store offset=72
           local.get $6
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
           local.get $7
           i32.store offset=4
           local.get $1
           local.get $8
           i32.store offset=32
           local.get $1
           i32.const 1088
           i32.store offset=36
           local.get $7
           local.get $8
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
             local.get $6
             i32.store offset=4
             local.get $1
             local.get $6
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.const 1
             i32.shr_u
             i32.lt_s
             if
              block $for-break4
               local.get $2
               local.get $6
               i32.store offset=76
               local.get $6
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
                block $__inlined_func$~lib/util/string/isSpace$21 (result i32)
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
                 br_if $__inlined_func$~lib/util/string/isSpace$21
                 drop
                 i32.const 1
                 local.get $2
                 i32.const -8192
                 i32.add
                 i32.const 10
                 i32.le_u
                 br_if $__inlined_func$~lib/util/string/isSpace$21
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
                  br $__inlined_func$~lib/util/string/isSpace$21
                 end
                 i32.const 0
                end
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $2
                local.get $7
                i32.store offset=4
                local.get $2
                local.get $8
                i32.store offset=32
                local.get $2
                local.get $6
                i32.store offset=36
                local.get $7
                local.get $8
                local.get $6
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
   local.get $5
   local.get $7
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $src/as/assembly/index/ai
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $7
   i32.store offset=32
   local.get $1
   local.get $7
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#initializeIfNot
   global.get $~lib/memory/__stack_pointer
   global.get $src/as/assembly/index/ai
   local.tee $0
   i32.store offset=4
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#updatePropositions
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $src/as/assembly/index/ai
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
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
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $src/as/assembly/index/ai
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $2
   local.get $3
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $2
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 8
   i32.const 18
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
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   local.get $4
   local.get $2
   i32.store
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $4
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=104
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
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
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
    i32.const 6528
    i32.const 5
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
   i32.store offset=108
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
    i32.store offset=116
    global.get $~lib/memory/__stack_pointer
    i32.const 1216
    i32.store offset=120
    local.get $2
    call $~lib/array/Array<i32>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
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
   local.tee $0
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $4
   i32.store offset=4
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
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
    i32.const 6528
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
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $1
   local.get $2
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 1152
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=116
    global.get $~lib/memory/__stack_pointer
    i32.const 1216
    i32.store offset=120
    local.get $2
    call $~lib/array/Array<i32>#join
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=112
    i32.const 1152
    local.get $1
    call $~lib/string/String.__concat
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1248
    i32.store offset=32
    local.get $1
    i32.const 1248
    call $~lib/string/String.__concat
   else
    i32.const 1184
   end
   local.tee $1
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 6480
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=32
   i32.const 6484
   local.get $0
   i32.store
   i32.const 6480
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6480
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   i32.const 6492
   local.get $1
   i32.store
   i32.const 6480
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6480
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1776
   i32.store offset=32
   i32.const 6480
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 136
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/MineSweeperSolver/Guess#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 12
  i32.const 20
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/Proposition/Proposition#getMineRatio (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.load offset=4
  f32.convert_i32_s
  local.set $2
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
  f32.convert_i32_s
  f32.div
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#makeGuess (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i32.const 0
   i32.const 52
   memory.fill
   local.get $7
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $src/as/assembly/Board/Board#get:properties
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $src/as/assembly/Board/Board#get:properties
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $7
   local.get $8
   i32.load offset=4
   i32.mul
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $8
   i32.store
   local.get $8
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    call $src/as/assembly/MineSweeperSolver/Guess#constructor
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    local.get $7
    i32.const 2
    i32.div_s
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $0
    call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $src/as/assembly/Board/Board#get:properties
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $2
    local.get $3
    i32.load offset=8
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $0
    call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $0
    call $src/as/assembly/Board/Board#get:cells
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $src/as/assembly/Board/Board#get:properties
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   i32.load offset=8
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $8
   i32.store
   local.get $7
   local.get $8
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.sub
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $10
   i32.const 0
   i32.const 20
   memory.fill
   local.get $10
   i32.const 0
   i32.const 8
   i32.const 6640
   call $~lib/rt/__newArray
   local.tee $10
   i32.store
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    call $src/as/assembly/Board/Board#get:cells
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=12
     local.get $9
     call $src/as/assembly/Board/Board#get:cells
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $3
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=4
     local.get $11
     i32.load8_u offset=8
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=16
      local.get $9
      call $src/as/assembly/Board/Board#get:cells
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=12
      local.get $11
      local.get $3
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=8
      local.get $10
      local.get $11
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   local.get $10
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 9
   i32.const 6672
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=24
   loop $for-loop|00
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $10
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store offset=4
     local.get $10
     local.get $4
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     i32.load
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $9
     i32.store
     local.get $9
     local.get $8
     call $~lib/array/Array<i32>#includes
     if (result i32)
      i32.const 1
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $9
      local.get $0
      i32.store offset=4
      local.get $9
      local.get $0
      i32.load offset=8
      local.tee $9
      i32.store
      local.get $9
      local.get $8
      call $~lib/array/Array<i32>#includes
     end
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $3
      i32.store
      local.get $8
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $4
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $3
      local.get $8
      i32.load
      call $~lib/array/Array<i32>#push
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 6288
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.const 6288
   local.get $3
   local.get $7
   call $src/as/assembly/Proposition/Proposition#constructor
   local.tee $3
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   i32.store offset=36
   local.get $7
   i32.const 0
   local.get $3
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $8
   local.get $3
   local.get $7
   i32.store
   local.get $8
   local.get $7
   i32.load offset=12
   local.tee $3
   i32.add
   local.tee $9
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2256
    i32.const 2304
    i32.const 224
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $9
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   i32.load offset=4
   local.set $10
   local.get $8
   i32.const 2
   i32.shl
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $0
   loop $for-loop|01
    local.get $5
    local.get $8
    i32.lt_u
    if
     local.get $5
     local.get $10
     i32.add
     local.get $0
     local.get $5
     i32.add
     i32.load
     local.tee $11
     i32.store
     local.get $9
     local.get $11
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $5
     i32.const 4
     i32.add
     local.set $5
     br $for-loop|01
    end
   end
   local.get $8
   local.get $10
   i32.add
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   i32.load offset=4
   local.set $5
   local.get $3
   i32.const 2
   i32.shl
   local.set $3
   loop $for-loop|1
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $0
     local.get $2
     i32.add
     local.get $2
     local.get $5
     i32.add
     i32.load
     local.tee $7
     i32.store
     local.get $9
     local.get $7
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $9
   i32.store offset=40
   f64.const inf
   local.set $6
   i32.const -1
   local.set $0
   i32.const 0
   local.set $2
   loop $for-loop|12
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=8
     local.get $9
     local.get $2
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     call $src/as/assembly/Proposition/Proposition#getCells
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      call $src/as/assembly/Proposition/Proposition#getMineRatio
      f64.promote_f32
      local.get $6
      f64.lt
      if
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store offset=4
       local.get $9
       local.get $2
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $src/as/assembly/Proposition/Proposition#getMineRatio
       f64.promote_f32
       local.set $6
       local.get $2
       local.set $0
      end
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|12
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $9
   i32.store
   local.get $2
   local.get $9
   local.get $0
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
   local.tee $0
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   call $src/as/assembly/MineSweeperSolver/Guess#constructor
   local.tee $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/as/assembly/Proposition/Proposition#getCells
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/math/random_seeded
   i32.eqz
   if
    call $~lib/builtins/seed
    i64.reinterpret_f64
    local.tee $1
    i64.eqz
    if
     i64.const -7046029254386353131
     local.set $1
    end
    local.get $1
    local.get $1
    i64.const 33
    i64.shr_u
    i64.xor
    i64.const -49064778989728563
    i64.mul
    local.tee $1
    i64.const 33
    i64.shr_u
    local.get $1
    i64.xor
    i64.const -4265267296055464877
    i64.mul
    local.tee $1
    i64.const 33
    i64.shr_u
    local.get $1
    i64.xor
    global.set $~lib/math/random_state0_64
    global.get $~lib/math/random_state0_64
    i64.const -1
    i64.xor
    local.tee $1
    i64.const 33
    i64.shr_u
    local.get $1
    i64.xor
    i64.const -49064778989728563
    i64.mul
    local.tee $1
    i64.const 33
    i64.shr_u
    local.get $1
    i64.xor
    i64.const -4265267296055464877
    i64.mul
    local.tee $1
    i64.const 33
    i64.shr_u
    local.get $1
    i64.xor
    global.set $~lib/math/random_state1_64
    i32.const 1
    global.set $~lib/math/random_seeded
   end
   global.get $~lib/math/random_state0_64
   local.set $12
   global.get $~lib/math/random_state1_64
   local.tee $1
   global.set $~lib/math/random_state0_64
   local.get $1
   local.get $12
   local.get $12
   i64.const 23
   i64.shl
   i64.xor
   local.tee $12
   i64.const 17
   i64.shr_u
   local.get $12
   i64.xor
   i64.xor
   local.get $1
   i64.const 26
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state1_64
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $src/as/assembly/Proposition/Proposition#getCells
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $2
   local.get $3
   local.get $1
   i64.const 12
   i64.shr_u
   i64.const 4607182418800017408
   i64.or
   f64.reinterpret_i64
   f64.const -1
   f64.add
   local.get $4
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   f64.convert_i32_s
   f64.mul
   f64.floor
   i32.trunc_sat_f64_s
   call $~lib/array/Array<i32>#__get
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   call $src/as/assembly/Proposition/Proposition#getMines
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/as/assembly/Proposition/Proposition#getCells
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/index/guess (param $0 i32) (result i32)
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
  i32.const 116
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i32.const 0
   i32.const 116
   memory.fill
   local.get $5
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   call $~lib/string/String#trimStart
   local.tee $6
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
   local.tee $8
   i32.store offset=20
   i32.const 1
   local.set $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $6
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
     local.get $6
     i32.store offset=24
     local.get $6
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
       local.get $6
       i32.store offset=4
       local.get $1
       local.get $6
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
         local.get $6
         i32.store offset=28
         local.get $6
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
            local.get $7
            i32.store offset=4
            local.get $2
            local.get $8
            i32.store offset=32
            local.get $2
            local.get $6
            i32.store offset=36
            local.get $7
            local.get $8
            local.get $6
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
        local.get $6
        i32.store offset=4
        local.get $1
        local.get $6
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
          local.get $6
          i32.store offset=40
          local.get $6
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
             local.get $7
             i32.store offset=4
             local.get $2
             local.get $8
             i32.store offset=32
             local.get $2
             local.get $6
             i32.store offset=36
             local.get $7
             local.get $8
             local.get $6
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
         local.get $6
         i32.store offset=4
         local.get $1
         local.get $6
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
           local.get $6
           i32.store offset=44
           local.get $2
           i32.eqz
           local.get $6
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
              local.get $7
              i32.store offset=4
              local.get $2
              local.get $8
              i32.store offset=32
              local.get $2
              local.get $6
              i32.store offset=36
              local.get $7
              local.get $8
              local.get $6
              local.get $0
              local.get $1
              call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              i32.const 0
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $8
              i32.store offset=4
              local.get $2
              local.get $6
              i32.store offset=32
              local.get $8
              local.get $6
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
         local.get $7
         i32.store offset=4
         local.get $1
         local.get $8
         i32.store offset=32
         local.get $1
         i32.const 1120
         i32.store offset=36
         local.get $7
         local.get $8
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
          local.get $6
          i32.store offset=48
          local.get $6
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
          local.get $6
          i32.store offset=52
          local.get $6
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
          local.get $6
          i32.store offset=56
          local.get $6
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
          local.get $7
          i32.store offset=4
          local.get $1
          local.get $8
          i32.store offset=32
          local.get $1
          i32.const 1056
          i32.store offset=36
          local.get $7
          local.get $8
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
           local.get $6
           i32.store offset=60
           local.get $6
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
           i32.const 2128
           i32.store offset=4
           i32.const 2128
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $6
           i32.store offset=64
           local.get $6
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
           i32.const 2160
           i32.store offset=4
           i32.const 2160
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $6
           i32.store offset=68
           local.get $6
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
           i32.const 2192
           i32.store offset=4
           i32.const 2192
           call $~lib/string/String#charCodeAt
           local.get $9
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store offset=72
           local.get $6
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
           local.get $7
           i32.store offset=4
           local.get $1
           local.get $8
           i32.store offset=32
           local.get $1
           i32.const 1088
           i32.store offset=36
           local.get $7
           local.get $8
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
             local.get $6
             i32.store offset=4
             local.get $1
             local.get $6
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.const 1
             i32.shr_u
             i32.lt_s
             if
              block $for-break4
               local.get $2
               local.get $6
               i32.store offset=76
               local.get $6
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
                block $__inlined_func$~lib/util/string/isSpace$24 (result i32)
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
                 br_if $__inlined_func$~lib/util/string/isSpace$24
                 drop
                 i32.const 1
                 local.get $2
                 i32.const -8192
                 i32.add
                 i32.const 10
                 i32.le_u
                 br_if $__inlined_func$~lib/util/string/isSpace$24
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
                  br $__inlined_func$~lib/util/string/isSpace$24
                 end
                 i32.const 0
                end
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $2
                local.get $7
                i32.store offset=4
                local.get $2
                local.get $8
                i32.store offset=32
                local.get $2
                local.get $6
                i32.store offset=36
                local.get $7
                local.get $8
                local.get $6
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
   local.get $5
   local.get $7
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $src/as/assembly/index/ai
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $7
   i32.store offset=32
   local.get $1
   local.get $7
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#initializeIfNot
   global.get $~lib/memory/__stack_pointer
   global.get $src/as/assembly/index/ai
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $src/as/assembly/MineSweeperSolver/MineSweeperSolver#makeGuess
   local.tee $0
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7756
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 12
   i32.const 21
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
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $3
   local.get $0
   i32.load
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $3
   local.get $0
   i32.load offset=4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $3
   local.get $0
   i32.load offset=8
   i32.store offset=8
   local.get $1
   local.get $3
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   call $~lib/util/number/itoa32
   local.tee $0
   i32.store offset=104
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   call $~lib/util/number/itoa32
   local.tee $1
   i32.store offset=108
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   call $~lib/util/number/itoa32
   local.tee $2
   i32.store offset=112
   global.get $~lib/memory/__stack_pointer
   i32.const 6832
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   i32.const 6836
   local.get $0
   i32.store
   i32.const 6832
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6832
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   i32.const 6844
   local.get $1
   i32.store
   i32.const 6832
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6832
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   i32.const 6852
   local.get $2
   i32.store
   i32.const 6832
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6832
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1776
   i32.store offset=32
   i32.const 6832
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 116
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 40544
  i32.const 40592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/as/assembly/index/tests
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.const 36
  memory.fill
  local.get $0
  i32.const 6880
  i32.store
  i32.const 6880
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $0
  i32.const 3
  i32.const 9
  i32.const 6928
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 2128
  local.get $1
  i32.const 1
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 6960
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $1
  i32.const 4
  i32.const 9
  i32.const 6992
  call $~lib/rt/__newArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 6960
  local.get $2
  i32.const 2
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7040
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $2
  i32.const 2
  i32.const 9
  i32.const 7072
  call $~lib/rt/__newArray
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $2
  i32.const 7040
  local.get $3
  i32.const 1
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7104
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  call $src/as/assembly/Proposition/Proposition#getOverlappingCells
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  local.get $3
  call $~lib/array/Array<i32>#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  i32.const 7104
  local.get $3
  call $~lib/string/String.__concat
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7168
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  local.get $0
  local.get $2
  call $src/as/assembly/Proposition/Proposition#getOverlappingCells
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  local.get $3
  call $~lib/array/Array<i32>#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  i32.const 7168
  local.get $3
  call $~lib/string/String.__concat
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7232
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $src/as/assembly/Proposition/Proposition#getOverlappingCells
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  local.get $3
  call $~lib/array/Array<i32>#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  i32.const 7232
  local.get $3
  call $~lib/string/String.__concat
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7296
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  i32.const 1056
  i32.const 1088
  local.get $0
  local.get $1
  call $src/as/assembly/Proposition/Proposition#isSubSetOf
  select
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  i32.const 7296
  local.get $3
  call $~lib/string/String.__concat
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7360
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  i32.const 1056
  i32.const 1088
  local.get $0
  local.get $2
  call $src/as/assembly/Proposition/Proposition#isSubSetOf
  select
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  i32.const 7360
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7424
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  i32.const 1056
  i32.const 1088
  local.get $1
  local.get $2
  call $src/as/assembly/Proposition/Proposition#isSubSetOf
  select
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  i32.const 7424
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 7488
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  i32.const 1056
  i32.const 1088
  local.get $2
  local.get $1
  call $src/as/assembly/Proposition/Proposition#isSubSetOf
  select
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  i32.const 7488
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $src/as/assembly/Proposition/Proposition#subtractSubset
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
 (func $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String> (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/as/assembly/MineSweeperSolver/MineSweeperSolver#get:board (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 12
   i32.const 13
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 2976
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
 (func $src/as/assembly/Board/Board#get:properties (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 2976
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
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
   i32.const 2256
   i32.const 3344
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
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
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
 (func $export:src/as/assembly/index/update (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/index/update
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/as/assembly/index/guess (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 7756
  i32.lt_s
  if
   i32.const 40544
   i32.const 40592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/index/guess
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
