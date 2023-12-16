(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func))
 (type $7 (func (param i32 i32 i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i32 i32) (result i32)))
 (type $10 (func (result i32)))
 (type $11 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $12 (func (result f64)))
 (type $13 (func (param i32 i32 i64) (result i32)))
 (type $14 (func (param i32 i32 i32 i32 i32)))
 (type $15 (func (param i32 i64 i32)))
 (type $16 (func (param i64 i32) (result i32)))
 (type $17 (func (param i32 i64 i32 i32)))
 (type $18 (func (param i64) (result i64)))
 (type $19 (func (param i64)))
 (type $20 (func (param i32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "console.log" (func $~lib/bindings/dom/console.log (param i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~lib/as-string-sink/assembly/index/MIN_BUFFER_LEN i32 (i32.const 32))
 (global $~lib/as-string-sink/assembly/index/MIN_BUFFER_SIZE i32 (i32.const 64))
 (global $~lib/as-string-sink/assembly/index/NEW_LINE_CHAR i32 (i32.const 10))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
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
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $src/as/assembly/index/ai (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 6176))
 (global $~lib/memory/__data_end i32 (i32.const 6280))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39048))
 (global $~lib/memory/__heap_base i32 (i32.const 39048))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00t\00r\00u\00e\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00f\00a\00l\00s\00e\00\00\00")
 (data $2 (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00n\00u\00l\00l\00\00\00\00\00")
 (data $3 (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00[\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00[\00]\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 204) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00]\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 236) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 268) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $9 (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 400) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 576) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 604) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 764) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00p\00r\00o\00p\00e\00r\00t\00i\00e\00s\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 812) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00h\00e\00i\00g\00h\00t\00")
 (data $21 (i32.const 844) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00w\00i\00d\00t\00h\00\00\00")
 (data $22 (i32.const 876) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00m\00i\00n\00e\00s\00\00\00")
 (data $23 (i32.const 908) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00<\00\00\00S\00t\00a\00r\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \00e\00n\00d\00!\00")
 (data $24 (i32.const 988) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00v\00i\00r\00t\00u\00a\00l\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 1084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 1116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00l\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 1148) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00c\00e\00l\00l\00s\00\00\00")
 (data $29 (i32.const 1212) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $30 (i32.const 1260) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $31 (i32.const 1308) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00_\00i\00d\00\00\00\00\00\00\00")
 (data $32 (i32.const 1340) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00m\00i\00n\00e\00s\00C\00o\00u\00n\00t\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 1388) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00r\00e\00v\00e\00a\00l\00e\00d\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 1436) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00J\00S\00O\00N\00:\00 \00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00\"\00\00\00\00\00")
 (data $35 (i32.const 1500) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00\"\00 \00a\00s\00 \00b\00o\00o\00l\00e\00a\00n\00\00\00\00\00")
 (data $36 (i32.const 1548) "\1c\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\0c\00\00\00\b0\05\00\00\00\00\00\00\f0\05\00\00")
 (data $37 (i32.const 1580) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00j\00s\00o\00n\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00r\00c\00/\00j\00s\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 1676) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 1804) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\002\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00S\00o\00l\00v\00e\00r\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $40 (i32.const 1884) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 1916) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00B\00o\00a\00r\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $42 (i32.const 1996) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 2124) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 2156) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $45 (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 2220) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $48 (i32.const 2284) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $49 (i32.const 2348) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $50 (i32.const 2476) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $51 (i32.const 2540) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 2572) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $53 (i32.const 2972) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 4028) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $55 (i32.const 4124) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 4156) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $57 (i32.const 4188) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 4220) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 4252) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 4284) "\1c\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\0c\00\00\00\00\00\00\00\b0\10\00\00\00\00\00\00")
 (data $61 (i32.const 4316) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $62 (i32.const 4348) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $63 (i32.const 4380) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 4412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 4444) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $66 (i32.const 4476) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00 \00-\00 \00\00\00\00\00\00\00")
 (data $67 (i32.const 4508) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $68 (i32.const 4540) ",\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\14\00\00\00p\11\00\00\00\00\00\00\90\11\00\00\00\00\00\00\b0\11\00\00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 4588) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $70 (i32.const 4620) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $71 (i32.const 4652) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $72 (i32.const 4684) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $73 (i32.const 4716) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $74 (i32.const 4748) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $75 (i32.const 4780) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00{\00\"\00k\00n\00o\00w\00n\00M\00i\00n\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:\00\00\00")
 (data $76 (i32.const 4844) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00,\00\"\00k\00n\00o\00w\00n\00S\00a\00f\00e\00C\00e\00l\00l\00s\00I\00d\00s\00\"\00:\00\00\00")
 (data $77 (i32.const 4908) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00}\00\00\00\00\00\00\00\00\00\00\00")
 (data $78 (i32.const 4940) ",\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\14\00\00\00\c0\12\00\00\00\00\00\00\00\13\00\00\00\00\00\00@\13\00\00\00\00\00\00\00\00\00\00")
 (data $79 (i32.const 4988) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00P\00\00\00s\00r\00c\00/\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00s\00/\00S\00o\00l\00v\00e\00r\00R\00e\00s\00p\00o\00n\00s\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $80 (i32.const 5100) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $81 (i32.const 5132) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $82 (i32.const 5164) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00>\00\00\00l\00o\00w\00e\00s\00t\00R\00a\00t\00i\00o\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00:\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $83 (i32.const 5260) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00 \00(\00\00\00\00\00\00\00\00\00")
 (data $84 (i32.const 5292) ",\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\14\00\00\00@\14\00\00\00\00\00\00\a0\14\00\00\00\00\00\00\b0\11\00\00\00\00\00\00\00\00\00\00")
 (data $85 (i32.const 5340) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00{\00\"\00i\00d\00\"\00:\00")
 (data $86 (i32.const 5372) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00,\00\"\00m\00i\00n\00e\00s\00\"\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $87 (i32.const 5420) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00,\00\"\00c\00e\00l\00l\00s\00\"\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $88 (i32.const 5468) ",\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\1c\00\00\00\f0\14\00\00\00\00\00\00\10\15\00\00\00\00\00\00@\15\00\00\00\00\00\00@\13\00\00")
 (data $89 (i32.const 5516) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00r\00u\00n\00n\00i\00n\00g\00 \00t\00e\00s\00t\00s\00\00\00")
 (data $90 (i32.const 5564) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data $91 (i32.const 5596) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00b\00\00\00\00\00\00\00\00\00\00\00")
 (data $92 (i32.const 5628) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data $93 (i32.const 5676) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00c\00\00\00\00\00\00\00\00\00\00\00")
 (data $94 (i32.const 5708) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00")
 (data $95 (i32.const 5740) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00|\00\00\00\00\00\00\00\00\00\00\00")
 (data $96 (i32.const 5772) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00|\00 \00{\00\00\00\00\00\00\00")
 (data $97 (i32.const 5804) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00}\00 \00=\00 \00-\00>\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $98 (i32.const 5852) ",\00\00\00\03\00\00\00\00\00\00\00\0e\00\00\00\18\00\00\00\80\16\00\00\00\00\00\00\a0\16\00\00\00\00\00\00\c0\16\00\00\00\00\00\00\00\00\00\00")
 (data $99 (i32.const 5900) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data $100 (i32.const 5932) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00p\00s\00 \00f\00i\00n\00d\00i\00n\00g\00s\00\00\00\00\00\00\00")
 (data $101 (i32.const 5980) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00m\00i\00n\00e\00s\00 \00")
 (data $102 (i32.const 6012) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00s\00a\00f\00e\00s\00 \00")
 (data $103 (i32.const 6044) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data $104 (i32.const 6108) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data $105 (i32.const 6176) "\19\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02A\00\00 \00\00\00\04A\00\00\00\00\00\00 \00\00\00\08\t\00\00\10A\82\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00")
 (table $0 6 6 funcref)
 (elem $0 (i32.const 1) $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells~anonymous|0 $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells~anonymous|0 $src/as/assembly/Proposition/Proposition#hash~anonymous|0 $src/as/assembly/HypothesisRunner/HypothesisRunner#constructor~anonymous|0 $src/as/assembly/Proposition/Proposition#toString~anonymous|0)
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
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 352
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 352
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 480
   i32.const 544
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 352
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
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
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
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
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 352
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 288
   i32.const 624
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 624
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 288
   i32.const 352
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy
  end
  local.get $buffer
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#set:safeCellsIds (param $this i32) (param $safeCellsIds i32)
  local.get $this
  local.get $safeCellsIds
  i32.store offset=4
  local.get $this
  local.get $safeCellsIds
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#set:mineCellsIds (param $this i32) (param $mineCellsIds i32)
  local.get $this
  local.get $mineCellsIds
  i32.store
  local.get $this
  local.get $mineCellsIds
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#set:propositions (param $this i32) (param $propositions i32)
  local.get $this
  local.get $propositions
  i32.store offset=8
  local.get $this
  local.get $propositions
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/Solver/Solver#set:propositionsSolver (param $this i32) (param $propositionsSolver i32)
  local.get $this
  local.get $propositionsSolver
  i32.store offset=4
  local.get $this
  local.get $propositionsSolver
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/Solver/Solver#set:addedMainProposition (param $this i32) (param $addedMainProposition i32)
  local.get $this
  local.get $addedMainProposition
  i32.store8 offset=8
 )
 (func $src/as/assembly/Solver/Solver#set:board (param $this i32) (param $board i32)
  local.get $this
  local.get $board
  i32.store
  local.get $this
  local.get $board
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:src/as/assembly/index
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 400
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 576
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  call $src/as/assembly/Solver/Solver#constructor
  global.set $src/as/assembly/index/ai
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/string/isSpace (param $c i32) (result i32)
  (local $1 i32)
  local.get $c
  i32.const 5760
  i32.lt_u
  if
   local.get $c
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $c
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   return
  end
  local.get $c
  i32.const 8192
  i32.sub
  i32.const 8202
  i32.const 8192
  i32.sub
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $c
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data_ptr (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#set:height (param $this i32) (param $height i32)
  local.get $this
  local.get $height
  i32.store
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#set:width (param $this i32) (param $width i32)
  local.get $this
  local.get $width
  i32.store offset=4
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#set:mines (param $this i32) (param $mines i32)
  local.get $this
  local.get $mines
  i32.store offset=8
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:offset (param $this i32) (param $offset i32)
  local.get $this
  local.get $offset
  i32.store offset=12
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:end (param $this i32) (param $end i32)
  local.get $this
  local.get $end
  i32.store offset=4
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:data_ptr (param $this i32) (param $data_ptr i32)
  local.get $this
  local.get $data_ptr
  i32.store offset=16
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:length (param $this i32) (param $length i32)
  local.get $this
  local.get $length
  i32.store offset=8
 )
 (func $src/as/assembly/Board/Board#set:properties (param $this i32) (param $properties i32)
  local.get $this
  local.get $properties
  i32.store
  local.get $this
  local.get $properties
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $src/as/assembly/models/Cell/Cell#set:minesCount (param $this i32) (param $minesCount i32)
  local.get $this
  local.get $minesCount
  i32.store offset=4
 )
 (func $src/as/assembly/models/Cell/Cell#set:_id (param $this i32) (param $_id i32)
  local.get $this
  local.get $_id
  i32.store
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $src/as/assembly/models/Cell/Cell#set:revealed (param $this i32) (param $revealed i32)
  local.get $this
  local.get $revealed
  i32.store8 offset=8
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/Board/Board#set:cells (param $this i32) (param $cells i32)
  local.get $this
  local.get $cells
  i32.store offset=4
  local.get $this
  local.get $cells
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/models/Cell/Cell#get:revealed (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=8
 )
 (func $src/as/assembly/Solver/Solver#get:propositionsSolver (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/models/Cell/Cell#get:_id (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/Proposition/Proposition#get:cellsIndex (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/Proposition/Proposition#set:cellsIndex (param $this i32) (param $cellsIndex i32)
  local.get $this
  local.get $cellsIndex
  i32.store
  local.get $this
  local.get $cellsIndex
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells~anonymous|0 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<i32> (param $ptr i32) (param $left i32) (param $right i32) (param $presorted i32) (param $comparator i32)
  (local $range i32)
  (local $i i32)
  (local $a i32)
  (local $b i32)
  (local $min i32)
  (local $max i32)
  (local $j i32)
  i32.const 0
  i32.const 1
  i32.ge_s
  drop
  local.get $right
  local.get $left
  i32.sub
  i32.const 1
  i32.add
  local.set $range
  local.get $left
  local.get $range
  i32.const 1
  i32.and
  local.get $presorted
  local.get $range
  local.get $presorted
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $presorted
  i32.const 0
  i32.eq
  select
  i32.add
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $right
   i32.le_s
   if
    local.get $ptr
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $a
    local.get $ptr
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $b
    local.get $b
    local.set $min
    local.get $a
    local.set $max
    local.get $a
    local.get $b
    i32.const 2
    global.set $~argumentsLength
    local.get $comparator
    i32.load
    call_indirect (type $2)
    i32.const 0
    i32.le_s
    if
     local.get $a
     local.set $min
     local.get $b
     local.set $max
    end
    local.get $i
    i32.const 1
    i32.sub
    local.set $j
    block $while-break|1
     loop $while-continue|1
      local.get $j
      local.get $left
      i32.ge_s
      if
       local.get $ptr
       local.get $j
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $a
       local.get $a
       local.get $max
       i32.const 2
       global.set $~argumentsLength
       local.get $comparator
       i32.load
       call_indirect (type $2)
       i32.const 0
       i32.gt_s
       if
        local.get $ptr
        local.get $j
        i32.const 2
        i32.shl
        i32.add
        local.get $a
        i32.store offset=8
        local.get $j
        i32.const 1
        i32.sub
        local.set $j
       else
        br $while-break|1
       end
       br $while-continue|1
      end
     end
    end
    local.get $ptr
    local.get $j
    i32.const 2
    i32.shl
    i32.add
    local.get $max
    i32.store offset=8
    block $while-break|2
     loop $while-continue|2
      local.get $j
      local.get $left
      i32.ge_s
      if
       local.get $ptr
       local.get $j
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $a
       local.get $a
       local.get $min
       i32.const 2
       global.set $~argumentsLength
       local.get $comparator
       i32.load
       call_indirect (type $2)
       i32.const 0
       i32.gt_s
       if
        local.get $ptr
        local.get $j
        i32.const 2
        i32.shl
        i32.add
        local.get $a
        i32.store offset=4
        local.get $j
        i32.const 1
        i32.sub
        local.set $j
       else
        br $while-break|2
       end
       br $while-continue|2
      end
     end
    end
    local.get $ptr
    local.get $j
    i32.const 2
    i32.shl
    i32.add
    local.get $min
    i32.store offset=4
    local.get $i
    i32.const 2
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<i32> (param $ptr i32) (param $i i32) (param $right i32) (param $comparator i32) (result i32)
  (local $j i32)
  (local $k i32)
  (local $tmp i32)
  local.get $i
  local.get $right
  i32.eq
  if
   local.get $i
   return
  end
  local.get $i
  local.set $j
  local.get $ptr
  local.get $j
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $ptr
  local.get $j
  i32.const 1
  i32.add
  local.tee $j
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.const 2
  global.set $~argumentsLength
  local.get $comparator
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $j
    local.get $right
    i32.lt_s
    if (result i32)
     local.get $ptr
     local.get $j
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     local.get $ptr
     local.get $j
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $comparator
     i32.load
     call_indirect (type $2)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $j
     i32.const 1
     i32.add
     local.set $j
     br $while-continue|0
    end
   end
   local.get $j
   local.set $k
   loop $while-continue|1
    local.get $i
    local.get $k
    i32.lt_s
    if
     local.get $ptr
     local.get $i
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $tmp
     local.get $ptr
     local.get $i
     i32.const 2
     i32.shl
     i32.add
     local.get $ptr
     local.get $k
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.store
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     local.get $ptr
     local.get $k
     i32.const 2
     i32.shl
     i32.add
     local.get $tmp
     i32.store
     local.get $k
     i32.const 1
     i32.sub
     local.set $k
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $j
    local.get $right
    i32.lt_s
    if (result i32)
     local.get $ptr
     local.get $j
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     local.get $ptr
     local.get $j
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $comparator
     i32.load
     call_indirect (type $2)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $j
     i32.const 1
     i32.add
     local.set $j
     br $while-continue|2
    end
   end
  end
  local.get $j
  return
 )
 (func $~lib/util/sort/nodePower (param $left i32) (param $right i32) (param $startA i32) (param $startB i32) (param $endB i32) (result i32)
  (local $n i64)
  (local $s i32)
  (local $l i32)
  (local $r i32)
  (local $a i64)
  (local $b i64)
  local.get $right
  local.get $left
  i32.sub
  i32.const 1
  i32.add
  i64.extend_i32_u
  local.set $n
  local.get $startB
  local.get $left
  i32.const 1
  i32.shl
  i32.sub
  local.set $s
  local.get $startA
  local.get $s
  i32.add
  local.set $l
  local.get $endB
  local.get $s
  i32.add
  i32.const 1
  i32.add
  local.set $r
  local.get $l
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $n
  i64.div_u
  local.set $a
  local.get $r
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $n
  i64.div_u
  local.set $b
  local.get $a
  local.get $b
  i64.xor
  i32.wrap_i64
  i32.clz
  return
 )
 (func $~lib/util/sort/mergeRuns<i32> (param $ptr i32) (param $l i32) (param $m i32) (param $r i32) (param $buffer i32) (param $comparator i32)
  (local $i i32)
  (local $j i32)
  (local $t i32)
  (local $k i32)
  (local $a i32)
  (local $b i32)
  local.get $m
  i32.const 1
  i32.sub
  local.set $m
  local.get $r
  local.get $m
  i32.add
  local.set $t
  local.get $m
  i32.const 1
  i32.add
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $l
   i32.gt_s
   if
    local.get $buffer
    local.get $i
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $ptr
    local.get $i
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $i
    i32.const 1
    i32.sub
    local.set $i
    br $for-loop|0
   end
  end
  local.get $m
  local.set $j
  loop $for-loop|1
   local.get $j
   local.get $r
   i32.lt_s
   if
    local.get $buffer
    local.get $t
    local.get $j
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $ptr
    local.get $j
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $j
    i32.const 1
    i32.add
    local.set $j
    br $for-loop|1
   end
  end
  local.get $l
  local.set $k
  loop $for-loop|2
   local.get $k
   local.get $r
   i32.le_s
   if
    local.get $buffer
    local.get $j
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $a
    local.get $buffer
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $b
    local.get $a
    local.get $b
    i32.const 2
    global.set $~argumentsLength
    local.get $comparator
    i32.load
    call_indirect (type $2)
    i32.const 0
    i32.lt_s
    if
     local.get $ptr
     local.get $k
     i32.const 2
     i32.shl
     i32.add
     local.get $a
     i32.store
     local.get $j
     i32.const 1
     i32.sub
     local.set $j
    else
     local.get $ptr
     local.get $k
     i32.const 2
     i32.shl
     i32.add
     local.get $b
     i32.store
     local.get $i
     i32.const 1
     i32.add
     local.set $i
    end
    local.get $k
    i32.const 1
    i32.add
    local.set $k
    br $for-loop|2
   end
  end
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#get:width (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/Board/Location#set:x (param $this i32) (param $x i32)
  local.get $this
  local.get $x
  i32.store
 )
 (func $src/as/assembly/Board/Location#set:y (param $this i32) (param $y i32)
  local.get $this
  local.get $y
  i32.store offset=4
 )
 (func $src/as/assembly/Board/Location#get:x (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/Board/Location#get:y (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#get:height (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/Proposition/Proposition#set:origin (param $this i32) (param $origin i32)
  local.get $this
  local.get $origin
  i32.store offset=8
  local.get $this
  local.get $origin
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<i32>#set:buckets (param $this i32) (param $buckets i32)
  local.get $this
  local.get $buckets
  i32.store
  local.get $this
  local.get $buckets
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<i32>#set:bucketsMask (param $this i32) (param $bucketsMask i32)
  local.get $this
  local.get $bucketsMask
  i32.store offset=4
 )
 (func $~lib/set/Set<i32>#set:entries (param $this i32) (param $entries i32)
  local.get $this
  local.get $entries
  i32.store offset=8
  local.get $this
  local.get $entries
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<i32>#set:entriesCapacity (param $this i32) (param $entriesCapacity i32)
  local.get $this
  local.get $entriesCapacity
  i32.store offset=12
 )
 (func $~lib/set/Set<i32>#set:entriesOffset (param $this i32) (param $entriesOffset i32)
  local.get $this
  local.get $entriesOffset
  i32.store offset=16
 )
 (func $~lib/set/Set<i32>#set:entriesCount (param $this i32) (param $entriesCount i32)
  local.get $this
  local.get $entriesCount
  i32.store offset=20
 )
 (func $~lib/util/hash/HASH<i32> (param $key i32) (result i32)
  (local $key|1 i32)
  (local $len i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  block $~lib/util/hash/hash32|inlined.0 (result i32)
   local.get $key
   local.set $key|1
   i32.const 4
   local.set $len
   i32.const 0
   i32.const 374761393
   i32.add
   local.get $len
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash32|inlined.0
  end
  return
 )
 (func $~lib/set/Set<i32>#get:buckets (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/set/Set<i32>#get:bucketsMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/set/SetEntry<i32>#get:taggedNext (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/set/SetEntry<i32>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/set/Set<i32>#get:entriesOffset (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/set/Set<i32>#get:entriesCapacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/set/Set<i32>#get:entriesCount (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $~lib/set/Set<i32>#get:entries (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/set/SetEntry<i32>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store
 )
 (func $~lib/set/SetEntry<i32>#set:taggedNext (param $this i32) (param $taggedNext i32)
  local.get $this
  local.get $taggedNext
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $src/as/assembly/Proposition/Proposition#set:numberOfMines (param $this i32) (param $numberOfMines i32)
  local.get $this
  local.get $numberOfMines
  i32.store offset=4
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 2572
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 2572
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2572
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2572
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2992
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 2992
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4048
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4048
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $src/as/assembly/models/Cell/Cell#get:minesCount (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $src/as/assembly/Proposition/Proposition#get:origin (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/as/assembly/Proposition/Proposition#get:numberOfMines (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells~anonymous|0 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
 )
 (func $src/as/assembly/Solver/Solver#get:addedMainProposition (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=8
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#get:mines (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:buckets (param $this i32) (param $buckets i32)
  local.get $this
  local.get $buckets
  i32.store
  local.get $this
  local.get $buckets
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:bucketsMask (param $this i32) (param $bucketsMask i32)
  local.get $this
  local.get $bucketsMask
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entries (param $this i32) (param $entries i32)
  local.get $this
  local.get $entries
  i32.store offset=8
  local.get $this
  local.get $entries
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCapacity (param $this i32) (param $entriesCapacity i32)
  local.get $this
  local.get $entriesCapacity
  i32.store offset=12
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesOffset (param $this i32) (param $entriesOffset i32)
  local.get $this
  local.get $entriesOffset
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCount (param $this i32) (param $entriesCount i32)
  local.get $this
  local.get $entriesCount
  i32.store offset=20
 )
 (func $src/as/assembly/Proposition/Proposition#hash~anonymous|0 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
 )
 (func $~lib/util/number/itoa_buffered<i32> (param $buffer i32) (param $value i32) (result i32)
  (local $sign i32)
  (local $dest i32)
  (local $decimals i32)
  (local $val32 i32)
  (local $buffer|6 i32)
  (local $num i32)
  (local $offset i32)
  i32.const 0
  local.set $sign
  i32.const 1
  drop
  local.get $value
  i32.const 0
  i32.lt_s
  local.set $sign
  local.get $sign
  if
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   local.get $buffer
   i32.const 45
   i32.store16
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $buffer
  local.get $sign
  i32.const 1
  i32.shl
  i32.add
  local.set $dest
  i32.const 0
  i32.const 1
  i32.le_s
  drop
  i32.const 1
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  local.get $value
  i32.const 10
  i32.lt_u
  if
   local.get $dest
   local.get $value
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   local.get $sign
   i32.add
   return
  end
  i32.const 0
  local.set $decimals
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  local.get $value
  local.set $val32
  local.get $val32
  call $~lib/util/number/decimalCount32
  local.set $decimals
  local.get $dest
  local.set $buffer|6
  local.get $val32
  local.set $num
  local.get $decimals
  local.set $offset
  i32.const 0
  i32.const 1
  i32.ge_s
  drop
  local.get $buffer|6
  local.get $num
  local.get $offset
  call $~lib/util/number/utoa32_dec_lut
  local.get $sign
  local.get $decimals
  i32.add
  return
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:buckets (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:bucketsMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:taggedNext (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCapacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCount (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entries (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:value (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:taggedNext (param $this i32) (param $taggedNext i32)
  local.get $this
  local.get $taggedNext
  i32.store offset=8
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#set:originalPropositions (param $this i32) (param $originalPropositions i32)
  local.get $this
  local.get $originalPropositions
  i32.store
  local.get $this
  local.get $originalPropositions
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownMines (param $this i32) (param $knownMines i32)
  local.get $this
  local.get $knownMines
  i32.store offset=8
  local.get $this
  local.get $knownMines
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownSafes (param $this i32) (param $knownSafes i32)
  local.get $this
  local.get $knownSafes
  i32.store offset=12
  local.get $this
  local.get $knownSafes
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#set:cells (param $this i32) (param $cells i32)
  local.get $this
  local.get $cells
  i32.store offset=4
  local.get $this
  local.get $cells
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#get:originalPropositions (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#constructor~anonymous|0 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#get:cells (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownSafes (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownMines (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownMineCellsIds (param $this i32) (param $knownMineCellsIds i32)
  local.get $this
  local.get $knownMineCellsIds
  i32.store
  local.get $this
  local.get $knownMineCellsIds
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownSafeCellsIds (param $this i32) (param $knownSafeCellsIds i32)
  local.get $this
  local.get $knownSafeCellsIds
  i32.store offset=4
  local.get $this
  local.get $knownSafeCellsIds
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/GuessMaker/GuessMaker#set:solver (param $this i32) (param $solver i32)
  local.get $this
  local.get $solver
  i32.store
  local.get $this
  local.get $solver
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/assembly/GuessMaker/GuessMaker#get:solver (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/GuessMaker/Guess#set:id (param $this i32) (param $id i32)
  local.get $this
  local.get $id
  i32.store
 )
 (func $src/as/assembly/GuessMaker/Guess#set:mines (param $this i32) (param $mines i32)
  local.get $this
  local.get $mines
  i32.store offset=4
 )
 (func $src/as/assembly/GuessMaker/Guess#set:cells (param $this i32) (param $cells i32)
  local.get $this
  local.get $cells
  i32.store offset=8
 )
 (func $~lib/math/murmurHash3 (param $h i64) (result i64)
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -49064778989728563
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -4265267296055464877
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  return
 )
 (func $~lib/math/splitMix32 (param $h i32) (result i32)
  local.get $h
  i32.const 1831565813
  i32.add
  local.set $h
  local.get $h
  local.get $h
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 1
  i32.or
  i32.mul
  local.set $h
  local.get $h
  local.get $h
  local.get $h
  local.get $h
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $h
  local.get $h
  local.get $h
  i32.const 14
  i32.shr_u
  i32.xor
  return
 )
 (func $~lib/math/NativeMath.seedRandom (param $value i64)
  local.get $value
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $value
  end
  local.get $value
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $value
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
  i32.const 1
  global.set $~lib/math/random_seeded
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $s1 i64)
  (local $s0 i64)
  (local $r i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $s1
  global.get $~lib/math/random_state1_64
  local.set $s0
  local.get $s0
  global.set $~lib/math/random_state0_64
  local.get $s1
  local.get $s1
  i64.const 23
  i64.shl
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s1
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  global.set $~lib/math/random_state1_64
  local.get $s0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $r
  local.get $r
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  return
 )
 (func $src/as/assembly/GuessMaker/Guess#get:id (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:id (param $this i32) (param $id i32)
  local.get $this
  local.get $id
  i32.store
 )
 (func $src/as/assembly/GuessMaker/Guess#get:mines (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:mines (param $this i32) (param $mines i32)
  local.get $this
  local.get $mines
  i32.store offset=4
 )
 (func $src/as/assembly/GuessMaker/Guess#get:cells (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:cells (param $this i32) (param $cells i32)
  local.get $this
  local.get $cells
  i32.store offset=8
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:id (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:mines (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:cells (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/as/assembly/Proposition/Proposition#toString~anonymous|0 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
 )
 (func $~lib/rt/itcms/__pin (param $ptr i32) (result i32)
  (local $obj i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $obj
   local.get $obj
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 6064
    i32.const 352
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__unpin (param $ptr i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 6128
   i32.const 352
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
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
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $src/as/assembly/index/ai
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 480
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1232
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2016
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 288
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 6064
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 6128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2992
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4048
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 64
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 96
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 160
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 192
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $src/as/assembly/Solver/Solver~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/assembly/Board/Board~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__visit
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $src/as/assembly/Proposition/Proposition~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit
 )
 (func $~lib/set/Set<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/set/Set<i32>#__visit
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#__visit
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/assembly/GuessMaker/GuessMaker~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $src/as/assembly/models/SolverResponse/SolverGuessResponse
    block $src/as/assembly/GuessMaker/Guess
     block $src/as/assembly/GuessMaker/GuessMaker
      block $~lib/date/Date
       block $src/as/assembly/models/SolverResponse/SolverUpdateResponse
        block $src/as/assembly/HypothesisRunner/HypothesisRunner
         block $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>
          block $~lib/set/Set<i32>
           block $src/as/assembly/Board/Location
            block $~lib/function/Function<%28i32%2Ci32%29=>i32>
             block $~lib/staticarray/StaticArray<~lib/string/String>
              block $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>
               block $~lib/array/Array<src/as/assembly/Proposition/Proposition>
                block $src/as/assembly/Proposition/Proposition
                 block $~lib/array/Array<i32>
                  block $src/as/assembly/PropositionsSolver/PropositionsSolver
                   block $~lib/array/Array<src/as/assembly/models/Cell/Cell>
                    block $src/as/assembly/models/Cell/Cell
                     block $src/as/assembly/models/BoardProperties/BoardProperties
                      block $src/as/assembly/Board/Board
                       block $src/as/assembly/Solver/Solver
                        block $~lib/arraybuffer/ArrayBufferView
                         block $~lib/string/String
                          block $~lib/arraybuffer/ArrayBuffer
                           block $~lib/object/Object
                            local.get $0
                            i32.const 8
                            i32.sub
                            i32.load
                            br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $src/as/assembly/Solver/Solver $src/as/assembly/Board/Board $src/as/assembly/models/BoardProperties/BoardProperties $src/as/assembly/models/Cell/Cell $~lib/array/Array<src/as/assembly/models/Cell/Cell> $src/as/assembly/PropositionsSolver/PropositionsSolver $~lib/array/Array<i32> $src/as/assembly/Proposition/Proposition $~lib/array/Array<src/as/assembly/Proposition/Proposition> $~lib/as-virtual/assembly/index/Virtual<~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/function/Function<%28i32%2Ci32%29=>i32> $src/as/assembly/Board/Location $~lib/set/Set<i32> $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition> $src/as/assembly/HypothesisRunner/HypothesisRunner $src/as/assembly/models/SolverResponse/SolverUpdateResponse $~lib/date/Date $src/as/assembly/GuessMaker/GuessMaker $src/as/assembly/GuessMaker/Guess $src/as/assembly/models/SolverResponse/SolverGuessResponse $invalid
                           end
                           return
                          end
                          return
                         end
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/arraybuffer/ArrayBufferView~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $src/as/assembly/Solver/Solver~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $src/as/assembly/Board/Board~visit
                      return
                     end
                     return
                    end
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $src/as/assembly/PropositionsSolver/PropositionsSolver~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/array/Array<i32>~visit
                 return
                end
                local.get $0
                local.get $1
                call $src/as/assembly/Proposition/Proposition~visit
                return
               end
               local.get $0
               local.get $1
               call $~lib/array/Array<src/as/assembly/Proposition/Proposition>~visit
               return
              end
              return
             end
             local.get $0
             local.get $1
             call $~lib/staticarray/StaticArray<~lib/string/String>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $~lib/set/Set<i32>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>~visit
         return
        end
        local.get $0
        local.get $1
        call $src/as/assembly/HypothesisRunner/HypothesisRunner~visit
        return
       end
       local.get $0
       local.get $1
       call $src/as/assembly/models/SolverResponse/SolverUpdateResponse~visit
       return
      end
      return
     end
     local.get $0
     local.get $1
     call $src/as/assembly/GuessMaker/GuessMaker~visit
     return
    end
    return
   end
   return
  end
  unreachable
 )
 (func $~start
  call $start:src/as/assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 39072
   i32.const 39120
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:mineCellsIds
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:safeCellsIds
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:propositions
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 256
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:safeCellsIds
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 688
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:mineCellsIds
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 12
  i32.const 720
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:propositions
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/as/assembly/Solver/Solver#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 9
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Solver/Solver#set:board
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Solver/Solver#set:propositionsSolver
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Solver/Solver#set:addedMainProposition
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $src/as/assembly/Solver/Solver#set:propositionsSolver
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Solver/Solver#set:addedMainProposition
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#trimStart (param $this i32) (result i32)
  (local $size i32)
  (local $offset i32)
  (local $out i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $size
  i32.const 0
  local.set $offset
  loop $while-continue|0
   local.get $offset
   local.get $size
   i32.lt_u
   if (result i32)
    local.get $this
    local.get $offset
    i32.add
    i32.load16_u
    call $~lib/util/string/isSpace
   else
    i32.const 0
   end
   if
    local.get $offset
    i32.const 2
    i32.add
    local.set $offset
    br $while-continue|0
   end
  end
  local.get $offset
  i32.eqz
  if
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  local.get $size
  local.get $offset
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 752
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $offset
  i32.add
  local.get $size
  memory.copy
  local.get $out
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals (param $this i32) (param $eq i32) (result i32)
  (local $vl i32)
  (local $vr i32)
  (local $n i32)
  (local $vl|5 i32)
  (local $vr|6 i32)
  (local $n|7 i32)
  (local $a i32)
  (local $b i32)
  (local $10 i32)
  (local $a|11 i32)
  (local $b|12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:length
  local.get $eq
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:length
  i32.const 2
  i32.eq
  if
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data_ptr
   i32.load16_u
   local.get $eq
   i32.load16_u
   i32.eq
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  block $~lib/memory/memory.compare|inlined.0 (result i32)
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data_ptr
   local.set $vl
   local.get $eq
   local.set $vr
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:length
   local.set $n
   block $~lib/util/memory/memcmp|inlined.0 (result i32)
    local.get $vl
    local.set $vl|5
    local.get $vr
    local.set $vr|6
    local.get $n
    local.set $n|7
    local.get $vl|5
    local.get $vr|6
    i32.eq
    if
     i32.const 0
     br $~lib/util/memory/memcmp|inlined.0
    end
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $vl|5
    i32.const 7
    i32.and
    local.get $vr|6
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $vl|5
      i32.const 7
      i32.and
      if
       local.get $n|7
       i32.eqz
       if
        i32.const 0
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $vl|5
       i32.load8_u
       local.set $a
       local.get $vr|6
       i32.load8_u
       local.set $b
       local.get $a
       local.get $b
       i32.ne
       if
        local.get $a
        local.get $b
        i32.sub
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $n|7
       i32.const 1
       i32.sub
       local.set $n|7
       local.get $vl|5
       i32.const 1
       i32.add
       local.set $vl|5
       local.get $vr|6
       i32.const 1
       i32.add
       local.set $vr|6
       br $while-continue|0
      end
     end
     block $while-break|1
      loop $while-continue|1
       local.get $n|7
       i32.const 8
       i32.ge_u
       if
        local.get $vl|5
        i64.load
        local.get $vr|6
        i64.load
        i64.ne
        if
         br $while-break|1
        end
        local.get $vl|5
        i32.const 8
        i32.add
        local.set $vl|5
        local.get $vr|6
        i32.const 8
        i32.add
        local.set $vr|6
        local.get $n|7
        i32.const 8
        i32.sub
        local.set $n|7
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $n|7
     local.tee $10
     i32.const 1
     i32.sub
     local.set $n|7
     local.get $10
     if
      local.get $vl|5
      i32.load8_u
      local.set $a|11
      local.get $vr|6
      i32.load8_u
      local.set $b|12
      local.get $a|11
      local.get $b|12
      i32.ne
      if
       local.get $a|11
       local.get $b|12
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $vl|5
      i32.const 1
      i32.add
      local.set $vl|5
      local.get $vr|6
      i32.const 1
      i32.add
      local.set $vr|6
      br $while-continue|2
     end
    end
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   br $~lib/memory/memory.compare|inlined.0
  end
  i32.const 0
  i32.eq
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/string/String#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $out i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.set $len
  local.get $len
  i32.const 0
  i32.le_s
  if
   i32.const 752
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $start
  i32.const 1
  i32.shl
  i32.add
  local.get $len
  i32.const 1
  i32.shl
  memory.copy
  local.get $out
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $this i32) (param $key i32) (param $data i32) (param $val_start i32) (param $val_end i32) (param $initializeDefaultValues i32)
  (local $str i32)
  (local $start i32)
  (local $end i32)
  (local $val i32)
  (local $str|10 i32)
  (local $start|11 i32)
  (local $end|12 i32)
  (local $val|13 i32)
  (local $str|14 i32)
  (local $start|15 i32)
  (local $end|16 i32)
  (local $val|17 i32)
  (local $18 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $key
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store
  local.get $18
  i32.const 832
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store offset=4
  local.get $18
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   block $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.tee $str
    i32.store offset=8
    local.get $val_start
    i32.const 1
    i32.shl
    local.set $start
    local.get $val_end
    i32.const 1
    i32.shl
    local.set $end
    i32.const 0
    local.set $val
    local.get $end
    i32.eqz
    if
     local.get $start
     local.get $str
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     i32.add
     local.set $end
    end
    i32.const 1
    drop
    local.get $str
    local.get $start
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $start
     i32.const 2
     i32.add
     local.set $start
     loop $for-loop|0
      local.get $start
      local.get $end
      i32.lt_u
      if
       local.get $val
       i32.const 10
       i32.mul
       local.get $str
       local.get $start
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val
       local.get $start
       i32.const 2
       i32.add
       local.set $start
       br $for-loop|0
      end
     end
     i32.const 0
     local.get $val
     i32.sub
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.0
    else
     loop $for-loop|1
      local.get $start
      local.get $end
      i32.lt_u
      if
       local.get $val
       i32.const 10
       i32.mul
       local.get $str
       local.get $start
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val
       local.get $start
       i32.const 2
       i32.add
       local.set $start
       br $for-loop|1
      end
     end
     local.get $val
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.0
    end
    unreachable
   end
   call $src/as/assembly/models/BoardProperties/BoardProperties#set:height
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $key
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store
  local.get $18
  i32.const 864
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store offset=4
  local.get $18
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   block $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.1 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.tee $str|10
    i32.store offset=12
    local.get $val_start
    i32.const 1
    i32.shl
    local.set $start|11
    local.get $val_end
    i32.const 1
    i32.shl
    local.set $end|12
    i32.const 0
    local.set $val|13
    local.get $end|12
    i32.eqz
    if
     local.get $start|11
     local.get $str|10
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     i32.add
     local.set $end|12
    end
    i32.const 1
    drop
    local.get $str|10
    local.get $start|11
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $start|11
     i32.const 2
     i32.add
     local.set $start|11
     loop $for-loop|2
      local.get $start|11
      local.get $end|12
      i32.lt_u
      if
       local.get $val|13
       i32.const 10
       i32.mul
       local.get $str|10
       local.get $start|11
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|13
       local.get $start|11
       i32.const 2
       i32.add
       local.set $start|11
       br $for-loop|2
      end
     end
     i32.const 0
     local.get $val|13
     i32.sub
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.1
    else
     loop $for-loop|3
      local.get $start|11
      local.get $end|12
      i32.lt_u
      if
       local.get $val|13
       i32.const 10
       i32.mul
       local.get $str|10
       local.get $start|11
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|13
       local.get $start|11
       i32.const 2
       i32.add
       local.set $start|11
       br $for-loop|3
      end
     end
     local.get $val|13
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.1
    end
    unreachable
   end
   call $src/as/assembly/models/BoardProperties/BoardProperties#set:width
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $key
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store
  local.get $18
  i32.const 896
  local.set $18
  global.get $~lib/memory/__stack_pointer
  local.get $18
  i32.store offset=4
  local.get $18
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   block $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.2 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.tee $str|14
    i32.store offset=16
    local.get $val_start
    i32.const 1
    i32.shl
    local.set $start|15
    local.get $val_end
    i32.const 1
    i32.shl
    local.set $end|16
    i32.const 0
    local.set $val|17
    local.get $end|16
    i32.eqz
    if
     local.get $start|15
     local.get $str|14
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     i32.add
     local.set $end|16
    end
    i32.const 1
    drop
    local.get $str|14
    local.get $start|15
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $start|15
     i32.const 2
     i32.add
     local.set $start|15
     loop $for-loop|4
      local.get $start|15
      local.get $end|16
      i32.lt_u
      if
       local.get $val|17
       i32.const 10
       i32.mul
       local.get $str|14
       local.get $start|15
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|17
       local.get $start|15
       i32.const 2
       i32.add
       local.set $start|15
       br $for-loop|4
      end
     end
     i32.const 0
     local.get $val|17
     i32.sub
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.2
    else
     loop $for-loop|5
      local.get $start|15
      local.get $end|16
      i32.lt_u
      if
       local.get $val|17
       i32.const 10
       i32.mul
       local.get $str|14
       local.get $start|15
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|17
       local.get $start|15
       i32.const 2
       i32.add
       local.set $start|15
       br $for-loop|5
      end
     end
     local.get $val|17
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.2
    end
    unreachable
   end
   call $src/as/assembly/models/BoardProperties/BoardProperties#set:mines
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
 (func $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst (param $this i32) (param $data i32) (param $start i32) (param $end i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $start
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:offset
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $end
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $data
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:data
  local.get $end
  i32.eqz
  if
   i32.const 1
   drop
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data
   local.get $start
   i32.const 1
   i32.shl
   i32.add
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:data_ptr
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $data
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/string/String#get:length
   local.get $start
   i32.sub
   i32.const 1
   i32.shl
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:length
  else
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:data
   local.get $start
   i32.const 1
   i32.shl
   i32.add
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:data_ptr
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $end
   local.get $start
   i32.sub
   i32.const 1
   i32.shl
   call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#set:length
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#get:length
  i32.const 0
  i32.le_s
  if
   i32.const 928
   i32.const 1008
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
 (func $~lib/string/String#charCodeAt (param $this i32) (param $pos i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $pos
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  local.get $this
  local.get $pos
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/string/String#startsWith (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $searchStart i32)
  (local $searchLength i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $searchStart
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLength
  local.get $searchLength
  local.get $searchStart
  i32.add
  local.get $len
  i32.gt_s
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  local.get $searchStart
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  i32.const 0
  local.get $searchLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 752
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 752
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $this i32) (param $key i32) (param $data i32) (param $val_start i32) (param $val_end i32) (param $initializeDefaultValues i32)
  (local $str i32)
  (local $start i32)
  (local $end i32)
  (local $val i32)
  (local $str|10 i32)
  (local $start|11 i32)
  (local $end|12 i32)
  (local $val|13 i32)
  (local $data|14 i32)
  (local $initializeDefaultValues|15 i32)
  (local $type i32)
  (local $data|17 i32)
  (local $18 i32)
  (local $19 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  local.get $key
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store
  local.get $19
  i32.const 1328
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store offset=4
  local.get $19
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $19
   global.get $~lib/memory/__stack_pointer
   local.get $19
   i32.store
   local.get $19
   block $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.3 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.tee $str
    i32.store offset=8
    local.get $val_start
    i32.const 1
    i32.shl
    local.set $start
    local.get $val_end
    i32.const 1
    i32.shl
    local.set $end
    i32.const 0
    local.set $val
    local.get $end
    i32.eqz
    if
     local.get $start
     local.get $str
     local.set $19
     global.get $~lib/memory/__stack_pointer
     local.get $19
     i32.store offset=4
     local.get $19
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     i32.add
     local.set $end
    end
    i32.const 1
    drop
    local.get $str
    local.get $start
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $start
     i32.const 2
     i32.add
     local.set $start
     loop $for-loop|0
      local.get $start
      local.get $end
      i32.lt_u
      if
       local.get $val
       i32.const 10
       i32.mul
       local.get $str
       local.get $start
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val
       local.get $start
       i32.const 2
       i32.add
       local.set $start
       br $for-loop|0
      end
     end
     i32.const 0
     local.get $val
     i32.sub
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.3
    else
     loop $for-loop|1
      local.get $start
      local.get $end
      i32.lt_u
      if
       local.get $val
       i32.const 10
       i32.mul
       local.get $str
       local.get $start
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val
       local.get $start
       i32.const 2
       i32.add
       local.set $start
       br $for-loop|1
      end
     end
     local.get $val
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.3
    end
    unreachable
   end
   call $src/as/assembly/models/Cell/Cell#set:_id
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $key
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store
  local.get $19
  i32.const 1360
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store offset=4
  local.get $19
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $19
   global.get $~lib/memory/__stack_pointer
   local.get $19
   i32.store
   local.get $19
   block $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.4 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.tee $str|10
    i32.store offset=12
    local.get $val_start
    i32.const 1
    i32.shl
    local.set $start|11
    local.get $val_end
    i32.const 1
    i32.shl
    local.set $end|12
    i32.const 0
    local.set $val|13
    local.get $end|12
    i32.eqz
    if
     local.get $start|11
     local.get $str|10
     local.set $19
     global.get $~lib/memory/__stack_pointer
     local.get $19
     i32.store offset=4
     local.get $19
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     i32.add
     local.set $end|12
    end
    i32.const 1
    drop
    local.get $str|10
    local.get $start|11
    i32.add
    i32.load16_u
    i32.const 45
    i32.eq
    if
     local.get $start|11
     i32.const 2
     i32.add
     local.set $start|11
     loop $for-loop|2
      local.get $start|11
      local.get $end|12
      i32.lt_u
      if
       local.get $val|13
       i32.const 10
       i32.mul
       local.get $str|10
       local.get $start|11
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|13
       local.get $start|11
       i32.const 2
       i32.add
       local.set $start|11
       br $for-loop|2
      end
     end
     i32.const 0
     local.get $val|13
     i32.sub
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.4
    else
     loop $for-loop|3
      local.get $start|11
      local.get $end|12
      i32.lt_u
      if
       local.get $val|13
       i32.const 10
       i32.mul
       local.get $str|10
       local.get $start|11
       i32.add
       i32.load16_u
       i32.const 48
       i32.sub
       i32.add
       local.set $val|13
       local.get $start|11
       i32.const 2
       i32.add
       local.set $start|11
       br $for-loop|3
      end
     end
     local.get $val|13
     br $~lib/json-as/assembly/src/util/__atoi_fast<i32>|inlined.4
    end
    unreachable
   end
   call $src/as/assembly/models/Cell/Cell#set:minesCount
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $key
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store
  local.get $19
  i32.const 1408
  local.set $19
  global.get $~lib/memory/__stack_pointer
  local.get $19
  i32.store offset=4
  local.get $19
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $19
   global.get $~lib/memory/__stack_pointer
   local.get $19
   i32.store
   local.get $19
   block $~lib/json-as/assembly/src/json/__parseObjectValue<bool>|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $val_start
    if (result i32)
     local.get $data
     local.set $19
     global.get $~lib/memory/__stack_pointer
     local.get $19
     i32.store offset=4
     local.get $19
     local.get $val_start
     local.get $val_end
     call $~lib/string/String#slice
    else
     local.get $data
    end
    local.tee $data|14
    i32.store offset=16
    local.get $initializeDefaultValues
    local.set $initializeDefaultValues|15
    i32.const 0
    drop
    i32.const 1
    drop
    block $~lib/json-as/assembly/src/json/parseBoolean<bool>|inlined.0 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $data|14
     local.tee $data|17
     i32.store offset=20
     local.get $data|17
     local.set $19
     global.get $~lib/memory/__stack_pointer
     local.get $19
     i32.store offset=4
     local.get $19
     call $~lib/string/String#get:length
     i32.const 3
     i32.gt_s
     if (result i32)
      local.get $data|17
      local.set $19
      global.get $~lib/memory/__stack_pointer
      local.get $19
      i32.store offset=4
      local.get $19
      i32.const 32
      local.set $19
      global.get $~lib/memory/__stack_pointer
      local.get $19
      i32.store offset=24
      local.get $19
      i32.const 0
      call $~lib/string/String#startsWith
     else
      i32.const 0
     end
     if
      i32.const 1
      br $~lib/json-as/assembly/src/json/parseBoolean<bool>|inlined.0
     else
      local.get $data|17
      local.set $19
      global.get $~lib/memory/__stack_pointer
      local.get $19
      i32.store offset=4
      local.get $19
      call $~lib/string/String#get:length
      i32.const 4
      i32.gt_s
      if (result i32)
       local.get $data|17
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=4
       local.get $19
       i32.const 64
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=24
       local.get $19
       i32.const 0
       call $~lib/string/String#startsWith
      else
       i32.const 0
      end
      if
       i32.const 0
       br $~lib/json-as/assembly/src/json/parseBoolean<bool>|inlined.0
      else
       global.get $~lib/memory/__stack_pointer
       local.get $data|17
       local.tee $18
       i32.store offset=28
       i32.const 1568
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=4
       local.get $19
       i32.const 1
       local.get $18
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=24
       local.get $19
       call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       i32.const 1568
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=4
       local.get $19
       i32.const 752
       local.set $19
       global.get $~lib/memory/__stack_pointer
       local.get $19
       i32.store offset=24
       local.get $19
       call $~lib/staticarray/StaticArray<~lib/string/String>#join
       i32.const 1600
       i32.const 421
       i32.const 8
       call $~lib/builtins/abort
       unreachable
      end
      unreachable
     end
     unreachable
    end
    br $~lib/json-as/assembly/src/json/__parseObjectValue<bool>|inlined.0
   end
   call $src/as/assembly/models/Cell/Cell#set:revealed
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
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1232
    i32.const 1280
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $this i32) (param $key i32) (param $data i32) (param $val_start i32) (param $val_end i32) (param $initializeDefaultValues i32)
  (local $data|6 i32)
  (local $initializeDefaultValues|7 i32)
  (local $type i32)
  (local $data|9 i32)
  (local $initializeDefaultValues|10 i32)
  (local $schema i32)
  (local $this|12 i32)
  (local $key|13 i32)
  (local $isKey i32)
  (local $depth i32)
  (local $outerLoopIndex i32)
  (local $data|17 i32)
  (local $pos i32)
  (local $char i32)
  (local $arrayValueIndex i32)
  (local $data|21 i32)
  (local $pos|22 i32)
  (local $char|23 i32)
  (local $objectValueIndex i32)
  (local $data|25 i32)
  (local $pos|26 i32)
  (local $char|27 i32)
  (local $escaping i32)
  (local $stringValueIndex i32)
  (local $data|30 i32)
  (local $pos|31 i32)
  (local $char|32 i32)
  (local $data|33 i32)
  (local $pos|34 i32)
  (local $data|35 i32)
  (local $pos|36 i32)
  (local $data|37 i32)
  (local $pos|38 i32)
  (local $data|39 i32)
  (local $pos|40 i32)
  (local $data|41 i32)
  (local $pos|42 i32)
  (local $data|43 i32)
  (local $pos|44 i32)
  (local $data|45 i32)
  (local $pos|46 i32)
  (local $numberValueIndex i32)
  (local $data|48 i32)
  (local $pos|49 i32)
  (local $char|50 i32)
  (local $data|51 i32)
  (local $initializeDefaultValues|52 i32)
  (local $type|53 i32)
  (local $data|54 i32)
  (local $type|55 i32)
  (local $data|56 i32)
  (local $result i32)
  (local $lastPos i32)
  (local $depth|59 i32)
  (local $pos|60 i32)
  (local $data|61 i32)
  (local $pos|62 i32)
  (local $char|63 i32)
  (local $data|64 i32)
  (local $initializeDefaultValues|65 i32)
  (local $type|66 i32)
  (local $data|67 i32)
  (local $initializeDefaultValues|68 i32)
  (local $schema|69 i32)
  (local $this|70 i32)
  (local $key|71 i32)
  (local $isKey|72 i32)
  (local $depth|73 i32)
  (local $outerLoopIndex|74 i32)
  (local $data|75 i32)
  (local $pos|76 i32)
  (local $char|77 i32)
  (local $arrayValueIndex|78 i32)
  (local $data|79 i32)
  (local $pos|80 i32)
  (local $char|81 i32)
  (local $objectValueIndex|82 i32)
  (local $data|83 i32)
  (local $pos|84 i32)
  (local $char|85 i32)
  (local $escaping|86 i32)
  (local $stringValueIndex|87 i32)
  (local $data|88 i32)
  (local $pos|89 i32)
  (local $char|90 i32)
  (local $data|91 i32)
  (local $pos|92 i32)
  (local $data|93 i32)
  (local $pos|94 i32)
  (local $data|95 i32)
  (local $pos|96 i32)
  (local $data|97 i32)
  (local $pos|98 i32)
  (local $data|99 i32)
  (local $pos|100 i32)
  (local $data|101 i32)
  (local $pos|102 i32)
  (local $data|103 i32)
  (local $pos|104 i32)
  (local $numberValueIndex|105 i32)
  (local $data|106 i32)
  (local $pos|107 i32)
  (local $char|108 i32)
  (local $109 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 188
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 188
  memory.fill
  local.get $key
  local.set $109
  global.get $~lib/memory/__stack_pointer
  local.get $109
  i32.store
  local.get $109
  i32.const 784
  local.set $109
  global.get $~lib/memory/__stack_pointer
  local.get $109
  i32.store offset=4
  local.get $109
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $109
   global.get $~lib/memory/__stack_pointer
   local.get $109
   i32.store
   local.get $109
   block $~lib/json-as/assembly/src/json/__parseObjectValue<src/as/assembly/models/BoardProperties/BoardProperties>|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $val_start
    if (result i32)
     local.get $data
     local.set $109
     global.get $~lib/memory/__stack_pointer
     local.get $109
     i32.store offset=8
     local.get $109
     local.get $val_start
     local.get $val_end
     call $~lib/string/String#slice
    else
     local.get $data
    end
    local.tee $data|6
    i32.store offset=12
    local.get $initializeDefaultValues
    local.set $initializeDefaultValues|7
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 1
    drop
    block $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/models/BoardProperties/BoardProperties>|inlined.0 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $data|6
     local.set $109
     global.get $~lib/memory/__stack_pointer
     local.get $109
     i32.store offset=8
     local.get $109
     call $~lib/string/String#trimStart
     local.tee $data|9
     i32.store offset=16
     local.get $initializeDefaultValues|7
     local.set $initializeDefaultValues|10
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 6
     call $~lib/rt/itcms/__new
     local.tee $schema
     i32.store offset=20
     local.get $initializeDefaultValues|10
     if
      global.get $~lib/memory/__stack_pointer
      local.get $schema
      local.tee $this|12
      i32.store offset=24
     end
     global.get $~lib/memory/__stack_pointer
     call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
     local.tee $key|13
     i32.store offset=28
     i32.const 0
     local.set $isKey
     i32.const 0
     local.set $depth
     i32.const 1
     local.set $outerLoopIndex
     loop $for-loop|0
      local.get $outerLoopIndex
      local.get $data|9
      local.set $109
      global.get $~lib/memory/__stack_pointer
      local.get $109
      i32.store offset=8
      local.get $109
      call $~lib/string/String#get:length
      i32.const 1
      i32.sub
      i32.lt_s
      if
       block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.2 (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $data|9
        local.tee $data|17
        i32.store offset=32
        local.get $outerLoopIndex
        local.set $pos
        local.get $data|17
        local.get $pos
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.2
       end
       local.set $char
       local.get $char
       i32.const 91
       i32.eq
       if
        local.get $outerLoopIndex
        local.set $arrayValueIndex
        block $for-break1
         loop $for-loop|1
          local.get $arrayValueIndex
          local.get $data|9
          local.set $109
          global.get $~lib/memory/__stack_pointer
          local.get $109
          i32.store offset=8
          local.get $109
          call $~lib/string/String#get:length
          i32.const 1
          i32.sub
          i32.lt_s
          if
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.3 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|9
            local.tee $data|21
            i32.store offset=36
            local.get $arrayValueIndex
            local.set $pos|22
            local.get $data|21
            local.get $pos|22
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.3
           end
           local.set $char|23
           local.get $char|23
           i32.const 91
           i32.eq
           if
            local.get $depth
            i32.const 1
            i32.add
            local.set $depth
           else
            local.get $char|23
            i32.const 93
            i32.eq
            if
             local.get $depth
             i32.const 1
             i32.sub
             local.set $depth
             local.get $depth
             i32.const 0
             i32.eq
             if
              local.get $arrayValueIndex
              i32.const 1
              i32.add
              local.set $arrayValueIndex
              local.get $schema
              local.set $109
              global.get $~lib/memory/__stack_pointer
              local.get $109
              i32.store offset=8
              local.get $109
              local.get $key|13
              local.set $109
              global.get $~lib/memory/__stack_pointer
              local.get $109
              i32.store offset=40
              local.get $109
              local.get $data|9
              local.set $109
              global.get $~lib/memory/__stack_pointer
              local.get $109
              i32.store offset=44
              local.get $109
              local.get $outerLoopIndex
              local.get $arrayValueIndex
              local.get $initializeDefaultValues|10
              call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              local.get $arrayValueIndex
              local.set $outerLoopIndex
              i32.const 0
              local.set $isKey
              br $for-break1
             end
            end
           end
           local.get $arrayValueIndex
           i32.const 1
           i32.add
           local.set $arrayValueIndex
           br $for-loop|1
          end
         end
        end
       else
        local.get $char
        i32.const 123
        i32.eq
        if
         local.get $outerLoopIndex
         local.set $objectValueIndex
         block $for-break2
          loop $for-loop|2
           local.get $objectValueIndex
           local.get $data|9
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=8
           local.get $109
           call $~lib/string/String#get:length
           i32.const 1
           i32.sub
           i32.lt_s
           if
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.4 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|9
             local.tee $data|25
             i32.store offset=48
             local.get $objectValueIndex
             local.set $pos|26
             local.get $data|25
             local.get $pos|26
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.4
            end
            local.set $char|27
            local.get $char|27
            i32.const 123
            i32.eq
            if
             local.get $depth
             i32.const 1
             i32.add
             local.set $depth
            else
             local.get $char|27
             i32.const 125
             i32.eq
             if
              local.get $depth
              i32.const 1
              i32.sub
              local.set $depth
              local.get $depth
              i32.const 0
              i32.eq
              if
               local.get $objectValueIndex
               i32.const 1
               i32.add
               local.set $objectValueIndex
               local.get $schema
               local.set $109
               global.get $~lib/memory/__stack_pointer
               local.get $109
               i32.store offset=8
               local.get $109
               local.get $key|13
               local.set $109
               global.get $~lib/memory/__stack_pointer
               local.get $109
               i32.store offset=40
               local.get $109
               local.get $data|9
               local.set $109
               global.get $~lib/memory/__stack_pointer
               local.get $109
               i32.store offset=44
               local.get $109
               local.get $outerLoopIndex
               local.get $objectValueIndex
               local.get $initializeDefaultValues|10
               call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
               local.get $objectValueIndex
               local.set $outerLoopIndex
               i32.const 0
               local.set $isKey
               br $for-break2
              end
             end
            end
            local.get $objectValueIndex
            i32.const 1
            i32.add
            local.set $objectValueIndex
            br $for-loop|2
           end
          end
         end
        else
         local.get $char
         i32.const 34
         i32.eq
         if
          i32.const 0
          local.set $escaping
          local.get $outerLoopIndex
          i32.const 1
          i32.add
          local.tee $outerLoopIndex
          local.set $stringValueIndex
          block $for-break3
           loop $for-loop|3
            local.get $stringValueIndex
            local.get $data|9
            local.set $109
            global.get $~lib/memory/__stack_pointer
            local.get $109
            i32.store offset=8
            local.get $109
            call $~lib/string/String#get:length
            i32.const 1
            i32.sub
            i32.lt_s
            if
             block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.5 (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $data|9
              local.tee $data|30
              i32.store offset=52
              local.get $stringValueIndex
              local.set $pos|31
              local.get $data|30
              local.get $pos|31
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
              br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.5
             end
             local.set $char|32
             local.get $char|32
             i32.const 92
             i32.eq
             if (result i32)
              local.get $escaping
              i32.eqz
             else
              i32.const 0
             end
             if
              i32.const 1
              local.set $escaping
             else
              local.get $char|32
              i32.const 34
              i32.eq
              if (result i32)
               local.get $escaping
               i32.eqz
              else
               i32.const 0
              end
              if
               local.get $isKey
               i32.const 0
               i32.eq
               if
                local.get $key|13
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=8
                local.get $109
                local.get $data|9
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=40
                local.get $109
                local.get $outerLoopIndex
                local.get $stringValueIndex
                call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
                i32.const 1
                local.set $isKey
               else
                local.get $schema
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=8
                local.get $109
                local.get $key|13
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=40
                local.get $109
                local.get $data|9
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=44
                local.get $109
                local.get $outerLoopIndex
                local.get $stringValueIndex
                local.get $initializeDefaultValues|10
                call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                i32.const 0
                local.set $isKey
               end
               local.get $stringValueIndex
               i32.const 1
               i32.add
               local.tee $stringValueIndex
               local.set $outerLoopIndex
               br $for-break3
              end
              i32.const 0
              local.set $escaping
             end
             local.get $stringValueIndex
             i32.const 1
             i32.add
             local.set $stringValueIndex
             br $for-loop|3
            end
           end
          end
         else
          local.get $char
          i32.const 110
          i32.eq
          if
           local.get $schema
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=8
           local.get $109
           local.get $key|13
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=40
           local.get $109
           i32.const 96
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=44
           local.get $109
           i32.const 0
           i32.const 4
           local.get $initializeDefaultValues|10
           call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $isKey
          else
           local.get $char
           i32.const 116
           i32.eq
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.6 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|9
             local.tee $data|33
             i32.store offset=56
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|34
             local.get $data|33
             local.get $pos|34
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.6
            end
            i32.const 114
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.7 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|9
             local.tee $data|35
             i32.store offset=60
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|36
             local.get $data|35
             local.get $pos|36
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.7
            end
            i32.const 117
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.8 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|9
             local.tee $data|37
             i32.store offset=64
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|38
             local.get $data|37
             local.get $pos|38
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.8
            end
            i32.const 101
            i32.eq
           else
            i32.const 0
           end
           if
            local.get $schema
            local.set $109
            global.get $~lib/memory/__stack_pointer
            local.get $109
            i32.store offset=8
            local.get $109
            local.get $key|13
            local.set $109
            global.get $~lib/memory/__stack_pointer
            local.get $109
            i32.store offset=40
            local.get $109
            i32.const 32
            local.set $109
            global.get $~lib/memory/__stack_pointer
            local.get $109
            i32.store offset=44
            local.get $109
            i32.const 0
            i32.const 4
            local.get $initializeDefaultValues|10
            call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $isKey
           else
            local.get $char
            i32.const 102
            i32.eq
            if (result i32)
             block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.9 (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $data|9
              local.tee $data|39
              i32.store offset=68
              local.get $outerLoopIndex
              i32.const 1
              i32.add
              local.tee $outerLoopIndex
              local.set $pos|40
              local.get $data|39
              local.get $pos|40
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
              br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.9
             end
             i32.const 1104
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=8
             local.get $109
             i32.const 0
             call $~lib/string/String#charCodeAt
             i32.eq
            else
             i32.const 0
            end
            if (result i32)
             block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.10 (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $data|9
              local.tee $data|41
              i32.store offset=72
              local.get $outerLoopIndex
              i32.const 1
              i32.add
              local.tee $outerLoopIndex
              local.set $pos|42
              local.get $data|41
              local.get $pos|42
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
              br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.10
             end
             i32.const 1136
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=8
             local.get $109
             i32.const 0
             call $~lib/string/String#charCodeAt
             i32.eq
            else
             i32.const 0
            end
            if (result i32)
             block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.11 (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $data|9
              local.tee $data|43
              i32.store offset=76
              local.get $outerLoopIndex
              i32.const 1
              i32.add
              local.tee $outerLoopIndex
              local.set $pos|44
              local.get $data|43
              local.get $pos|44
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
              br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.11
             end
             i32.const 1168
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=8
             local.get $109
             i32.const 0
             call $~lib/string/String#charCodeAt
             i32.eq
            else
             i32.const 0
            end
            if (result i32)
             block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.12 (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $data|9
              local.tee $data|45
              i32.store offset=80
              local.get $outerLoopIndex
              i32.const 1
              i32.add
              local.tee $outerLoopIndex
              local.set $pos|46
              local.get $data|45
              local.get $pos|46
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
              br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.12
             end
             i32.const 101
             i32.eq
            else
             i32.const 0
            end
            if
             local.get $schema
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=8
             local.get $109
             local.get $key|13
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=40
             local.get $109
             i32.const 64
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=44
             local.get $109
             i32.const 0
             i32.const 5
             local.get $initializeDefaultValues|10
             call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             i32.const 0
             local.set $isKey
            else
             local.get $char
             i32.const 48
             i32.ge_s
             if (result i32)
              local.get $char
              i32.const 57
              i32.le_s
             else
              i32.const 0
             end
             if (result i32)
              i32.const 1
             else
              local.get $char
              i32.const 45
              i32.eq
             end
             if
              local.get $outerLoopIndex
              i32.const 1
              i32.add
              local.tee $outerLoopIndex
              local.set $numberValueIndex
              block $for-break4
               loop $for-loop|4
                local.get $numberValueIndex
                local.get $data|9
                local.set $109
                global.get $~lib/memory/__stack_pointer
                local.get $109
                i32.store offset=8
                local.get $109
                call $~lib/string/String#get:length
                i32.lt_s
                if
                 block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.13 (result i32)
                  global.get $~lib/memory/__stack_pointer
                  local.get $data|9
                  local.tee $data|48
                  i32.store offset=84
                  local.get $numberValueIndex
                  local.set $pos|49
                  local.get $data|48
                  local.get $pos|49
                  i32.const 1
                  i32.shl
                  i32.add
                  i32.load16_u
                  br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.13
                 end
                 local.set $char|50
                 local.get $char|50
                 i32.const 44
                 i32.eq
                 if (result i32)
                  i32.const 1
                 else
                  local.get $char|50
                  i32.const 125
                  i32.eq
                 end
                 if (result i32)
                  i32.const 1
                 else
                  local.get $char|50
                  call $~lib/util/string/isSpace
                 end
                 if
                  local.get $schema
                  local.set $109
                  global.get $~lib/memory/__stack_pointer
                  local.get $109
                  i32.store offset=8
                  local.get $109
                  local.get $key|13
                  local.set $109
                  global.get $~lib/memory/__stack_pointer
                  local.get $109
                  i32.store offset=40
                  local.get $109
                  local.get $data|9
                  local.set $109
                  global.get $~lib/memory/__stack_pointer
                  local.get $109
                  i32.store offset=44
                  local.get $109
                  local.get $outerLoopIndex
                  i32.const 1
                  i32.sub
                  local.get $numberValueIndex
                  local.get $initializeDefaultValues|10
                  call $src/as/assembly/models/BoardProperties/BoardProperties#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                  local.get $numberValueIndex
                  local.set $outerLoopIndex
                  i32.const 0
                  local.set $isKey
                  br $for-break4
                 end
                 local.get $numberValueIndex
                 i32.const 1
                 i32.add
                 local.set $numberValueIndex
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
       local.get $outerLoopIndex
       i32.const 1
       i32.add
       local.set $outerLoopIndex
       br $for-loop|0
      end
     end
     local.get $schema
     br $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/models/BoardProperties/BoardProperties>|inlined.0
    end
    br $~lib/json-as/assembly/src/json/__parseObjectValue<src/as/assembly/models/BoardProperties/BoardProperties>|inlined.0
   end
   local.set $109
   global.get $~lib/memory/__stack_pointer
   local.get $109
   i32.store offset=4
   local.get $109
   call $src/as/assembly/Board/Board#set:properties
   global.get $~lib/memory/__stack_pointer
   i32.const 188
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $key
  local.set $109
  global.get $~lib/memory/__stack_pointer
  local.get $109
  i32.store
  local.get $109
  i32.const 1200
  local.set $109
  global.get $~lib/memory/__stack_pointer
  local.get $109
  i32.store offset=4
  local.get $109
  call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#equals
  if
   local.get $this
   local.set $109
   global.get $~lib/memory/__stack_pointer
   local.get $109
   i32.store
   local.get $109
   block $~lib/json-as/assembly/src/json/__parseObjectValue<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $val_start
    if (result i32)
     local.get $data
     local.set $109
     global.get $~lib/memory/__stack_pointer
     local.get $109
     i32.store offset=8
     local.get $109
     local.get $val_start
     local.get $val_end
     call $~lib/string/String#slice
    else
     local.get $data
    end
    local.tee $data|51
    i32.store offset=88
    local.get $initializeDefaultValues
    local.set $initializeDefaultValues|52
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 0
    drop
    i32.const 1
    drop
    block $~lib/json-as/assembly/src/json/parseArray<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $data|51
     local.tee $data|54
     i32.store offset=92
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 1
     drop
     global.get $~lib/memory/__stack_pointer
     i32.const 9
     i32.const 7
     call $~lib/rt/itcms/__new
     local.tee $type|55
     i32.store offset=96
     i32.const 1
     drop
     block $~lib/json-as/assembly/src/json/parseObjectArray<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0 (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $data|54
      local.tee $data|56
      i32.store offset=100
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 0
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#constructor
      local.tee $result
      i32.store offset=104
      i32.const 1
      local.set $lastPos
      i32.const 0
      local.set $depth|59
      i32.const 0
      local.set $pos|60
      loop $for-loop|5
       local.get $pos|60
       local.get $data|56
       local.set $109
       global.get $~lib/memory/__stack_pointer
       local.get $109
       i32.store offset=8
       local.get $109
       call $~lib/string/String#get:length
       i32.lt_u
       if
        block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.14 (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $data|56
         local.tee $data|61
         i32.store offset=108
         local.get $pos|60
         local.set $pos|62
         local.get $data|61
         local.get $pos|62
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
         br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.14
        end
        local.set $char|63
        local.get $char|63
        i32.const 123
        i32.eq
        if
         local.get $depth|59
         i32.const 0
         i32.eq
         if
          local.get $pos|60
          local.set $lastPos
         end
         local.get $depth|59
         i32.const 1
         i32.add
         local.set $depth|59
        else
         local.get $char|63
         i32.const 125
         i32.eq
         if
          local.get $depth|59
          i32.const 1
          i32.sub
          local.set $depth|59
          local.get $depth|59
          i32.const 0
          i32.eq
          if
           local.get $pos|60
           i32.const 1
           i32.add
           local.set $pos|60
           local.get $result
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=8
           local.get $109
           block $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/models/Cell/Cell>|inlined.0 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|56
            local.set $109
            global.get $~lib/memory/__stack_pointer
            local.get $109
            i32.store offset=44
            local.get $109
            local.get $lastPos
            local.get $pos|60
            call $~lib/string/String#slice
            local.tee $data|64
            i32.store offset=112
            i32.const 0
            local.set $initializeDefaultValues|65
            i32.const 0
            drop
            i32.const 0
            drop
            i32.const 0
            drop
            i32.const 0
            drop
            i32.const 0
            drop
            i32.const 1
            drop
            block $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/models/Cell/Cell>|inlined.0 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|64
             local.set $109
             global.get $~lib/memory/__stack_pointer
             local.get $109
             i32.store offset=44
             local.get $109
             call $~lib/string/String#trimStart
             local.tee $data|67
             i32.store offset=116
             local.get $initializeDefaultValues|65
             local.set $initializeDefaultValues|68
             global.get $~lib/memory/__stack_pointer
             i32.const 9
             i32.const 7
             call $~lib/rt/itcms/__new
             local.tee $schema|69
             i32.store offset=120
             local.get $initializeDefaultValues|68
             if
              global.get $~lib/memory/__stack_pointer
              local.get $schema|69
              local.tee $this|70
              i32.store offset=124
              local.get $this|70
              local.set $109
              global.get $~lib/memory/__stack_pointer
              local.get $109
              i32.store offset=44
              local.get $109
              i32.const -1
              call $src/as/assembly/models/Cell/Cell#set:minesCount
             end
             global.get $~lib/memory/__stack_pointer
             call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
             local.tee $key|71
             i32.store offset=128
             i32.const 0
             local.set $isKey|72
             i32.const 0
             local.set $depth|73
             i32.const 1
             local.set $outerLoopIndex|74
             loop $for-loop|6
              local.get $outerLoopIndex|74
              local.get $data|67
              local.set $109
              global.get $~lib/memory/__stack_pointer
              local.get $109
              i32.store offset=44
              local.get $109
              call $~lib/string/String#get:length
              i32.const 1
              i32.sub
              i32.lt_s
              if
               block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.15 (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $data|67
                local.tee $data|75
                i32.store offset=132
                local.get $outerLoopIndex|74
                local.set $pos|76
                local.get $data|75
                local.get $pos|76
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
                br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.15
               end
               local.set $char|77
               local.get $char|77
               i32.const 91
               i32.eq
               if
                local.get $outerLoopIndex|74
                local.set $arrayValueIndex|78
                block $for-break7
                 loop $for-loop|7
                  local.get $arrayValueIndex|78
                  local.get $data|67
                  local.set $109
                  global.get $~lib/memory/__stack_pointer
                  local.get $109
                  i32.store offset=44
                  local.get $109
                  call $~lib/string/String#get:length
                  i32.const 1
                  i32.sub
                  i32.lt_s
                  if
                   block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.16 (result i32)
                    global.get $~lib/memory/__stack_pointer
                    local.get $data|67
                    local.tee $data|79
                    i32.store offset=136
                    local.get $arrayValueIndex|78
                    local.set $pos|80
                    local.get $data|79
                    local.get $pos|80
                    i32.const 1
                    i32.shl
                    i32.add
                    i32.load16_u
                    br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.16
                   end
                   local.set $char|81
                   local.get $char|81
                   i32.const 91
                   i32.eq
                   if
                    local.get $depth|73
                    i32.const 1
                    i32.add
                    local.set $depth|73
                   else
                    local.get $char|81
                    i32.const 93
                    i32.eq
                    if
                     local.get $depth|73
                     i32.const 1
                     i32.sub
                     local.set $depth|73
                     local.get $depth|73
                     i32.const 0
                     i32.eq
                     if
                      local.get $arrayValueIndex|78
                      i32.const 1
                      i32.add
                      local.set $arrayValueIndex|78
                      local.get $schema|69
                      local.set $109
                      global.get $~lib/memory/__stack_pointer
                      local.get $109
                      i32.store offset=44
                      local.get $109
                      local.get $key|71
                      local.set $109
                      global.get $~lib/memory/__stack_pointer
                      local.get $109
                      i32.store offset=140
                      local.get $109
                      local.get $data|67
                      local.set $109
                      global.get $~lib/memory/__stack_pointer
                      local.get $109
                      i32.store offset=144
                      local.get $109
                      local.get $outerLoopIndex|74
                      local.get $arrayValueIndex|78
                      local.get $initializeDefaultValues|68
                      call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                      local.get $arrayValueIndex|78
                      local.set $outerLoopIndex|74
                      i32.const 0
                      local.set $isKey|72
                      br $for-break7
                     end
                    end
                   end
                   local.get $arrayValueIndex|78
                   i32.const 1
                   i32.add
                   local.set $arrayValueIndex|78
                   br $for-loop|7
                  end
                 end
                end
               else
                local.get $char|77
                i32.const 123
                i32.eq
                if
                 local.get $outerLoopIndex|74
                 local.set $objectValueIndex|82
                 block $for-break8
                  loop $for-loop|8
                   local.get $objectValueIndex|82
                   local.get $data|67
                   local.set $109
                   global.get $~lib/memory/__stack_pointer
                   local.get $109
                   i32.store offset=44
                   local.get $109
                   call $~lib/string/String#get:length
                   i32.const 1
                   i32.sub
                   i32.lt_s
                   if
                    block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.17 (result i32)
                     global.get $~lib/memory/__stack_pointer
                     local.get $data|67
                     local.tee $data|83
                     i32.store offset=148
                     local.get $objectValueIndex|82
                     local.set $pos|84
                     local.get $data|83
                     local.get $pos|84
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.17
                    end
                    local.set $char|85
                    local.get $char|85
                    i32.const 123
                    i32.eq
                    if
                     local.get $depth|73
                     i32.const 1
                     i32.add
                     local.set $depth|73
                    else
                     local.get $char|85
                     i32.const 125
                     i32.eq
                     if
                      local.get $depth|73
                      i32.const 1
                      i32.sub
                      local.set $depth|73
                      local.get $depth|73
                      i32.const 0
                      i32.eq
                      if
                       local.get $objectValueIndex|82
                       i32.const 1
                       i32.add
                       local.set $objectValueIndex|82
                       local.get $schema|69
                       local.set $109
                       global.get $~lib/memory/__stack_pointer
                       local.get $109
                       i32.store offset=44
                       local.get $109
                       local.get $key|71
                       local.set $109
                       global.get $~lib/memory/__stack_pointer
                       local.get $109
                       i32.store offset=140
                       local.get $109
                       local.get $data|67
                       local.set $109
                       global.get $~lib/memory/__stack_pointer
                       local.get $109
                       i32.store offset=144
                       local.get $109
                       local.get $outerLoopIndex|74
                       local.get $objectValueIndex|82
                       local.get $initializeDefaultValues|68
                       call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                       local.get $objectValueIndex|82
                       local.set $outerLoopIndex|74
                       i32.const 0
                       local.set $isKey|72
                       br $for-break8
                      end
                     end
                    end
                    local.get $objectValueIndex|82
                    i32.const 1
                    i32.add
                    local.set $objectValueIndex|82
                    br $for-loop|8
                   end
                  end
                 end
                else
                 local.get $char|77
                 i32.const 34
                 i32.eq
                 if
                  i32.const 0
                  local.set $escaping|86
                  local.get $outerLoopIndex|74
                  i32.const 1
                  i32.add
                  local.tee $outerLoopIndex|74
                  local.set $stringValueIndex|87
                  block $for-break9
                   loop $for-loop|9
                    local.get $stringValueIndex|87
                    local.get $data|67
                    local.set $109
                    global.get $~lib/memory/__stack_pointer
                    local.get $109
                    i32.store offset=44
                    local.get $109
                    call $~lib/string/String#get:length
                    i32.const 1
                    i32.sub
                    i32.lt_s
                    if
                     block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.18 (result i32)
                      global.get $~lib/memory/__stack_pointer
                      local.get $data|67
                      local.tee $data|88
                      i32.store offset=152
                      local.get $stringValueIndex|87
                      local.set $pos|89
                      local.get $data|88
                      local.get $pos|89
                      i32.const 1
                      i32.shl
                      i32.add
                      i32.load16_u
                      br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.18
                     end
                     local.set $char|90
                     local.get $char|90
                     i32.const 92
                     i32.eq
                     if (result i32)
                      local.get $escaping|86
                      i32.eqz
                     else
                      i32.const 0
                     end
                     if
                      i32.const 1
                      local.set $escaping|86
                     else
                      local.get $char|90
                      i32.const 34
                      i32.eq
                      if (result i32)
                       local.get $escaping|86
                       i32.eqz
                      else
                       i32.const 0
                      end
                      if
                       local.get $isKey|72
                       i32.const 0
                       i32.eq
                       if
                        local.get $key|71
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=44
                        local.get $109
                        local.get $data|67
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=140
                        local.get $109
                        local.get $outerLoopIndex|74
                        local.get $stringValueIndex|87
                        call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
                        i32.const 1
                        local.set $isKey|72
                       else
                        local.get $schema|69
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=44
                        local.get $109
                        local.get $key|71
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=140
                        local.get $109
                        local.get $data|67
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=144
                        local.get $109
                        local.get $outerLoopIndex|74
                        local.get $stringValueIndex|87
                        local.get $initializeDefaultValues|68
                        call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                        i32.const 0
                        local.set $isKey|72
                       end
                       local.get $stringValueIndex|87
                       i32.const 1
                       i32.add
                       local.tee $stringValueIndex|87
                       local.set $outerLoopIndex|74
                       br $for-break9
                      end
                      i32.const 0
                      local.set $escaping|86
                     end
                     local.get $stringValueIndex|87
                     i32.const 1
                     i32.add
                     local.set $stringValueIndex|87
                     br $for-loop|9
                    end
                   end
                  end
                 else
                  local.get $char|77
                  i32.const 110
                  i32.eq
                  if
                   local.get $schema|69
                   local.set $109
                   global.get $~lib/memory/__stack_pointer
                   local.get $109
                   i32.store offset=44
                   local.get $109
                   local.get $key|71
                   local.set $109
                   global.get $~lib/memory/__stack_pointer
                   local.get $109
                   i32.store offset=140
                   local.get $109
                   i32.const 96
                   local.set $109
                   global.get $~lib/memory/__stack_pointer
                   local.get $109
                   i32.store offset=144
                   local.get $109
                   i32.const 0
                   i32.const 4
                   local.get $initializeDefaultValues|68
                   call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                   i32.const 0
                   local.set $isKey|72
                  else
                   local.get $char|77
                   i32.const 116
                   i32.eq
                   if (result i32)
                    block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.19 (result i32)
                     global.get $~lib/memory/__stack_pointer
                     local.get $data|67
                     local.tee $data|91
                     i32.store offset=156
                     local.get $outerLoopIndex|74
                     i32.const 1
                     i32.add
                     local.tee $outerLoopIndex|74
                     local.set $pos|92
                     local.get $data|91
                     local.get $pos|92
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.19
                    end
                    i32.const 114
                    i32.eq
                   else
                    i32.const 0
                   end
                   if (result i32)
                    block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.20 (result i32)
                     global.get $~lib/memory/__stack_pointer
                     local.get $data|67
                     local.tee $data|93
                     i32.store offset=160
                     local.get $outerLoopIndex|74
                     i32.const 1
                     i32.add
                     local.tee $outerLoopIndex|74
                     local.set $pos|94
                     local.get $data|93
                     local.get $pos|94
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.20
                    end
                    i32.const 117
                    i32.eq
                   else
                    i32.const 0
                   end
                   if (result i32)
                    block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.21 (result i32)
                     global.get $~lib/memory/__stack_pointer
                     local.get $data|67
                     local.tee $data|95
                     i32.store offset=164
                     local.get $outerLoopIndex|74
                     i32.const 1
                     i32.add
                     local.tee $outerLoopIndex|74
                     local.set $pos|96
                     local.get $data|95
                     local.get $pos|96
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.21
                    end
                    i32.const 101
                    i32.eq
                   else
                    i32.const 0
                   end
                   if
                    local.get $schema|69
                    local.set $109
                    global.get $~lib/memory/__stack_pointer
                    local.get $109
                    i32.store offset=44
                    local.get $109
                    local.get $key|71
                    local.set $109
                    global.get $~lib/memory/__stack_pointer
                    local.get $109
                    i32.store offset=140
                    local.get $109
                    i32.const 32
                    local.set $109
                    global.get $~lib/memory/__stack_pointer
                    local.get $109
                    i32.store offset=144
                    local.get $109
                    i32.const 0
                    i32.const 4
                    local.get $initializeDefaultValues|68
                    call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                    i32.const 0
                    local.set $isKey|72
                   else
                    local.get $char|77
                    i32.const 102
                    i32.eq
                    if (result i32)
                     block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.22 (result i32)
                      global.get $~lib/memory/__stack_pointer
                      local.get $data|67
                      local.tee $data|97
                      i32.store offset=168
                      local.get $outerLoopIndex|74
                      i32.const 1
                      i32.add
                      local.tee $outerLoopIndex|74
                      local.set $pos|98
                      local.get $data|97
                      local.get $pos|98
                      i32.const 1
                      i32.shl
                      i32.add
                      i32.load16_u
                      br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.22
                     end
                     i32.const 1104
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=44
                     local.get $109
                     i32.const 0
                     call $~lib/string/String#charCodeAt
                     i32.eq
                    else
                     i32.const 0
                    end
                    if (result i32)
                     block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.23 (result i32)
                      global.get $~lib/memory/__stack_pointer
                      local.get $data|67
                      local.tee $data|99
                      i32.store offset=172
                      local.get $outerLoopIndex|74
                      i32.const 1
                      i32.add
                      local.tee $outerLoopIndex|74
                      local.set $pos|100
                      local.get $data|99
                      local.get $pos|100
                      i32.const 1
                      i32.shl
                      i32.add
                      i32.load16_u
                      br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.23
                     end
                     i32.const 1136
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=44
                     local.get $109
                     i32.const 0
                     call $~lib/string/String#charCodeAt
                     i32.eq
                    else
                     i32.const 0
                    end
                    if (result i32)
                     block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.24 (result i32)
                      global.get $~lib/memory/__stack_pointer
                      local.get $data|67
                      local.tee $data|101
                      i32.store offset=176
                      local.get $outerLoopIndex|74
                      i32.const 1
                      i32.add
                      local.tee $outerLoopIndex|74
                      local.set $pos|102
                      local.get $data|101
                      local.get $pos|102
                      i32.const 1
                      i32.shl
                      i32.add
                      i32.load16_u
                      br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.24
                     end
                     i32.const 1168
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=44
                     local.get $109
                     i32.const 0
                     call $~lib/string/String#charCodeAt
                     i32.eq
                    else
                     i32.const 0
                    end
                    if (result i32)
                     block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.25 (result i32)
                      global.get $~lib/memory/__stack_pointer
                      local.get $data|67
                      local.tee $data|103
                      i32.store offset=180
                      local.get $outerLoopIndex|74
                      i32.const 1
                      i32.add
                      local.tee $outerLoopIndex|74
                      local.set $pos|104
                      local.get $data|103
                      local.get $pos|104
                      i32.const 1
                      i32.shl
                      i32.add
                      i32.load16_u
                      br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.25
                     end
                     i32.const 101
                     i32.eq
                    else
                     i32.const 0
                    end
                    if
                     local.get $schema|69
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=44
                     local.get $109
                     local.get $key|71
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=140
                     local.get $109
                     i32.const 64
                     local.set $109
                     global.get $~lib/memory/__stack_pointer
                     local.get $109
                     i32.store offset=144
                     local.get $109
                     i32.const 0
                     i32.const 5
                     local.get $initializeDefaultValues|68
                     call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                     i32.const 0
                     local.set $isKey|72
                    else
                     local.get $char|77
                     i32.const 48
                     i32.ge_s
                     if (result i32)
                      local.get $char|77
                      i32.const 57
                      i32.le_s
                     else
                      i32.const 0
                     end
                     if (result i32)
                      i32.const 1
                     else
                      local.get $char|77
                      i32.const 45
                      i32.eq
                     end
                     if
                      local.get $outerLoopIndex|74
                      i32.const 1
                      i32.add
                      local.tee $outerLoopIndex|74
                      local.set $numberValueIndex|105
                      block $for-break10
                       loop $for-loop|10
                        local.get $numberValueIndex|105
                        local.get $data|67
                        local.set $109
                        global.get $~lib/memory/__stack_pointer
                        local.get $109
                        i32.store offset=44
                        local.get $109
                        call $~lib/string/String#get:length
                        i32.lt_s
                        if
                         block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.26 (result i32)
                          global.get $~lib/memory/__stack_pointer
                          local.get $data|67
                          local.tee $data|106
                          i32.store offset=184
                          local.get $numberValueIndex|105
                          local.set $pos|107
                          local.get $data|106
                          local.get $pos|107
                          i32.const 1
                          i32.shl
                          i32.add
                          i32.load16_u
                          br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.26
                         end
                         local.set $char|108
                         local.get $char|108
                         i32.const 44
                         i32.eq
                         if (result i32)
                          i32.const 1
                         else
                          local.get $char|108
                          i32.const 125
                          i32.eq
                         end
                         if (result i32)
                          i32.const 1
                         else
                          local.get $char|108
                          call $~lib/util/string/isSpace
                         end
                         if
                          local.get $schema|69
                          local.set $109
                          global.get $~lib/memory/__stack_pointer
                          local.get $109
                          i32.store offset=44
                          local.get $109
                          local.get $key|71
                          local.set $109
                          global.get $~lib/memory/__stack_pointer
                          local.get $109
                          i32.store offset=140
                          local.get $109
                          local.get $data|67
                          local.set $109
                          global.get $~lib/memory/__stack_pointer
                          local.get $109
                          i32.store offset=144
                          local.get $109
                          local.get $outerLoopIndex|74
                          i32.const 1
                          i32.sub
                          local.get $numberValueIndex|105
                          local.get $initializeDefaultValues|68
                          call $src/as/assembly/models/Cell/Cell#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                          local.get $numberValueIndex|105
                          local.set $outerLoopIndex|74
                          i32.const 0
                          local.set $isKey|72
                          br $for-break10
                         end
                         local.get $numberValueIndex|105
                         i32.const 1
                         i32.add
                         local.set $numberValueIndex|105
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
               local.get $outerLoopIndex|74
               i32.const 1
               i32.add
               local.set $outerLoopIndex|74
               br $for-loop|6
              end
             end
             local.get $schema|69
             br $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/models/Cell/Cell>|inlined.0
            end
            br $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/models/Cell/Cell>|inlined.0
           end
           local.set $109
           global.get $~lib/memory/__stack_pointer
           local.get $109
           i32.store offset=40
           local.get $109
           call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
           drop
          end
         end
        end
        local.get $pos|60
        i32.const 1
        i32.add
        local.set $pos|60
        br $for-loop|5
       end
      end
      local.get $result
      br $~lib/json-as/assembly/src/json/parseObjectArray<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0
     end
     br $~lib/json-as/assembly/src/json/parseArray<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0
    end
    br $~lib/json-as/assembly/src/json/__parseObjectValue<~lib/array/Array<src/as/assembly/models/Cell/Cell>>|inlined.0
   end
   local.set $109
   global.get $~lib/memory/__stack_pointer
   local.get $109
   i32.store offset=4
   local.get $109
   call $src/as/assembly/Board/Board#set:cells
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
 )
 (func $src/as/assembly/Solver/Solver#setBoard (param $this i32) (param $board i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $board
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/assembly/Solver/Solver#set:board
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 1280
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 2016
   i32.const 1280
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/as/assembly/Board/Board#getRevealedCells (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $revealedCells i32)
  (local $i i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 1904
  call $~lib/rt/__newArray
  local.tee $revealedCells
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/as/assembly/Board/Board#get:cells
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $5
    call $src/as/assembly/Board/Board#get:cells
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $i
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    call $src/as/assembly/models/Cell/Cell#get:revealed
    if
     local.get $revealedCells
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=16
     local.get $5
     call $src/as/assembly/Board/Board#get:cells
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     local.get $i
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $revealedCells
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<i32>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 480
    i32.const 1280
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 1280
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 2016
   i32.const 1280
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 1280
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#indexOf (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:length_
  local.set $len
  local.get $len
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $fromIndex
   local.get $len
   i32.ge_s
  end
  if
   i32.const -1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $fromIndex
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $fromIndex
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $fromIndex
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:dataStart
  local.set $ptr
  loop $while-continue|0
   local.get $fromIndex
   local.get $len
   i32.lt_s
   if
    local.get $ptr
    local.get $fromIndex
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $value
    i32.eq
    if
     local.get $fromIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     return
    end
    local.get $fromIndex
    i32.const 1
    i32.add
    local.set $fromIndex
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<i32>#includes (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $value
  local.get $fromIndex
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<i32>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/as/assembly/Proposition/Proposition#removeSafeCells (param $this i32) (param $safeCells i32) (result i32)
  (local $previousCellsLength i32)
  (local $3 i32)
  (local $4 i32)
  (local $remainingCells i32)
  (local $i i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:length
  local.set $previousCellsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 2144
  call $~lib/rt/__newArray
  local.tee $remainingCells
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $safeCells
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    local.get $this
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=12
    local.get $7
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     local.get $remainingCells
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=12
     local.get $7
     call $src/as/assembly/Proposition/Proposition#get:cellsIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $remainingCells
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#set:cellsIndex
  local.get $previousCellsLength
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:length
  i32.ne
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<i32>#concat (param $this i32) (param $other i32) (result i32)
  (local $thisLen i32)
  (local $otherLen i32)
  (local $outLen i32)
  (local $out i32)
  (local $outStart i32)
  (local $thisSize i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:length_
  local.set $thisLen
  local.get $other
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:length_
  local.set $otherLen
  local.get $thisLen
  local.get $otherLen
  i32.add
  local.set $outLen
  local.get $outLen
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outLen
  i32.const 2
  i32.const 10
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $out
  i32.store offset=4
  local.get $out
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:dataStart
  local.set $outStart
  local.get $thisLen
  i32.const 2
  i32.shl
  local.set $thisSize
  i32.const 0
  drop
  local.get $outStart
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:dataStart
  local.get $thisSize
  memory.copy
  local.get $outStart
  local.get $thisSize
  i32.add
  local.get $other
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:dataStart
  local.get $otherLen
  i32.const 2
  i32.shl
  memory.copy
  local.get $out
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/util/sort/SORT<i32> (param $ptr i32) (param $len i32) (param $comparator i32)
  (local $3 i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)
  (local $a|7 i32)
  (local $b|8 i32)
  (local $c|9 i32)
  (local $n i32)
  (local $lgPlus2 i32)
  (local $lgPlus2Size i32)
  (local $leftRunStartBuf i32)
  (local $leftRunEndBuf i32)
  (local $i i32)
  (local $buffer i32)
  (local $hi i32)
  (local $endA i32)
  (local $lenA i32)
  (local $20 i32)
  (local $21 i32)
  (local $top i32)
  (local $startA i32)
  (local $startB i32)
  (local $endB i32)
  (local $lenB i32)
  (local $27 i32)
  (local $28 i32)
  (local $k i32)
  (local $i|30 i32)
  (local $start i32)
  (local $i|32 i32)
  (local $start|33 i32)
  (local $34 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $len
  i32.const 48
  i32.le_s
  if
   local.get $len
   i32.const 1
   i32.le_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   block $break|0
    block $case1|0
     block $case0|0
      local.get $len
      local.set $3
      local.get $3
      i32.const 3
      i32.eq
      br_if $case0|0
      local.get $3
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $ptr
     i32.load
     local.set $a
     local.get $ptr
     i32.load offset=4
     local.set $b
     local.get $a
     local.get $b
     i32.const 2
     global.set $~argumentsLength
     local.get $comparator
     i32.load
     call_indirect (type $2)
     i32.const 0
     i32.gt_s
     local.set $c
     local.get $ptr
     local.get $b
     local.get $a
     local.get $c
     select
     i32.store
     local.get $a
     local.get $b
     local.get $c
     select
     local.set $a
     local.get $ptr
     i32.load offset=8
     local.set $b
     local.get $a
     local.get $b
     i32.const 2
     global.set $~argumentsLength
     local.get $comparator
     i32.load
     call_indirect (type $2)
     i32.const 0
     i32.gt_s
     local.set $c
     local.get $ptr
     local.get $b
     local.get $a
     local.get $c
     select
     i32.store offset=4
     local.get $ptr
     local.get $a
     local.get $b
     local.get $c
     select
     i32.store offset=8
    end
    local.get $ptr
    i32.load
    local.set $a|7
    local.get $ptr
    i32.load offset=4
    local.set $b|8
    local.get $a|7
    local.get $b|8
    i32.const 2
    global.set $~argumentsLength
    local.get $comparator
    i32.load
    call_indirect (type $2)
    i32.const 0
    i32.gt_s
    local.set $c|9
    local.get $ptr
    local.get $b|8
    local.get $a|7
    local.get $c|9
    select
    i32.store
    local.get $ptr
    local.get $a|7
    local.get $b|8
    local.get $c|9
    select
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   local.get $ptr
   i32.const 0
   local.get $len
   i32.const 1
   i32.sub
   i32.const 0
   local.get $comparator
   local.set $34
   global.get $~lib/memory/__stack_pointer
   local.get $34
   i32.store
   local.get $34
   call $~lib/util/sort/insertionSort<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  block $~lib/util/sort/log2u|inlined.0 (result i32)
   local.get $len
   local.set $n
   i32.const 31
   local.get $n
   i32.clz
   i32.sub
   br $~lib/util/sort/log2u|inlined.0
  end
  i32.const 2
  i32.add
  local.set $lgPlus2
  local.get $lgPlus2
  i32.const 2
  i32.shl
  local.set $lgPlus2Size
  local.get $lgPlus2Size
  i32.const 1
  i32.shl
  call $~lib/rt/tlsf/__alloc
  local.set $leftRunStartBuf
  local.get $leftRunStartBuf
  local.get $lgPlus2Size
  i32.add
  local.set $leftRunEndBuf
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   local.get $lgPlus2
   i32.lt_u
   if
    local.get $leftRunStartBuf
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  local.get $len
  i32.const 2
  i32.shl
  call $~lib/rt/tlsf/__alloc
  local.set $buffer
  local.get $len
  i32.const 1
  i32.sub
  local.set $hi
  local.get $ptr
  i32.const 0
  local.get $hi
  local.get $comparator
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store
  local.get $34
  call $~lib/util/sort/extendRunRight<i32>
  local.set $endA
  local.get $endA
  i32.const 1
  i32.add
  local.set $lenA
  local.get $lenA
  i32.const 32
  i32.lt_s
  if
   local.get $hi
   local.tee $20
   i32.const 32
   i32.const 1
   i32.sub
   local.tee $21
   local.get $20
   local.get $21
   i32.lt_s
   select
   local.set $endA
   local.get $ptr
   i32.const 0
   local.get $endA
   local.get $lenA
   local.get $comparator
   local.set $34
   global.get $~lib/memory/__stack_pointer
   local.get $34
   i32.store
   local.get $34
   call $~lib/util/sort/insertionSort<i32>
  end
  i32.const 0
  local.set $top
  i32.const 0
  local.set $startA
  loop $while-continue|2
   local.get $endA
   local.get $hi
   i32.lt_s
   if
    local.get $endA
    i32.const 1
    i32.add
    local.set $startB
    local.get $ptr
    local.get $startB
    local.get $hi
    local.get $comparator
    local.set $34
    global.get $~lib/memory/__stack_pointer
    local.get $34
    i32.store
    local.get $34
    call $~lib/util/sort/extendRunRight<i32>
    local.set $endB
    local.get $endB
    local.get $startB
    i32.sub
    i32.const 1
    i32.add
    local.set $lenB
    local.get $lenB
    i32.const 32
    i32.lt_s
    if
     local.get $hi
     local.tee $27
     local.get $startB
     i32.const 32
     i32.add
     i32.const 1
     i32.sub
     local.tee $28
     local.get $27
     local.get $28
     i32.lt_s
     select
     local.set $endB
     local.get $ptr
     local.get $startB
     local.get $endB
     local.get $lenB
     local.get $comparator
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     call $~lib/util/sort/insertionSort<i32>
    end
    i32.const 0
    local.get $hi
    local.get $startA
    local.get $startB
    local.get $endB
    call $~lib/util/sort/nodePower
    local.set $k
    local.get $top
    local.set $i|30
    loop $for-loop|3
     local.get $i|30
     local.get $k
     i32.gt_u
     if
      local.get $leftRunStartBuf
      local.get $i|30
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $start
      local.get $start
      i32.const -1
      i32.ne
      if
       local.get $ptr
       local.get $start
       local.get $leftRunEndBuf
       local.get $i|30
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $endA
       local.get $buffer
       local.get $comparator
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       call $~lib/util/sort/mergeRuns<i32>
       local.get $start
       local.set $startA
       local.get $leftRunStartBuf
       local.get $i|30
       i32.const 2
       i32.shl
       i32.add
       i32.const -1
       i32.store
      end
      local.get $i|30
      i32.const 1
      i32.sub
      local.set $i|30
      br $for-loop|3
     end
    end
    local.get $leftRunStartBuf
    local.get $k
    i32.const 2
    i32.shl
    i32.add
    local.get $startA
    i32.store
    local.get $leftRunEndBuf
    local.get $k
    i32.const 2
    i32.shl
    i32.add
    local.get $endA
    i32.store
    local.get $startB
    local.set $startA
    local.get $endB
    local.set $endA
    local.get $k
    local.set $top
    br $while-continue|2
   end
  end
  local.get $top
  local.set $i|32
  loop $for-loop|4
   local.get $i|32
   i32.const 0
   i32.ne
   if
    local.get $leftRunStartBuf
    local.get $i|32
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $start|33
    local.get $start|33
    i32.const -1
    i32.ne
    if
     local.get $ptr
     local.get $start|33
     local.get $leftRunEndBuf
     local.get $i|32
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $hi
     local.get $buffer
     local.get $comparator
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     call $~lib/util/sort/mergeRuns<i32>
    end
    local.get $i|32
    i32.const 1
    i32.sub
    local.set $i|32
    br $for-loop|4
   end
  end
  local.get $buffer
  call $~lib/rt/tlsf/__free
  local.get $leftRunStartBuf
  call $~lib/rt/tlsf/__free
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#sort (param $this i32) (param $comparator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<i32>#get:dataStart
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<i32>#get:length_
  local.get $comparator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/sort/SORT<i32>
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells (param $this i32) (param $cellIndexes i32) (result i32)
  (local $changed i32)
  (local $a i32)
  (local $4 i32)
  (local $5 i32)
  (local $newCells i32)
  (local $i i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $cellIndexes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.le_s
  if
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  i32.const 0
  local.set $changed
  i32.const 0
  local.set $a
  loop $for-loop|0
   local.get $a
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    local.get $8
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    local.get $a
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $cellIndexes
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $src/as/assembly/Proposition/Proposition#removeSafeCells
    if (result i32)
     i32.const 1
    else
     local.get $changed
    end
    local.set $changed
    local.get $a
    i32.const 1
    i32.add
    local.set $a
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 2176
  call $~lib/rt/__newArray
  local.tee $newCells
  i32.store offset=16
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   local.get $cellIndexes
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $cellIndexes
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     local.get $newCells
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $cellIndexes
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=20
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $newCells
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/array/Array<i32>#concat
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:safeCellsIds
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  i32.const 2208
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/array/Array<i32>#sort
  drop
  local.get $changed
  if (result i32)
   i32.const 1
  else
   local.get $newCells
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.gt_s
  end
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/as/assembly/Board/Location#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Board/Location#set:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/Board/Location#set:y
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/assembly/Board/Board#getCellByLocation (param $this i32) (param $x i32) (param $y i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
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
  local.get $this
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
  local.get $3
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
  local.get $y
  i32.mul
  local.get $x
  i32.add
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/as/assembly/Board/Board#getAdjacentCells (param $this i32) (param $cell i32) (result i32)
  (local $2 i32)
  (local $cellPosition i32)
  (local $4 i32)
  (local $5 i32)
  (local $adjacentCells i32)
  (local $y i32)
  (local $x i32)
  (local $newX i32)
  (local $newY i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/assembly/Board/Location#constructor
  local.tee $2
  i32.store
  local.get $2
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $cell
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $src/as/assembly/models/Cell/Cell#get:_id
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=12
  local.get $11
  call $src/as/assembly/Board/Board#get:properties
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
  i32.rem_s
  call $src/as/assembly/Board/Location#set:x
  local.get $2
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $cell
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $src/as/assembly/models/Cell/Cell#get:_id
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=12
  local.get $11
  call $src/as/assembly/Board/Board#get:properties
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
  i32.div_s
  call $src/as/assembly/Board/Location#set:y
  local.get $2
  local.tee $cellPosition
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 2240
  call $~lib/rt/__newArray
  local.tee $adjacentCells
  i32.store offset=20
  i32.const -1
  local.set $y
  loop $for-loop|0
   local.get $y
   i32.const 2
   i32.lt_s
   if
    i32.const -1
    local.set $x
    loop $for-loop|1
     local.get $x
     i32.const 2
     i32.lt_s
     if
      block $for-continue|1
       local.get $cellPosition
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=4
       local.get $11
       call $src/as/assembly/Board/Location#get:x
       local.get $x
       i32.add
       local.set $newX
       local.get $cellPosition
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=4
       local.get $11
       call $src/as/assembly/Board/Location#get:y
       local.get $y
       i32.add
       local.set $newY
       local.get $newX
       i32.const 0
       i32.lt_s
       if (result i32)
        i32.const 1
       else
        local.get $newX
        local.get $this
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=8
        local.get $11
        call $src/as/assembly/Board/Board#get:properties
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=4
        local.get $11
        call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
        i32.const 1
        i32.sub
        i32.gt_s
       end
       if
        br $for-continue|1
       end
       local.get $newY
       i32.const 0
       i32.lt_s
       if (result i32)
        i32.const 1
       else
        local.get $newY
        local.get $this
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=8
        local.get $11
        call $src/as/assembly/Board/Board#get:properties
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=4
        local.get $11
        call $src/as/assembly/models/BoardProperties/BoardProperties#get:height
        i32.const 1
        i32.sub
        i32.gt_s
       end
       if
        br $for-continue|1
       end
       local.get $x
       i32.const 0
       i32.eq
       if (result i32)
        local.get $y
        i32.const 0
        i32.eq
       else
        i32.const 0
       end
       if
        br $for-continue|1
       end
       local.get $adjacentCells
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=4
       local.get $11
       local.get $this
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=12
       local.get $11
       local.get $newX
       local.get $newY
       call $src/as/assembly/Board/Board#getCellByLocation
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=8
       local.get $11
       call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
       drop
      end
      local.get $x
      i32.const 1
      i32.add
      local.set $x
      br $for-loop|1
     end
    end
    local.get $y
    i32.const 1
    i32.add
    local.set $y
    br $for-loop|0
   end
  end
  local.get $adjacentCells
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/set/Set<i32>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/set/Set<i32>#set:buckets
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/set/Set<i32>#set:bucketsMask
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  block $~lib/set/ENTRY_SIZE<i32>|inlined.0 (result i32)
   i32.const 8
   br $~lib/set/ENTRY_SIZE<i32>|inlined.0
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/set/Set<i32>#set:entries
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  call $~lib/set/Set<i32>#set:entriesCapacity
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/set/Set<i32>#set:entriesOffset
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/set/Set<i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/set/Set<i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $taggedNext i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/set/Set<i32>#get:buckets
  local.get $hashCode
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/set/Set<i32>#get:bucketsMask
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $entry
  loop $while-continue|0
   local.get $entry
   if
    local.get $entry
    call $~lib/set/SetEntry<i32>#get:taggedNext
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     call $~lib/set/SetEntry<i32>#get:key
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/set/Set<i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  block $~lib/set/ENTRY_SIZE<i32>|inlined.1 (result i32)
   i32.const 8
   br $~lib/set/ENTRY_SIZE<i32>|inlined.1
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store offset=4
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/set/Set<i32>#get:entries
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/set/Set<i32>#get:entriesOffset
  block $~lib/set/ENTRY_SIZE<i32>|inlined.2 (result i32)
   i32.const 8
   br $~lib/set/ENTRY_SIZE<i32>|inlined.2
  end
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    call $~lib/set/SetEntry<i32>#get:taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     call $~lib/set/SetEntry<i32>#get:key
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/set/SetEntry<i32>#set:key
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load
     call $~lib/set/SetEntry<i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store
     local.get $newPtr
     block $~lib/set/ENTRY_SIZE<i32>|inlined.3 (result i32)
      i32.const 8
      br $~lib/set/ENTRY_SIZE<i32>|inlined.3
     end
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    block $~lib/set/ENTRY_SIZE<i32>|inlined.4 (result i32)
     i32.const 8
     br $~lib/set/ENTRY_SIZE<i32>|inlined.4
    end
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBuckets
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $~lib/set/Set<i32>#set:buckets
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBucketsMask
  call $~lib/set/Set<i32>#set:bucketsMask
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntries
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $~lib/set/Set<i32>#set:entries
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntriesCapacity
  call $~lib/set/Set<i32>#set:entriesCapacity
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $~lib/set/Set<i32>#get:entriesCount
  call $~lib/set/Set<i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#add (param $this i32) (param $key i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $4 i32)
  (local $bucketPtrBase i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $key
  call $~lib/util/hash/HASH<i32>
  local.set $hashCode
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $key
  local.get $hashCode
  call $~lib/set/Set<i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/set/Set<i32>#get:entriesOffset
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/set/Set<i32>#get:entriesCapacity
   i32.eq
   if
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $~lib/set/Set<i32>#get:entriesCount
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $~lib/set/Set<i32>#get:entriesCapacity
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     call $~lib/set/Set<i32>#get:bucketsMask
    else
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     call $~lib/set/Set<i32>#get:bucketsMask
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/set/Set<i32>#get:entries
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/set/Set<i32>#get:entriesOffset
   local.tee $4
   i32.const 1
   i32.add
   call $~lib/set/Set<i32>#set:entriesOffset
   local.get $4
   block $~lib/set/ENTRY_SIZE<i32>|inlined.5 (result i32)
    i32.const 8
    br $~lib/set/ENTRY_SIZE<i32>|inlined.5
   end
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/set/SetEntry<i32>#set:key
   i32.const 0
   drop
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/set/Set<i32>#get:entriesCount
   i32.const 1
   i32.add
   call $~lib/set/Set<i32>#set:entriesCount
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/set/Set<i32>#get:buckets
   local.get $hashCode
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/set/Set<i32>#get:bucketsMask
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load
   call $~lib/set/SetEntry<i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/array/Array<i32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<i32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<i32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<i32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $entry i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/set/Set<i32>#get:entries
  local.set $start
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/set/Set<i32>#get:entriesOffset
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   if
    local.get $start
    local.get $i
    block $~lib/set/ENTRY_SIZE<i32>|inlined.6 (result i32)
     i32.const 8
     br $~lib/set/ENTRY_SIZE<i32>|inlined.6
    end
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    call $~lib/set/SetEntry<i32>#get:taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $length
     local.tee $7
     i32.const 1
     i32.add
     local.set $length
     local.get $7
     local.get $entry
     call $~lib/set/SetEntry<i32>#get:key
     call $~lib/array/Array<i32>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/as/assembly/Proposition/Proposition#constructor (param $this i32) (param $origin i32) (param $cells i32) (param $mines i32) (result i32)
  (local $set i32)
  (local $i i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/as/assembly/Proposition/Proposition#set:cellsIndex
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/as/assembly/Proposition/Proposition#set:numberOfMines
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/as/assembly/Proposition/Proposition#set:origin
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $origin
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/as/assembly/Proposition/Proposition#set:origin
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  local.tee $set
  i32.store offset=12
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cells
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $set
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $cells
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    local.get $i
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#add
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $set
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/set/Set<i32>#values
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/as/assembly/Proposition/Proposition#set:cellsIndex
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $mines
  call $src/as/assembly/Proposition/Proposition#set:numberOfMines
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 480
    i32.const 1280
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Proposition/Proposition#clone (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:origin
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  call $src/as/assembly/Proposition/Proposition#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#removeMineCells (param $this i32) (param $mineCells i32) (result i32)
  (local $previousCellsLength i32)
  (local $3 i32)
  (local $4 i32)
  (local $remainingCells i32)
  (local $i i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:length
  local.set $previousCellsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4144
  call $~lib/rt/__newArray
  local.tee $remainingCells
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $mineCells
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    local.get $this
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=12
    local.get $7
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    if
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     call $src/as/assembly/Proposition/Proposition#get:numberOfMines
     i32.const 1
     i32.sub
     call $src/as/assembly/Proposition/Proposition#set:numberOfMines
    else
     local.get $remainingCells
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=12
     local.get $7
     call $src/as/assembly/Proposition/Proposition#get:cellsIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $remainingCells
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#set:cellsIndex
  local.get $previousCellsLength
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<i32>#get:length
  i32.ne
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $src/as/assembly/Proposition/Proposition#isEqual (param $this i32) (param $other i32) (result i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $other
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     i32.const 0
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     return
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#hasProposition (param $this i32) (param $proposition i32) (result i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $3
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $i
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $proposition
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $src/as/assembly/Proposition/Proposition#isEqual
    if
     i32.const 1
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     return
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/as/assembly/Proposition/Proposition#hasNoMine (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  i32.const 0
  i32.eq
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#isSatisfied (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#hasNoMine
  if (result i32)
   i32.const 1
  else
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $src/as/assembly/Proposition/Proposition#get:numberOfMines
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.ge_s
   if (result i32)
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/array/Array<i32>#get:length
    i32.const 0
    i32.gt_s
   else
    i32.const 0
   end
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#getCells (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells (param $this i32) (param $cellIndexes i32) (result i32)
  (local $changed i32)
  (local $a i32)
  (local $4 i32)
  (local $5 i32)
  (local $newCells i32)
  (local $i i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $cellIndexes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.le_s
  if
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  i32.const 0
  local.set $changed
  i32.const 0
  local.set $a
  loop $for-loop|0
   local.get $a
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    local.get $8
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    local.get $a
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $cellIndexes
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $src/as/assembly/Proposition/Proposition#removeMineCells
    if (result i32)
     i32.const 1
    else
     local.get $changed
    end
    local.set $changed
    local.get $a
    i32.const 1
    i32.add
    local.set $a
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4176
  call $~lib/rt/__newArray
  local.tee $newCells
  i32.store offset=16
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   local.get $cellIndexes
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $cellIndexes
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     local.get $newCells
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $cellIndexes
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=20
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $newCells
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/array/Array<i32>#concat
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:mineCellsIds
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  i32.const 4208
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/array/Array<i32>#sort
  drop
  local.get $changed
  if (result i32)
   i32.const 1
  else
   local.get $newCells
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.gt_s
  end
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions (param $this i32) (param $newPropositions i32) (result i32)
  (local $changed i32)
  (local $i i32)
  (local $newProposition i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.set $changed
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $newPropositions
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    block $for-continue|0
     global.get $~lib/memory/__stack_pointer
     local.get $newPropositions
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     local.get $i
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $src/as/assembly/Proposition/Proposition#clone
     local.tee $newProposition
     i32.store offset=8
     local.get $newProposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $src/as/assembly/Proposition/Proposition#removeMineCells
     drop
     local.get $newProposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $src/as/assembly/Proposition/Proposition#removeSafeCells
     drop
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $newProposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#hasProposition
     if
      br $for-continue|0
     end
     local.get $newProposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $src/as/assembly/Proposition/Proposition#isSatisfied
     if
      local.get $newProposition
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $src/as/assembly/Proposition/Proposition#hasNoMine
      if
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $newProposition
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=12
       local.get $5
       call $src/as/assembly/Proposition/Proposition#getCells
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=4
       local.get $5
       call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
       drop
      else
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $newProposition
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=12
       local.get $5
       call $src/as/assembly/Proposition/Proposition#getCells
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=4
       local.get $5
       call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
       drop
      end
      br $for-continue|0
     end
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $newProposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#push
     drop
     i32.const 1
     local.set $changed
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $changed
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $src/as/assembly/Solver/Solver#createNewPropositions (param $this i32)
  (local $revealedCells i32)
  (local $i i32)
  (local $cell i32)
  (local $4 i32)
  (local $5 i32)
  (local $adjCells i32)
  (local $7 i32)
  (local $8 i32)
  (local $adjCellsIds i32)
  (local $i|10 i32)
  (local $newProposition i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $src/as/assembly/Solver/Solver#get:board
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $src/as/assembly/Board/Board#getRevealedCells
  local.tee $revealedCells
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $revealedCells
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $revealedCells
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $i
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.tee $cell
    i32.store offset=12
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/Solver/Solver#get:propositionsSolver
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 10
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $4
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=24
    local.get $4
    i32.const 0
    local.get $cell
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/models/Cell/Cell#get:_id
    call $~lib/array/Array<i32>#__set
    local.get $4
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
    drop
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/Solver/Solver#get:board
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $cell
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $src/as/assembly/Board/Board#getAdjacentCells
    local.tee $adjCells
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 2
    i32.const 10
    i32.const 2272
    call $~lib/rt/__newArray
    local.tee $adjCellsIds
    i32.store offset=32
    i32.const 0
    local.set $i|10
    loop $for-loop|1
     local.get $i|10
     local.get $adjCells
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
     i32.lt_s
     if
      local.get $adjCellsIds
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $adjCells
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=16
      local.get $14
      local.get $i|10
      call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $src/as/assembly/models/Cell/Cell#get:_id
      call $~lib/array/Array<i32>#push
      drop
      local.get $i|10
      i32.const 1
      i32.add
      local.set $i|10
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $cell
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/models/Cell/Cell#get:_id
    i32.const 10
    call $~lib/number/I32#toString
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $adjCellsIds
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    local.get $cell
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/models/Cell/Cell#get:minesCount
    call $src/as/assembly/Proposition/Proposition#constructor
    local.tee $newProposition
    i32.store offset=36
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=16
    local.get $14
    call $src/as/assembly/Solver/Solver#get:propositionsSolver
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 12
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $12
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.load offset=4
    local.tee $13
    i32.store offset=44
    local.get $12
    i32.const 0
    local.get $newProposition
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
    local.get $12
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownSafeCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownMineCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Solver/Solver#checkMainPropositionAddition (param $this i32) (result i32)
  (local $totalCells i32)
  (local $initialPropositionCells i32)
  (local $i i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/as/assembly/Solver/Solver#get:board
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/as/assembly/Board/Board#get:properties
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:height
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/as/assembly/Solver/Solver#get:board
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/as/assembly/Board/Board#get:properties
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
  i32.mul
  local.set $totalCells
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $src/as/assembly/Solver/Solver#get:addedMainProposition
  i32.eqz
  if (result i32)
   local.get $totalCells
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $src/as/assembly/Solver/Solver#get:propositionsSolver
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownSafeCellsIds
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<i32>#get:length
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $src/as/assembly/Solver/Solver#get:propositionsSolver
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownMineCellsIds
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.add
   i32.sub
   i32.const 10
   i32.le_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $totalCells
   call $~lib/array/Array<i32>#constructor
   local.tee $initialPropositionCells
   i32.store offset=12
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $src/as/assembly/Solver/Solver#get:board
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $src/as/assembly/Board/Board#get:cells
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
    i32.lt_s
    if
     local.get $initialPropositionCells
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=20
     local.get $6
     call $src/as/assembly/Solver/Solver#get:board
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=16
     local.get $6
     call $src/as/assembly/Board/Board#get:cells
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $i
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     call $src/as/assembly/models/Cell/Cell#get:_id
     call $~lib/array/Array<i32>#push
     drop
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 1
   call $src/as/assembly/Solver/Solver#set:addedMainProposition
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $src/as/assembly/Solver/Solver#get:propositionsSolver
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 12
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store offset=28
   local.get $4
   i32.const 0
   i32.const 0
   i32.const 4240
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   local.get $initialPropositionCells
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=36
   local.get $6
   call $src/as/assembly/Solver/Solver#get:board
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=32
   local.get $6
   call $src/as/assembly/Board/Board#get:properties
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=20
   local.get $6
   call $src/as/assembly/models/BoardProperties/BoardProperties#get:mines
   call $src/as/assembly/Proposition/Proposition#constructor
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
   local.get $4
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#removedKnownCellsFromPropositions (param $this i32) (result i32)
  (local $result i32)
  (local $i i32)
  (local $proposition i32)
  (local $satisfiedCells i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.set $result
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.tee $proposition
    i32.store offset=8
    local.get $proposition
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $src/as/assembly/Proposition/Proposition#isSatisfied
    if
     global.get $~lib/memory/__stack_pointer
     local.get $proposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $src/as/assembly/Proposition/Proposition#getCells
     local.tee $satisfiedCells
     i32.store offset=12
     local.get $proposition
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $src/as/assembly/Proposition/Proposition#hasNoMine
     if
      local.get $this
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      local.get $satisfiedCells
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
      if (result i32)
       i32.const 1
      else
       local.get $result
      end
      local.set $result
     else
      local.get $this
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      local.get $satisfiedCells
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
      if (result i32)
       i32.const 1
      else
       local.get $result
      end
      local.set $result
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:buckets
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:bucketsMask
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.0 (result i32)
   i32.const 12
   br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.0
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entries
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCapacity
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesOffset
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#substring (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $finalStart i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $finalEnd i32)
  (local $14 i32)
  (local $15 i32)
  (local $fromPos i32)
  (local $17 i32)
  (local $18 i32)
  (local $toPos i32)
  (local $size i32)
  (local $out i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store
  local.get $22
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $finalStart
  local.get $end
  local.tee $9
  i32.const 0
  local.tee $10
  local.get $9
  local.get $10
  i32.gt_s
  select
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $finalEnd
  local.get $finalStart
  local.tee $14
  local.get $finalEnd
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $fromPos
  local.get $finalStart
  local.tee $17
  local.get $finalEnd
  local.tee $18
  local.get $17
  local.get $18
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $toPos
  local.get $toPos
  local.get $fromPos
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 752
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $fromPos
  i32.eqz
  if (result i32)
   local.get $toPos
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $fromPos
  i32.add
  local.get $size
  memory.copy
  local.get $out
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $~lib/util/string/joinIntegerArray<i32> (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $value i32)
  (local $sepLen i32)
  (local $estLen i32)
  (local $result i32)
  (local $offset i32)
  (local $value|9 i32)
  (local $i i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 752
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   local.get $dataStart
   i32.load
   local.set $value
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.le_u
   drop
   local.get $value
   i32.const 10
   call $~lib/util/number/itoa32
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $separator
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  call $~lib/string/String#get:length
  local.set $sepLen
  i32.const 11
  local.get $sepLen
  i32.add
  local.get $lastIndex
  i32.mul
  i32.const 11
  i32.add
  local.set $estLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=4
  i32.const 0
  local.set $offset
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $lastIndex
   i32.lt_s
   if
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $value|9
    local.get $offset
    local.get $result
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $value|9
    call $~lib/util/number/itoa_buffered<i32>
    i32.add
    local.set $offset
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $value|9
  local.get $offset
  local.get $result
  local.get $offset
  i32.const 1
  i32.shl
  i32.add
  local.get $value|9
  call $~lib/util/number/itoa_buffered<i32>
  i32.add
  local.set $offset
  local.get $estLen
  local.get $offset
  i32.gt_s
  if
   local.get $result
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $11
   i32.const 0
   local.get $offset
   call $~lib/string/String#substring
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $result
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/array/Array<i32>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/util/string/joinIntegerArray<i32>
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<i32>#toString (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 192
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/array/Array<i32>#join
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#hash (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 4336
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/array/Array<i32>#sort
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#toString
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $2
  i32.store offset=20
  i32.const 4304
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4304
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 2
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4304
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 752
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $key i32) (result i32)
  (local $key|1 i32)
  (local $h i32)
  (local $len i32)
  (local $pos i32)
  (local $s1 i32)
  (local $s2 i32)
  (local $s3 i32)
  (local $s4 i32)
  (local $end i32)
  (local $h|10 i32)
  (local $key|11 i32)
  (local $h|12 i32)
  (local $key|13 i32)
  (local $h|14 i32)
  (local $key|15 i32)
  (local $h|16 i32)
  (local $key|17 i32)
  (local $end|18 i32)
  (local $19 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $key
   local.tee $key|1
   i32.store
   local.get $key|1
   i32.const 0
   i32.eq
   if
    i32.const 0
    br $~lib/util/hash/hashStr|inlined.0
   end
   local.get $key|1
   local.set $19
   global.get $~lib/memory/__stack_pointer
   local.get $19
   i32.store offset=4
   local.get $19
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $h
   local.get $h
   local.set $len
   local.get $key|1
   local.set $pos
   local.get $len
   i32.const 16
   i32.ge_u
   if
    i32.const 0
    i32.const -1640531535
    i32.add
    i32.const -2048144777
    i32.add
    local.set $s1
    i32.const 0
    i32.const -2048144777
    i32.add
    local.set $s2
    i32.const 0
    local.set $s3
    i32.const 0
    i32.const -1640531535
    i32.sub
    local.set $s4
    local.get $len
    local.get $pos
    i32.add
    i32.const 16
    i32.sub
    local.set $end
    loop $while-continue|0
     local.get $pos
     local.get $end
     i32.le_u
     if
      block $~lib/util/hash/mix|inlined.0 (result i32)
       local.get $s1
       local.set $h|10
       local.get $pos
       i32.load
       local.set $key|11
       local.get $h|10
       local.get $key|11
       i32.const -2048144777
       i32.mul
       i32.add
       i32.const 13
       i32.rotl
       i32.const -1640531535
       i32.mul
       br $~lib/util/hash/mix|inlined.0
      end
      local.set $s1
      block $~lib/util/hash/mix|inlined.1 (result i32)
       local.get $s2
       local.set $h|12
       local.get $pos
       i32.load offset=4
       local.set $key|13
       local.get $h|12
       local.get $key|13
       i32.const -2048144777
       i32.mul
       i32.add
       i32.const 13
       i32.rotl
       i32.const -1640531535
       i32.mul
       br $~lib/util/hash/mix|inlined.1
      end
      local.set $s2
      block $~lib/util/hash/mix|inlined.2 (result i32)
       local.get $s3
       local.set $h|14
       local.get $pos
       i32.load offset=8
       local.set $key|15
       local.get $h|14
       local.get $key|15
       i32.const -2048144777
       i32.mul
       i32.add
       i32.const 13
       i32.rotl
       i32.const -1640531535
       i32.mul
       br $~lib/util/hash/mix|inlined.2
      end
      local.set $s3
      block $~lib/util/hash/mix|inlined.3 (result i32)
       local.get $s4
       local.set $h|16
       local.get $pos
       i32.load offset=12
       local.set $key|17
       local.get $h|16
       local.get $key|17
       i32.const -2048144777
       i32.mul
       i32.add
       i32.const 13
       i32.rotl
       i32.const -1640531535
       i32.mul
       br $~lib/util/hash/mix|inlined.3
      end
      local.set $s4
      local.get $pos
      i32.const 16
      i32.add
      local.set $pos
      br $while-continue|0
     end
    end
    local.get $h
    local.get $s1
    i32.const 1
    i32.rotl
    local.get $s2
    i32.const 7
    i32.rotl
    i32.add
    local.get $s3
    i32.const 12
    i32.rotl
    i32.add
    local.get $s4
    i32.const 18
    i32.rotl
    i32.add
    i32.add
    local.set $h
   else
    local.get $h
    i32.const 0
    i32.const 374761393
    i32.add
    i32.add
    local.set $h
   end
   local.get $key|1
   local.get $len
   i32.add
   i32.const 4
   i32.sub
   local.set $end|18
   loop $while-continue|1
    local.get $pos
    local.get $end|18
    i32.le_u
    if
     local.get $h
     local.get $pos
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     local.set $h
     local.get $h
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $h
     local.get $pos
     i32.const 4
     i32.add
     local.set $pos
     br $while-continue|1
    end
   end
   local.get $key|1
   local.get $len
   i32.add
   local.set $end|18
   loop $while-continue|2
    local.get $pos
    local.get $end|18
    i32.lt_u
    if
     local.get $h
     local.get $pos
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     local.set $h
     local.get $h
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $h
     local.get $pos
     i32.const 1
     i32.add
     local.set $pos
     br $while-continue|2
    end
   end
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hashStr|inlined.0
  end
  local.set $19
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $19
  return
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $taggedNext i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:buckets
  local.get $hashCode
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:bucketsMask
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $entry
  loop $while-continue|0
   local.get $entry
   if
    local.get $entry
    call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:taggedNext
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:key
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $key
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $entry
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.1 (result i32)
   i32.const 12
   br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.1
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store offset=4
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entries
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset
  block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.2 (result i32)
   i32.const 12
   br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.2
  end
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     global.get $~lib/memory/__stack_pointer
     local.get $oldEntry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:key
     local.tee $oldEntryKey
     i32.store offset=12
     local.get $newEntry
     local.get $oldEntryKey
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=8
     local.get $14
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:key
     local.get $newEntry
     local.get $oldEntry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:value
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=8
     local.get $14
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:value
     local.get $oldEntryKey
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=8
     local.get $14
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store
     local.get $newPtr
     block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.3 (result i32)
      i32.const 12
      br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.3
     end
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.4 (result i32)
     i32.const 12
     br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.4
    end
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBuckets
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=16
  local.get $14
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:buckets
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBucketsMask
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:bucketsMask
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntries
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=16
  local.get $14
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entries
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntriesCapacity
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCapacity
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=16
  local.get $14
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCount
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $key
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/util/hash/HASH<~lib/string/String>
  local.set $hashCode
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $key
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $hashCode
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:value
   i32.const 1
   drop
   local.get $this
   local.get $value
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCapacity
   i32.eq
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCount
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCapacity
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:bucketsMask
    else
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:bucketsMask
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entries
   local.tee $entries
   i32.store offset=8
   local.get $entries
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesOffset
   local.get $6
   block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.5 (result i32)
    i32.const 12
    br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.5
   end
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:key
   i32.const 1
   drop
   local.get $this
   local.get $key
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $entry
   local.get $value
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:value
   i32.const 1
   drop
   local.get $this
   local.get $value
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesCount
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:entriesCount
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:buckets
   local.get $hashCode
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:bucketsMask
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load
   call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $entry i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entries
  local.set $start
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   if
    local.get $start
    local.get $i
    block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.6 (result i32)
     i32.const 12
     br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.6
    end
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $length
     local.tee $7
     i32.const 1
     i32.add
     local.set $length
     local.get $7
     local.get $entry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:value
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=8
     local.get $8
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $length
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#set:length
  local.get $values
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#satisfiedPropositionsRemoved (param $this i32) (result i32)
  (local $previousLength i32)
  (local $unstatisfiedPropositions i32)
  (local $i i32)
  (local $proposition i32)
  (local $cells i32)
  (local $propositionMap i32)
  (local $i|7 i32)
  (local $result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
  local.set $previousLength
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#removedKnownCellsFromPropositions
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#constructor
  local.tee $unstatisfiedPropositions
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=4
   local.get $9
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=4
    local.get $9
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    local.get $i
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.tee $proposition
    i32.store offset=12
    local.get $proposition
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    call $src/as/assembly/Proposition/Proposition#isSatisfied
    i32.eqz
    if (result i32)
     local.get $proposition
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $src/as/assembly/Proposition/Proposition#getCells
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     call $~lib/array/Array<i32>#get:length
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $unstatisfiedPropositions
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $proposition
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#push
     drop
    else
     global.get $~lib/memory/__stack_pointer
     local.get $proposition
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     call $src/as/assembly/Proposition/Proposition#getCells
     local.tee $cells
     i32.store offset=16
     local.get $proposition
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     call $src/as/assembly/Proposition/Proposition#hasNoMine
     if
      local.get $this
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      local.get $9
      local.get $cells
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
      drop
     else
      local.get $this
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      local.get $9
      local.get $cells
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
      drop
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#constructor
  local.tee $propositionMap
  i32.store offset=20
  i32.const 0
  local.set $i|7
  loop $for-loop|1
   local.get $i|7
   local.get $unstatisfiedPropositions
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $propositionMap
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    local.get $unstatisfiedPropositions
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=32
    local.get $9
    local.get $i|7
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=28
    local.get $9
    call $src/as/assembly/Proposition/Proposition#hash
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=4
    local.get $9
    local.get $unstatisfiedPropositions
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=28
    local.get $9
    local.get $i|7
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=24
    local.get $9
    call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#set
    drop
    local.get $i|7
    i32.const 1
    i32.add
    local.set $i|7
    br $for-loop|1
   end
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $propositionMap
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=24
  local.get $9
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#set:propositions
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
  local.get $previousLength
  i32.ne
  local.set $result
  local.get $result
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $src/as/assembly/Proposition/Proposition#getOverlappingCells (param $this i32) (param $otherProposition i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $overlappingCells i32)
  (local $i i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4400
  call $~lib/rt/__newArray
  local.tee $overlappingCells
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $otherProposition
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=12
    local.get $6
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    if
     local.get $overlappingCells
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=12
     local.get $6
     call $src/as/assembly/Proposition/Proposition#get:cellsIndex
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $overlappingCells
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $src/as/assembly/Proposition/Proposition#isSubSetOf (param $this i32) (param $otherProposition i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $otherProposition
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:length
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:length
  i32.gt_s
  if (result i32)
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $otherProposition
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   call $src/as/assembly/Proposition/Proposition#getOverlappingCells
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<i32>#get:length
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<i32>#get:length
   i32.eq
  else
   i32.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/as/assembly/Proposition/Proposition#subtractSubset (param $this i32) (param $otherProposition i32) (result i32)
  (local $minesDiff i32)
  (local $3 i32)
  (local $4 i32)
  (local $cellsDiff i32)
  (local $i i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  local.get $otherProposition
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  i32.sub
  local.set $minesDiff
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4432
  call $~lib/rt/__newArray
  local.tee $cellsDiff
  i32.store offset=4
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=8
   local.get $9
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $otherProposition
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=12
    local.get $9
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     local.get $cellsDiff
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $this
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=12
     local.get $9
     call $src/as/assembly/Proposition/Proposition#get:cellsIndex
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=8
     local.get $9
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  call $src/as/assembly/Proposition/Proposition#get:origin
  local.tee $7
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $otherProposition
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  call $src/as/assembly/Proposition/Proposition#get:origin
  local.tee $8
  i32.store offset=20
  i32.const 4560
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  i32.const 1
  local.get $7
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=24
  local.get $9
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4560
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  i32.const 3
  local.get $8
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=24
  local.get $9
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4560
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  i32.const 752
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=24
  local.get $9
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $cellsDiff
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  local.get $minesDiff
  call $src/as/assembly/Proposition/Proposition#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $src/as/assembly/Proposition/Proposition#getMines (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#getCellsExcluding (param $this i32) (param $cells i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $result i32)
  (local $i i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4608
  call $~lib/rt/__newArray
  local.tee $result
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $src/as/assembly/Proposition/Proposition#get:cellsIndex
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $cells
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=12
    local.get $6
    call $src/as/assembly/Proposition/Proposition#get:cellsIndex
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    local.get $i
    call $~lib/array/Array<i32>#__get
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if
     local.get $result
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=12
     local.get $6
     call $src/as/assembly/Proposition/Proposition#get:cellsIndex
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#propositionsCompared (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $newPropositions i32)
  (local $a i32)
  (local $b i32)
  (local $first i32)
  (local $second i32)
  (local $overlappingCells i32)
  (local $remainingCells i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 12
  i32.const 4368
  call $~lib/rt/__newArray
  local.tee $newPropositions
  i32.store
  i32.const 0
  local.set $a
  loop $for-loop|0
   local.get $a
   local.get $this
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $10
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    i32.const 0
    local.set $b
    loop $for-loop|1
     local.get $b
     local.get $this
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store offset=8
     local.get $10
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store offset=4
     local.get $10
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
     i32.lt_s
     if
      block $for-continue|1
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=8
       local.get $10
       call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       local.get $10
       local.get $a
       call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
       local.tee $first
       i32.store offset=12
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=8
       local.get $10
       call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       local.get $10
       local.get $b
       call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
       local.tee $second
       i32.store offset=16
       local.get $first
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=8
       local.get $10
       call $src/as/assembly/Proposition/Proposition#getCells
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       local.get $10
       call $~lib/array/Array<i32>#get:length
       i32.const 0
       i32.le_s
       if (result i32)
        i32.const 1
       else
        local.get $second
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        local.get $10
        call $src/as/assembly/Proposition/Proposition#getCells
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=4
        local.get $10
        call $~lib/array/Array<i32>#get:length
        i32.const 0
        i32.le_s
       end
       if
        br $for-continue|1
       end
       local.get $second
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       local.get $10
       local.get $first
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=8
       local.get $10
       call $src/as/assembly/Proposition/Proposition#isSubSetOf
       if
        local.get $newPropositions
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=4
        local.get $10
        local.get $first
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=20
        local.get $10
        local.get $second
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=24
        local.get $10
        call $src/as/assembly/Proposition/Proposition#subtractSubset
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        local.get $10
        call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#push
        drop
       else
        local.get $first
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=4
        local.get $10
        call $src/as/assembly/Proposition/Proposition#getMines
        local.get $second
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=4
        local.get $10
        call $src/as/assembly/Proposition/Proposition#getMines
        i32.gt_s
        if
         global.get $~lib/memory/__stack_pointer
         local.get $first
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=4
         local.get $10
         local.get $second
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=8
         local.get $10
         call $src/as/assembly/Proposition/Proposition#getOverlappingCells
         local.tee $overlappingCells
         i32.store offset=28
         local.get $first
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=8
         local.get $10
         call $src/as/assembly/Proposition/Proposition#getCells
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=4
         local.get $10
         call $~lib/array/Array<i32>#get:length
         local.get $overlappingCells
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=4
         local.get $10
         call $~lib/array/Array<i32>#get:length
         i32.sub
         local.get $first
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=4
         local.get $10
         call $src/as/assembly/Proposition/Proposition#getMines
         local.get $second
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store offset=4
         local.get $10
         call $src/as/assembly/Proposition/Proposition#getMines
         i32.sub
         i32.eq
         if
          global.get $~lib/memory/__stack_pointer
          local.get $first
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=4
          local.get $10
          local.get $overlappingCells
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=8
          local.get $10
          call $src/as/assembly/Proposition/Proposition#getCellsExcluding
          local.tee $remainingCells
          i32.store offset=32
          local.get $this
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=4
          local.get $10
          local.get $remainingCells
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=8
          local.get $10
          call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
          drop
         end
        end
       end
      end
      local.get $b
      i32.const 1
      i32.add
      local.set $b
      br $for-loop|1
     end
    end
    local.get $a
    i32.const 1
    i32.add
    local.set $a
    br $for-loop|0
   end
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $newPropositions
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#run (param $this i32)
  (local $changed i32)
  (local $previousKnownCells i32)
  (local $currentKnownCells i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $changed
  block $while-break|0
   loop $while-continue|0
    i32.const 1
    if
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $~lib/array/Array<i32>#get:length
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $~lib/array/Array<i32>#get:length
     i32.add
     local.set $previousKnownCells
     i32.const 0
     local.set $changed
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#removedKnownCellsFromPropositions
     if (result i32)
      i32.const 1
     else
      local.get $changed
     end
     local.set $changed
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#satisfiedPropositionsRemoved
     if (result i32)
      i32.const 1
     else
      local.get $changed
     end
     local.set $changed
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#propositionsCompared
     if (result i32)
      i32.const 1
     else
      local.get $changed
     end
     local.set $changed
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#satisfiedPropositionsRemoved
     if (result i32)
      i32.const 1
     else
      local.get $changed
     end
     local.set $changed
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:safeCellsIds
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $~lib/array/Array<i32>#get:length
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:mineCellsIds
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     call $~lib/array/Array<i32>#get:length
     i32.add
     local.set $currentKnownCells
     local.get $changed
     i32.eqz
     if (result i32)
      local.get $previousKnownCells
      local.get $currentKnownCells
      i32.eq
     else
      i32.const 0
     end
     if
      br $while-break|0
     end
     br $while-continue|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#constructor (param $this i32) (param $propositions i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $uniqueCells i32)
  (local $i i32)
  (local $proposition i32)
  (local $propositionCells i32)
  (local $j i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:originalPropositions
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:cells
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownMines
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownSafes
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  i32.const 2
  i32.const 12
  i32.const 4640
  call $~lib/rt/__newArray
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=8
  local.get $15
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:originalPropositions
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4672
  call $~lib/rt/__newArray
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=8
  local.get $15
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownMines
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4704
  call $~lib/rt/__newArray
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=8
  local.get $15
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:knownSafes
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 4736
  call $~lib/rt/__newArray
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=8
  local.get $15
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:cells
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  local.tee $uniqueCells
  i32.store offset=12
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $propositions
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store offset=4
   local.get $15
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $propositions
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=8
    local.get $15
    local.get $i
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=4
    local.get $15
    call $src/as/assembly/Proposition/Proposition#clone
    local.tee $proposition
    i32.store offset=16
    local.get $this
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=20
    local.get $15
    call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:originalPropositions
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=4
    local.get $15
    local.get $proposition
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=8
    local.get $15
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#push
    drop
    global.get $~lib/memory/__stack_pointer
    local.get $proposition
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=4
    local.get $15
    call $src/as/assembly/Proposition/Proposition#getCells
    local.tee $propositionCells
    i32.store offset=24
    i32.const 0
    local.set $j
    loop $for-loop|1
     local.get $j
     local.get $propositionCells
     local.set $15
     global.get $~lib/memory/__stack_pointer
     local.get $15
     i32.store offset=4
     local.get $15
     call $~lib/array/Array<i32>#get:length
     i32.lt_s
     if
      local.get $uniqueCells
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store offset=4
      local.get $15
      local.get $propositionCells
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store offset=8
      local.get $15
      local.get $j
      call $~lib/array/Array<i32>#__get
      call $~lib/set/Set<i32>#add
      drop
      local.get $j
      i32.const 1
      i32.add
      local.set $j
      br $for-loop|1
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  local.get $uniqueCells
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=32
  local.get $15
  call $~lib/set/Set<i32>#values
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=20
  local.get $15
  i32.const 4768
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=28
  local.get $15
  call $~lib/array/Array<i32>#sort
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=8
  local.get $15
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#set:cells
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#getPropositions (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Proposition/Proposition#isContradictory (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length
  i32.gt_s
  if (result i32)
   i32.const 1
  else
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $src/as/assembly/Proposition/Proposition#get:numberOfMines
   i32.const 0
   i32.lt_s
  end
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/PropositionsSolver/PropositionsSolver#hasContradictions (param $this i32) (result i32)
  (local $a i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  local.set $a
  loop $for-loop|0
   local.get $a
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#get:propositions
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $2
    local.get $a
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    call $src/as/assembly/Proposition/Proposition#isContradictory
    if
     i32.const 1
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    local.get $a
    i32.const 1
    i32.add
    local.set $a
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#findContradictions (param $this i32) (result i32)
  (local $i i32)
  (local $currentCell i32)
  (local $ps i32)
  (local $4 i32)
  (local $5 i32)
  (local $i|6 i32)
  (local $currentCell|7 i32)
  (local $ps|8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=4
   local.get $11
   call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:cells
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $11
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:cells
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    local.get $i
    call $~lib/array/Array<i32>#__get
    local.set $currentCell
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#constructor
    local.tee $ps
    i32.store offset=8
    local.get $ps
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    local.get $this
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:originalPropositions
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions
    drop
    local.get $ps
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 10
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $4
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=20
    local.get $4
    i32.const 0
    local.get $currentCell
    call $~lib/array/Array<i32>#__set
    local.get $4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
    drop
    local.get $ps
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#run
    local.get $ps
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#hasContradictions
    if
     local.get $this
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=4
     local.get $11
     call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownSafes
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     local.get $currentCell
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $i|6
  loop $for-loop|1
   local.get $i|6
   local.get $this
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=4
   local.get $11
   call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:cells
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $11
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:cells
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    local.get $i|6
    call $~lib/array/Array<i32>#__get
    local.set $currentCell|7
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#constructor
    local.tee $ps|8
    i32.store offset=24
    local.get $ps|8
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    local.get $this
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:originalPropositions
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addPropositions
    drop
    local.get $ps|8
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 10
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $9
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load offset=4
    local.tee $10
    i32.store offset=32
    local.get $9
    i32.const 0
    local.get $currentCell|7
    call $~lib/array/Array<i32>#__set
    local.get $9
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
    drop
    local.get $ps|8
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#run
    local.get $ps|8
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    call $src/as/assembly/PropositionsSolver/PropositionsSolver#hasContradictions
    if
     local.get $this
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=4
     local.get $11
     call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownMines
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     local.get $currentCell|7
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i|6
    i32.const 1
    i32.add
    local.set $i|6
    br $for-loop|1
   end
  end
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownMines
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  call $~lib/array/Array<i32>#get:length
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownSafes
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  call $~lib/array/Array<i32>#get:length
  i32.add
  i32.const 0
  i32.gt_s
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownMineCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownMines
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownSafeCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#get:knownSafes
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Solver/Solver#run (param $this i32)
  (local $ps i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/as/assembly/Solver/Solver#createNewPropositions
  block $while-break|0
   loop $while-continue|0
    i32.const 1
    if
     local.get $this
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $src/as/assembly/Solver/Solver#checkMainPropositionAddition
     drop
     local.get $this
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     call $src/as/assembly/Solver/Solver#get:propositionsSolver
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#run
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     local.get $this
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $2
     call $src/as/assembly/Solver/Solver#get:propositionsSolver
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     call $src/as/assembly/PropositionsSolver/PropositionsSolver#getPropositions
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $src/as/assembly/HypothesisRunner/HypothesisRunner#constructor
     local.tee $ps
     i32.store offset=12
     local.get $ps
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $src/as/assembly/HypothesisRunner/HypothesisRunner#findContradictions
     if
      local.get $this
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $2
      call $src/as/assembly/Solver/Solver#get:propositionsSolver
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $ps
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $2
      call $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownMineCellsIds
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $2
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addMineCells
      drop
      local.get $this
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $2
      call $src/as/assembly/Solver/Solver#get:propositionsSolver
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $ps
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $2
      call $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownSafeCellsIds
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $2
      call $src/as/assembly/PropositionsSolver/PropositionsSolver#addSafeCells
      drop
     else
      br $while-break|0
     end
     br $while-continue|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/Solver/Solver#getKnownSafeCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Solver/Solver#get:propositionsSolver
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownSafeCellsIds
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Solver/Solver#getKnownMineCellsIds (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Solver/Solver#get:propositionsSolver
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#getKnownMineCellsIds
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownMineCellsIds
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownSafeCellsIds
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 752
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/as/assembly/index/update (param $stringifiedBoard i32) (result i32)
  (local $data i32)
  (local $initializeDefaultValues i32)
  (local $type i32)
  (local $data|4 i32)
  (local $initializeDefaultValues|5 i32)
  (local $schema i32)
  (local $this i32)
  (local $key i32)
  (local $isKey i32)
  (local $depth i32)
  (local $outerLoopIndex i32)
  (local $data|12 i32)
  (local $pos i32)
  (local $char i32)
  (local $arrayValueIndex i32)
  (local $data|16 i32)
  (local $pos|17 i32)
  (local $char|18 i32)
  (local $objectValueIndex i32)
  (local $data|20 i32)
  (local $pos|21 i32)
  (local $char|22 i32)
  (local $escaping i32)
  (local $stringValueIndex i32)
  (local $data|25 i32)
  (local $pos|26 i32)
  (local $char|27 i32)
  (local $data|28 i32)
  (local $pos|29 i32)
  (local $data|30 i32)
  (local $pos|31 i32)
  (local $data|32 i32)
  (local $pos|33 i32)
  (local $data|34 i32)
  (local $pos|35 i32)
  (local $data|36 i32)
  (local $pos|37 i32)
  (local $data|38 i32)
  (local $pos|39 i32)
  (local $data|40 i32)
  (local $pos|41 i32)
  (local $numberValueIndex i32)
  (local $data|43 i32)
  (local $pos|44 i32)
  (local $char|45 i32)
  (local $board i32)
  (local $safeCells i32)
  (local $mineCells i32)
  (local $49 i32)
  (local $response i32)
  (local $data|51 i32)
  (local $this|52 i32)
  (local $53 i32)
  (local $data|54 i32)
  (local $55 i32)
  (local $data|56 i32)
  (local $57 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 136
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 136
  memory.fill
  global.get $~lib/memory/__stack_pointer
  block $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/Board/Board>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $stringifiedBoard
   local.tee $data
   i32.store
   i32.const 0
   local.set $initializeDefaultValues
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   block $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/Board/Board>|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=4
    local.get $57
    call $~lib/string/String#trimStart
    local.tee $data|4
    i32.store offset=8
    local.get $initializeDefaultValues
    local.set $initializeDefaultValues|5
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $schema
    i32.store offset=12
    local.get $initializeDefaultValues|5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $schema
     local.tee $this
     i32.store offset=16
    end
    global.get $~lib/memory/__stack_pointer
    call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
    local.tee $key
    i32.store offset=20
    i32.const 0
    local.set $isKey
    i32.const 0
    local.set $depth
    i32.const 1
    local.set $outerLoopIndex
    loop $for-loop|0
     local.get $outerLoopIndex
     local.get $data|4
     local.set $57
     global.get $~lib/memory/__stack_pointer
     local.get $57
     i32.store offset=4
     local.get $57
     call $~lib/string/String#get:length
     i32.const 1
     i32.sub
     i32.lt_s
     if
      block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.0 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $data|4
       local.tee $data|12
       i32.store offset=24
       local.get $outerLoopIndex
       local.set $pos
       local.get $data|12
       local.get $pos
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.0
      end
      local.set $char
      local.get $char
      i32.const 91
      i32.eq
      if
       local.get $outerLoopIndex
       local.set $arrayValueIndex
       block $for-break1
        loop $for-loop|1
         local.get $arrayValueIndex
         local.get $data|4
         local.set $57
         global.get $~lib/memory/__stack_pointer
         local.get $57
         i32.store offset=4
         local.get $57
         call $~lib/string/String#get:length
         i32.const 1
         i32.sub
         i32.lt_s
         if
          block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.1 (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $data|4
           local.tee $data|16
           i32.store offset=28
           local.get $arrayValueIndex
           local.set $pos|17
           local.get $data|16
           local.get $pos|17
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.1
          end
          local.set $char|18
          local.get $char|18
          i32.const 91
          i32.eq
          if
           local.get $depth
           i32.const 1
           i32.add
           local.set $depth
          else
           local.get $char|18
           i32.const 93
           i32.eq
           if
            local.get $depth
            i32.const 1
            i32.sub
            local.set $depth
            local.get $depth
            i32.const 0
            i32.eq
            if
             local.get $arrayValueIndex
             i32.const 1
             i32.add
             local.set $arrayValueIndex
             local.get $schema
             local.set $57
             global.get $~lib/memory/__stack_pointer
             local.get $57
             i32.store offset=4
             local.get $57
             local.get $key
             local.set $57
             global.get $~lib/memory/__stack_pointer
             local.get $57
             i32.store offset=32
             local.get $57
             local.get $data|4
             local.set $57
             global.get $~lib/memory/__stack_pointer
             local.get $57
             i32.store offset=36
             local.get $57
             local.get $outerLoopIndex
             local.get $arrayValueIndex
             local.get $initializeDefaultValues|5
             call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             local.get $arrayValueIndex
             local.set $outerLoopIndex
             i32.const 0
             local.set $isKey
             br $for-break1
            end
           end
          end
          local.get $arrayValueIndex
          i32.const 1
          i32.add
          local.set $arrayValueIndex
          br $for-loop|1
         end
        end
       end
      else
       local.get $char
       i32.const 123
       i32.eq
       if
        local.get $outerLoopIndex
        local.set $objectValueIndex
        block $for-break2
         loop $for-loop|2
          local.get $objectValueIndex
          local.get $data|4
          local.set $57
          global.get $~lib/memory/__stack_pointer
          local.get $57
          i32.store offset=4
          local.get $57
          call $~lib/string/String#get:length
          i32.const 1
          i32.sub
          i32.lt_s
          if
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.27 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|20
            i32.store offset=40
            local.get $objectValueIndex
            local.set $pos|21
            local.get $data|20
            local.get $pos|21
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.27
           end
           local.set $char|22
           local.get $char|22
           i32.const 123
           i32.eq
           if
            local.get $depth
            i32.const 1
            i32.add
            local.set $depth
           else
            local.get $char|22
            i32.const 125
            i32.eq
            if
             local.get $depth
             i32.const 1
             i32.sub
             local.set $depth
             local.get $depth
             i32.const 0
             i32.eq
             if
              local.get $objectValueIndex
              i32.const 1
              i32.add
              local.set $objectValueIndex
              local.get $schema
              local.set $57
              global.get $~lib/memory/__stack_pointer
              local.get $57
              i32.store offset=4
              local.get $57
              local.get $key
              local.set $57
              global.get $~lib/memory/__stack_pointer
              local.get $57
              i32.store offset=32
              local.get $57
              local.get $data|4
              local.set $57
              global.get $~lib/memory/__stack_pointer
              local.get $57
              i32.store offset=36
              local.get $57
              local.get $outerLoopIndex
              local.get $objectValueIndex
              local.get $initializeDefaultValues|5
              call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              local.get $objectValueIndex
              local.set $outerLoopIndex
              i32.const 0
              local.set $isKey
              br $for-break2
             end
            end
           end
           local.get $objectValueIndex
           i32.const 1
           i32.add
           local.set $objectValueIndex
           br $for-loop|2
          end
         end
        end
       else
        local.get $char
        i32.const 34
        i32.eq
        if
         i32.const 0
         local.set $escaping
         local.get $outerLoopIndex
         i32.const 1
         i32.add
         local.tee $outerLoopIndex
         local.set $stringValueIndex
         block $for-break3
          loop $for-loop|3
           local.get $stringValueIndex
           local.get $data|4
           local.set $57
           global.get $~lib/memory/__stack_pointer
           local.get $57
           i32.store offset=4
           local.get $57
           call $~lib/string/String#get:length
           i32.const 1
           i32.sub
           i32.lt_s
           if
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.28 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|25
             i32.store offset=44
             local.get $stringValueIndex
             local.set $pos|26
             local.get $data|25
             local.get $pos|26
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.28
            end
            local.set $char|27
            local.get $char|27
            i32.const 92
            i32.eq
            if (result i32)
             local.get $escaping
             i32.eqz
            else
             i32.const 0
            end
            if
             i32.const 1
             local.set $escaping
            else
             local.get $char|27
             i32.const 34
             i32.eq
             if (result i32)
              local.get $escaping
              i32.eqz
             else
              i32.const 0
             end
             if
              local.get $isKey
              i32.const 0
              i32.eq
              if
               local.get $key
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=4
               local.get $57
               local.get $data|4
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=32
               local.get $57
               local.get $outerLoopIndex
               local.get $stringValueIndex
               call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
               i32.const 1
               local.set $isKey
              else
               local.get $schema
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=4
               local.get $57
               local.get $key
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=32
               local.get $57
               local.get $data|4
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=36
               local.get $57
               local.get $outerLoopIndex
               local.get $stringValueIndex
               local.get $initializeDefaultValues|5
               call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
               i32.const 0
               local.set $isKey
              end
              local.get $stringValueIndex
              i32.const 1
              i32.add
              local.tee $stringValueIndex
              local.set $outerLoopIndex
              br $for-break3
             end
             i32.const 0
             local.set $escaping
            end
            local.get $stringValueIndex
            i32.const 1
            i32.add
            local.set $stringValueIndex
            br $for-loop|3
           end
          end
         end
        else
         local.get $char
         i32.const 110
         i32.eq
         if
          local.get $schema
          local.set $57
          global.get $~lib/memory/__stack_pointer
          local.get $57
          i32.store offset=4
          local.get $57
          local.get $key
          local.set $57
          global.get $~lib/memory/__stack_pointer
          local.get $57
          i32.store offset=32
          local.get $57
          i32.const 96
          local.set $57
          global.get $~lib/memory/__stack_pointer
          local.get $57
          i32.store offset=36
          local.get $57
          i32.const 0
          i32.const 4
          local.get $initializeDefaultValues|5
          call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
          i32.const 0
          local.set $isKey
         else
          local.get $char
          i32.const 116
          i32.eq
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.29 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|28
            i32.store offset=48
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|29
            local.get $data|28
            local.get $pos|29
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.29
           end
           i32.const 114
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.30 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|30
            i32.store offset=52
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|31
            local.get $data|30
            local.get $pos|31
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.30
           end
           i32.const 117
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.31 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|32
            i32.store offset=56
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|33
            local.get $data|32
            local.get $pos|33
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.31
           end
           i32.const 101
           i32.eq
          else
           i32.const 0
          end
          if
           local.get $schema
           local.set $57
           global.get $~lib/memory/__stack_pointer
           local.get $57
           i32.store offset=4
           local.get $57
           local.get $key
           local.set $57
           global.get $~lib/memory/__stack_pointer
           local.get $57
           i32.store offset=32
           local.get $57
           i32.const 32
           local.set $57
           global.get $~lib/memory/__stack_pointer
           local.get $57
           i32.store offset=36
           local.get $57
           i32.const 0
           i32.const 4
           local.get $initializeDefaultValues|5
           call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $isKey
          else
           local.get $char
           i32.const 102
           i32.eq
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.32 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|34
             i32.store offset=60
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|35
             local.get $data|34
             local.get $pos|35
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.32
            end
            i32.const 1104
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=4
            local.get $57
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.33 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|36
             i32.store offset=64
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|37
             local.get $data|36
             local.get $pos|37
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.33
            end
            i32.const 1136
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=4
            local.get $57
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.34 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|38
             i32.store offset=68
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|39
             local.get $data|38
             local.get $pos|39
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.34
            end
            i32.const 1168
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=4
            local.get $57
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.35 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|40
             i32.store offset=72
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|41
             local.get $data|40
             local.get $pos|41
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.35
            end
            i32.const 101
            i32.eq
           else
            i32.const 0
           end
           if
            local.get $schema
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=4
            local.get $57
            local.get $key
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=32
            local.get $57
            i32.const 64
            local.set $57
            global.get $~lib/memory/__stack_pointer
            local.get $57
            i32.store offset=36
            local.get $57
            i32.const 0
            i32.const 5
            local.get $initializeDefaultValues|5
            call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $isKey
           else
            local.get $char
            i32.const 48
            i32.ge_s
            if (result i32)
             local.get $char
             i32.const 57
             i32.le_s
            else
             i32.const 0
            end
            if (result i32)
             i32.const 1
            else
             local.get $char
             i32.const 45
             i32.eq
            end
            if
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $numberValueIndex
             block $for-break4
              loop $for-loop|4
               local.get $numberValueIndex
               local.get $data|4
               local.set $57
               global.get $~lib/memory/__stack_pointer
               local.get $57
               i32.store offset=4
               local.get $57
               call $~lib/string/String#get:length
               i32.lt_s
               if
                block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.36 (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.get $data|4
                 local.tee $data|43
                 i32.store offset=76
                 local.get $numberValueIndex
                 local.set $pos|44
                 local.get $data|43
                 local.get $pos|44
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.36
                end
                local.set $char|45
                local.get $char|45
                i32.const 44
                i32.eq
                if (result i32)
                 i32.const 1
                else
                 local.get $char|45
                 i32.const 125
                 i32.eq
                end
                if (result i32)
                 i32.const 1
                else
                 local.get $char|45
                 call $~lib/util/string/isSpace
                end
                if
                 local.get $schema
                 local.set $57
                 global.get $~lib/memory/__stack_pointer
                 local.get $57
                 i32.store offset=4
                 local.get $57
                 local.get $key
                 local.set $57
                 global.get $~lib/memory/__stack_pointer
                 local.get $57
                 i32.store offset=32
                 local.get $57
                 local.get $data|4
                 local.set $57
                 global.get $~lib/memory/__stack_pointer
                 local.get $57
                 i32.store offset=36
                 local.get $57
                 local.get $outerLoopIndex
                 i32.const 1
                 i32.sub
                 local.get $numberValueIndex
                 local.get $initializeDefaultValues|5
                 call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                 local.get $numberValueIndex
                 local.set $outerLoopIndex
                 i32.const 0
                 local.set $isKey
                 br $for-break4
                end
                local.get $numberValueIndex
                i32.const 1
                i32.add
                local.set $numberValueIndex
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
      local.get $outerLoopIndex
      i32.const 1
      i32.add
      local.set $outerLoopIndex
      br $for-loop|0
     end
    end
    local.get $schema
    br $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/Board/Board>|inlined.0
   end
   br $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/Board/Board>|inlined.0
  end
  local.tee $board
  i32.store offset=80
  global.get $src/as/assembly/index/ai
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  local.get $board
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=32
  local.get $57
  call $src/as/assembly/Solver/Solver#setBoard
  global.get $src/as/assembly/index/ai
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  call $src/as/assembly/Solver/Solver#run
  global.get $~lib/memory/__stack_pointer
  global.get $src/as/assembly/index/ai
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  call $src/as/assembly/Solver/Solver#getKnownSafeCellsIds
  local.tee $safeCells
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  global.get $src/as/assembly/index/ai
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  call $src/as/assembly/Solver/Solver#getKnownMineCellsIds
  local.tee $mineCells
  i32.store offset=88
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#constructor
  local.tee $49
  i32.store offset=92
  local.get $49
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  local.get $mineCells
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=32
  local.get $57
  call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownMineCellsIds
  local.get $49
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=4
  local.get $57
  local.get $safeCells
  local.set $57
  global.get $~lib/memory/__stack_pointer
  local.get $57
  i32.store offset=32
  local.get $57
  call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#set:knownSafeCellsIds
  local.get $49
  local.tee $response
  i32.store offset=96
  block $~lib/json-as/assembly/src/json/JSON.stringify<src/as/assembly/models/SolverResponse/SolverUpdateResponse>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $response
   local.tee $data|51
   i32.store offset=100
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   block $src/as/assembly/models/SolverResponse/SolverUpdateResponse#__JSON_Serialize|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data|51
    local.tee $this|52
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    block $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.0 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $this|52
     local.set $57
     global.get $~lib/memory/__stack_pointer
     local.get $57
     i32.store offset=4
     local.get $57
     call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#get:knownMineCellsIds
     local.tee $data|54
     i32.store offset=108
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 1
     drop
     local.get $data|54
     local.set $57
     global.get $~lib/memory/__stack_pointer
     local.get $57
     i32.store offset=4
     local.get $57
     call $~lib/array/Array<i32>#get:length
     i32.const 0
     i32.eq
     if
      i32.const 160
      br $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.0
     else
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 128
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=36
      local.get $57
      local.get $data|54
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=116
      local.get $57
      i32.const 192
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=120
      local.get $57
      call $~lib/array/Array<i32>#join
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=112
      local.get $57
      call $~lib/string/String.__concat
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=4
      local.get $57
      i32.const 224
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=32
      local.get $57
      call $~lib/string/String.__concat
      br $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.0
     end
     unreachable
    end
    local.tee $53
    i32.store offset=124
    global.get $~lib/memory/__stack_pointer
    block $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.1 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $this|52
     local.set $57
     global.get $~lib/memory/__stack_pointer
     local.get $57
     i32.store offset=4
     local.get $57
     call $src/as/assembly/models/SolverResponse/SolverUpdateResponse#get:knownSafeCellsIds
     local.tee $data|56
     i32.store offset=128
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 0
     drop
     i32.const 1
     drop
     local.get $data|56
     local.set $57
     global.get $~lib/memory/__stack_pointer
     local.get $57
     i32.store offset=4
     local.get $57
     call $~lib/array/Array<i32>#get:length
     i32.const 0
     i32.eq
     if
      i32.const 160
      br $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.1
     else
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 128
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=36
      local.get $57
      local.get $data|56
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=116
      local.get $57
      i32.const 192
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=120
      local.get $57
      call $~lib/array/Array<i32>#join
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=112
      local.get $57
      call $~lib/string/String.__concat
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=4
      local.get $57
      i32.const 224
      local.set $57
      global.get $~lib/memory/__stack_pointer
      local.get $57
      i32.store offset=32
      local.get $57
      call $~lib/string/String.__concat
      br $~lib/json-as/assembly/src/json/JSON.stringify<~lib/array/Array<i32>>|inlined.1
     end
     unreachable
    end
    local.tee $55
    i32.store offset=132
    i32.const 4960
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=4
    local.get $57
    i32.const 1
    local.get $53
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=32
    local.get $57
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 4960
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=4
    local.get $57
    i32.const 3
    local.get $55
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=32
    local.get $57
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 4960
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=4
    local.get $57
    i32.const 752
    local.set $57
    global.get $~lib/memory/__stack_pointer
    local.get $57
    i32.store offset=32
    local.get $57
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    br $src/as/assembly/models/SolverResponse/SolverUpdateResponse#__JSON_Serialize|inlined.0
   end
   br $~lib/json-as/assembly/src/json/JSON.stringify<src/as/assembly/models/SolverResponse/SolverUpdateResponse>|inlined.0
  end
  local.set $57
  global.get $~lib/memory/__stack_pointer
  i32.const 136
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $57
  return
 )
 (func $src/as/assembly/GuessMaker/GuessMaker#constructor (param $this i32) (param $solver i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $src/as/assembly/GuessMaker/GuessMaker#set:solver
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $solver
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $src/as/assembly/GuessMaker/GuessMaker#set:solver
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/assembly/Solver/Solver#getBoard (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Solver/Solver#get:board
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/GuessMaker/Guess#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/GuessMaker/Guess#set:id
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/GuessMaker/Guess#set:mines
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/GuessMaker/Guess#set:cells
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/assembly/Board/Board#getNotRevealedCells (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $notRevealedCells i32)
  (local $i i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 5120
  call $~lib/rt/__newArray
  local.tee $notRevealedCells
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/as/assembly/Board/Board#get:cells
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $5
    call $src/as/assembly/Board/Board#get:cells
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $i
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    call $src/as/assembly/models/Cell/Cell#get:revealed
    i32.eqz
    if
     local.get $notRevealedCells
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     local.get $this
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=16
     local.get $5
     call $src/as/assembly/Board/Board#get:cells
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     local.get $i
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $notRevealedCells
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $src/as/assembly/Solver/Solver#getPropositions (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Solver/Solver#get:propositionsSolver
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/PropositionsSolver/PropositionsSolver#getPropositions
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#concat (param $this i32) (param $other i32) (result i32)
  (local $thisLen i32)
  (local $otherLen i32)
  (local $outLen i32)
  (local $out i32)
  (local $outStart i32)
  (local $thisSize i32)
  (local $thisStart i32)
  (local $offset i32)
  (local $ref i32)
  (local $otherStart i32)
  (local $otherSize i32)
  (local $offset|13 i32)
  (local $ref|14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  local.set $thisLen
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  local.set $otherLen
  local.get $thisLen
  local.get $otherLen
  i32.add
  local.set $outLen
  local.get $outLen
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outLen
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $out
  i32.store offset=4
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.set $outStart
  local.get $thisLen
  i32.const 2
  i32.shl
  local.set $thisSize
  i32.const 1
  drop
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.set $thisStart
  i32.const 0
  local.set $offset
  loop $for-loop|0
   local.get $offset
   local.get $thisSize
   i32.lt_u
   if
    local.get $thisStart
    local.get $offset
    i32.add
    i32.load
    local.set $ref
    local.get $outStart
    local.get $offset
    i32.add
    local.get $ref
    i32.store
    local.get $out
    local.get $ref
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset
    i32.const 4
    i32.add
    local.set $offset
    br $for-loop|0
   end
  end
  local.get $outStart
  local.get $thisSize
  i32.add
  local.set $outStart
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.set $otherStart
  local.get $otherLen
  i32.const 2
  i32.shl
  local.set $otherSize
  i32.const 0
  local.set $offset|13
  loop $for-loop|1
   local.get $offset|13
   local.get $otherSize
   i32.lt_u
   if
    local.get $otherStart
    local.get $offset|13
    i32.add
    i32.load
    local.set $ref|14
    local.get $outStart
    local.get $offset|13
    i32.add
    local.get $ref|14
    i32.store
    local.get $out
    local.get $ref|14
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset|13
    i32.const 4
    i32.add
    local.set $offset|13
    br $for-loop|1
   end
  end
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $src/as/assembly/Proposition/Proposition#getMineRatio (param $this i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  f32.convert_i32_s
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length
  f32.convert_i32_s
  f32.div
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/console/console.log (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/bindings/dom/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/assembly/GuessMaker/GuessMaker#makeGuess (param $this i32) (result i32)
  (local $board i32)
  (local $totalCells i32)
  (local $middleCellId i32)
  (local $4 i32)
  (local $notFoundMines i32)
  (local $notRevealedCells i32)
  (local $7 i32)
  (local $8 i32)
  (local $independentCellsIds i32)
  (local $i i32)
  (local $cell i32)
  (local $independents i32)
  (local $13 i32)
  (local $14 i32)
  (local $propositionsPool i32)
  (local $lowestRatio f64)
  (local $lowestRatioIndex i32)
  (local $i|18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $lowestRatioProposition i32)
  (local $22 i32)
  (local $x f64)
  (local $24 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/GuessMaker/GuessMaker#get:solver
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $src/as/assembly/Solver/Solver#getBoard
  local.tee $board
  i32.store offset=8
  local.get $board
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Board/Board#get:properties
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:height
  local.get $board
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Board/Board#get:properties
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
  i32.mul
  local.set $totalCells
  local.get $this
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=12
  local.get $24
  call $src/as/assembly/GuessMaker/GuessMaker#get:solver
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Solver/Solver#getKnownSafeCellsIds
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  if
   local.get $board
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   local.get $board
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=16
   local.get $24
   call $src/as/assembly/Board/Board#get:properties
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $src/as/assembly/models/BoardProperties/BoardProperties#get:width
   i32.const 1
   i32.sub
   i32.const 2
   i32.div_s
   local.get $board
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=16
   local.get $24
   call $src/as/assembly/Board/Board#get:properties
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $src/as/assembly/models/BoardProperties/BoardProperties#get:height
   i32.const 1
   i32.sub
   i32.const 2
   i32.div_s
   call $src/as/assembly/Board/Board#getCellByLocation
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   call $src/as/assembly/models/Cell/Cell#get:_id
   local.set $middleCellId
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $src/as/assembly/GuessMaker/Guess#constructor
   local.tee $4
   i32.store offset=20
   local.get $4
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   local.get $middleCellId
   call $src/as/assembly/GuessMaker/Guess#set:id
   local.get $4
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   local.get $board
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $src/as/assembly/Board/Board#get:properties
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   call $src/as/assembly/models/BoardProperties/BoardProperties#get:mines
   call $src/as/assembly/GuessMaker/Guess#set:mines
   local.get $4
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   local.get $board
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $src/as/assembly/Board/Board#get:cells
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   call $src/as/assembly/GuessMaker/Guess#set:cells
   local.get $4
   local.set $24
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $24
   return
  end
  local.get $board
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Board/Board#get:properties
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $src/as/assembly/models/BoardProperties/BoardProperties#get:mines
  local.get $this
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=12
  local.get $24
  call $src/as/assembly/GuessMaker/GuessMaker#get:solver
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Solver/Solver#getKnownMineCellsIds
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $~lib/array/Array<i32>#get:length
  i32.sub
  local.set $notFoundMines
  global.get $~lib/memory/__stack_pointer
  local.get $board
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  call $src/as/assembly/Board/Board#getNotRevealedCells
  local.tee $notRevealedCells
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 10
  i32.const 5152
  call $~lib/rt/__newArray
  local.tee $independentCellsIds
  i32.store offset=28
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $notRevealedCells
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length
   i32.lt_s
   if
    local.get $notRevealedCells
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store offset=4
    local.get $24
    local.get $i
    call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store
    local.get $24
    call $src/as/assembly/models/Cell/Cell#get:_id
    local.set $cell
    local.get $this
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store offset=12
    local.get $24
    call $src/as/assembly/GuessMaker/GuessMaker#get:solver
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store offset=4
    local.get $24
    call $src/as/assembly/Solver/Solver#getKnownMineCellsIds
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store
    local.get $24
    local.get $cell
    i32.const 0
    call $~lib/array/Array<i32>#includes
    i32.eqz
    if (result i32)
     local.get $this
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store offset=12
     local.get $24
     call $src/as/assembly/GuessMaker/GuessMaker#get:solver
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store offset=4
     local.get $24
     call $src/as/assembly/Solver/Solver#getKnownSafeCellsIds
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store
     local.get $24
     local.get $cell
     i32.const 0
     call $~lib/array/Array<i32>#includes
     i32.eqz
    else
     i32.const 0
    end
    if
     local.get $independentCellsIds
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store
     local.get $24
     local.get $notRevealedCells
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store offset=12
     local.get $24
     local.get $i
     call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__get
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store offset=4
     local.get $24
     call $src/as/assembly/models/Cell/Cell#get:_id
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4240
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  local.get $independentCellsIds
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  local.get $notFoundMines
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $independents
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=16
  local.get $24
  call $src/as/assembly/GuessMaker/GuessMaker#get:solver
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=12
  local.get $24
  call $src/as/assembly/Solver/Solver#getPropositions
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $13
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.load offset=4
  local.tee $14
  i32.store offset=40
  local.get $13
  i32.const 0
  local.get $independents
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
  local.get $13
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#concat
  local.tee $propositionsPool
  i32.store offset=44
  f64.const inf
  local.set $lowestRatio
  i32.const -1
  local.set $lowestRatioIndex
  i32.const 0
  local.set $i|18
  loop $for-loop|1
   local.get $i|18
   local.get $propositionsPool
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.lt_s
   if
    local.get $propositionsPool
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store offset=12
    local.get $24
    local.get $i|18
    call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store offset=4
    local.get $24
    call $src/as/assembly/Proposition/Proposition#getCells
    local.set $24
    global.get $~lib/memory/__stack_pointer
    local.get $24
    i32.store
    local.get $24
    call $~lib/array/Array<i32>#get:length
    i32.const 0
    i32.gt_s
    if
     local.get $propositionsPool
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store offset=4
     local.get $24
     local.get $i|18
     call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
     local.set $24
     global.get $~lib/memory/__stack_pointer
     local.get $24
     i32.store
     local.get $24
     call $src/as/assembly/Proposition/Proposition#getMineRatio
     f64.promote_f32
     local.get $lowestRatio
     f64.lt
     if
      local.get $propositionsPool
      local.set $24
      global.get $~lib/memory/__stack_pointer
      local.get $24
      i32.store offset=4
      local.get $24
      local.get $i|18
      call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
      local.set $24
      global.get $~lib/memory/__stack_pointer
      local.get $24
      i32.store
      local.get $24
      call $src/as/assembly/Proposition/Proposition#getMineRatio
      f64.promote_f32
      local.set $lowestRatio
      local.get $i|18
      local.set $lowestRatioIndex
     end
    end
    local.get $i|18
    i32.const 1
    i32.add
    local.set $i|18
    br $for-loop|1
   end
  end
  local.get $lowestRatioIndex
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $lowestRatioIndex
   local.get $propositionsPool
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.ge_s
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $lowestRatioIndex
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $19
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $propositionsPool
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $20
   i32.store offset=52
   i32.const 5312
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   i32.const 1
   local.get $19
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 5312
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   i32.const 3
   local.get $20
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 5312
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=4
   local.get $24
   i32.const 752
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store
   local.get $24
   call $~lib/console/console.log
  end
  global.get $~lib/memory/__stack_pointer
  local.get $propositionsPool
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  local.get $lowestRatioIndex
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__get
  local.tee $lowestRatioProposition
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/assembly/GuessMaker/Guess#constructor
  local.tee $22
  i32.store offset=60
  local.get $22
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  local.get $lowestRatioProposition
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=12
  local.get $24
  call $src/as/assembly/Proposition/Proposition#getCells
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  block $~lib/math/NativeMath.floor|inlined.0 (result f64)
   call $~lib/math/NativeMath.random
   local.get $lowestRatioProposition
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=16
   local.get $24
   call $src/as/assembly/Proposition/Proposition#getCells
   local.set $24
   global.get $~lib/memory/__stack_pointer
   local.get $24
   i32.store offset=12
   local.get $24
   call $~lib/array/Array<i32>#get:length
   f64.convert_i32_s
   f64.mul
   local.set $x
   local.get $x
   f64.floor
   br $~lib/math/NativeMath.floor|inlined.0
  end
  i32.trunc_sat_f64_s
  call $~lib/array/Array<i32>#__get
  call $src/as/assembly/GuessMaker/Guess#set:id
  local.get $22
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  local.get $lowestRatioProposition
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $src/as/assembly/Proposition/Proposition#getMines
  call $src/as/assembly/GuessMaker/Guess#set:mines
  local.get $22
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store
  local.get $24
  local.get $lowestRatioProposition
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=12
  local.get $24
  call $src/as/assembly/Proposition/Proposition#getCells
  local.set $24
  global.get $~lib/memory/__stack_pointer
  local.get $24
  i32.store offset=4
  local.get $24
  call $~lib/array/Array<i32>#get:length
  call $src/as/assembly/GuessMaker/Guess#set:cells
  local.get $22
  local.set $24
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $24
  return
 )
 (func $src/as/assembly/models/SolverResponse/SolverGuessResponse#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 24
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:id
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:mines
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:cells
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/assembly/index/guess (param $stringifiedBoard i32) (result i32)
  (local $data i32)
  (local $initializeDefaultValues i32)
  (local $type i32)
  (local $data|4 i32)
  (local $initializeDefaultValues|5 i32)
  (local $schema i32)
  (local $this i32)
  (local $key i32)
  (local $isKey i32)
  (local $depth i32)
  (local $outerLoopIndex i32)
  (local $data|12 i32)
  (local $pos i32)
  (local $char i32)
  (local $arrayValueIndex i32)
  (local $data|16 i32)
  (local $pos|17 i32)
  (local $char|18 i32)
  (local $objectValueIndex i32)
  (local $data|20 i32)
  (local $pos|21 i32)
  (local $char|22 i32)
  (local $escaping i32)
  (local $stringValueIndex i32)
  (local $data|25 i32)
  (local $pos|26 i32)
  (local $char|27 i32)
  (local $data|28 i32)
  (local $pos|29 i32)
  (local $data|30 i32)
  (local $pos|31 i32)
  (local $data|32 i32)
  (local $pos|33 i32)
  (local $data|34 i32)
  (local $pos|35 i32)
  (local $data|36 i32)
  (local $pos|37 i32)
  (local $data|38 i32)
  (local $pos|39 i32)
  (local $data|40 i32)
  (local $pos|41 i32)
  (local $numberValueIndex i32)
  (local $data|43 i32)
  (local $pos|44 i32)
  (local $char|45 i32)
  (local $board i32)
  (local $guessMaker i32)
  (local $guess i32)
  (local $49 i32)
  (local $response i32)
  (local $data|51 i32)
  (local $this|52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 120
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 120
  memory.fill
  global.get $~lib/memory/__stack_pointer
  block $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/Board/Board>|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $stringifiedBoard
   local.tee $data
   i32.store
   i32.const 0
   local.set $initializeDefaultValues
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   block $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/Board/Board>|inlined.1 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    call $~lib/string/String#trimStart
    local.tee $data|4
    i32.store offset=8
    local.get $initializeDefaultValues
    local.set $initializeDefaultValues|5
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $schema
    i32.store offset=12
    local.get $initializeDefaultValues|5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $schema
     local.tee $this
     i32.store offset=16
    end
    global.get $~lib/memory/__stack_pointer
    call $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String>
    local.tee $key
    i32.store offset=20
    i32.const 0
    local.set $isKey
    i32.const 0
    local.set $depth
    i32.const 1
    local.set $outerLoopIndex
    loop $for-loop|0
     local.get $outerLoopIndex
     local.get $data|4
     local.set $56
     global.get $~lib/memory/__stack_pointer
     local.get $56
     i32.store offset=4
     local.get $56
     call $~lib/string/String#get:length
     i32.const 1
     i32.sub
     i32.lt_s
     if
      block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.37 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $data|4
       local.tee $data|12
       i32.store offset=24
       local.get $outerLoopIndex
       local.set $pos
       local.get $data|12
       local.get $pos
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.37
      end
      local.set $char
      local.get $char
      i32.const 91
      i32.eq
      if
       local.get $outerLoopIndex
       local.set $arrayValueIndex
       block $for-break1
        loop $for-loop|1
         local.get $arrayValueIndex
         local.get $data|4
         local.set $56
         global.get $~lib/memory/__stack_pointer
         local.get $56
         i32.store offset=4
         local.get $56
         call $~lib/string/String#get:length
         i32.const 1
         i32.sub
         i32.lt_s
         if
          block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.38 (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $data|4
           local.tee $data|16
           i32.store offset=28
           local.get $arrayValueIndex
           local.set $pos|17
           local.get $data|16
           local.get $pos|17
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.38
          end
          local.set $char|18
          local.get $char|18
          i32.const 91
          i32.eq
          if
           local.get $depth
           i32.const 1
           i32.add
           local.set $depth
          else
           local.get $char|18
           i32.const 93
           i32.eq
           if
            local.get $depth
            i32.const 1
            i32.sub
            local.set $depth
            local.get $depth
            i32.const 0
            i32.eq
            if
             local.get $arrayValueIndex
             i32.const 1
             i32.add
             local.set $arrayValueIndex
             local.get $schema
             local.set $56
             global.get $~lib/memory/__stack_pointer
             local.get $56
             i32.store offset=4
             local.get $56
             local.get $key
             local.set $56
             global.get $~lib/memory/__stack_pointer
             local.get $56
             i32.store offset=32
             local.get $56
             local.get $data|4
             local.set $56
             global.get $~lib/memory/__stack_pointer
             local.get $56
             i32.store offset=36
             local.get $56
             local.get $outerLoopIndex
             local.get $arrayValueIndex
             local.get $initializeDefaultValues|5
             call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             local.get $arrayValueIndex
             local.set $outerLoopIndex
             i32.const 0
             local.set $isKey
             br $for-break1
            end
           end
          end
          local.get $arrayValueIndex
          i32.const 1
          i32.add
          local.set $arrayValueIndex
          br $for-loop|1
         end
        end
       end
      else
       local.get $char
       i32.const 123
       i32.eq
       if
        local.get $outerLoopIndex
        local.set $objectValueIndex
        block $for-break2
         loop $for-loop|2
          local.get $objectValueIndex
          local.get $data|4
          local.set $56
          global.get $~lib/memory/__stack_pointer
          local.get $56
          i32.store offset=4
          local.get $56
          call $~lib/string/String#get:length
          i32.const 1
          i32.sub
          i32.lt_s
          if
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.39 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|20
            i32.store offset=40
            local.get $objectValueIndex
            local.set $pos|21
            local.get $data|20
            local.get $pos|21
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.39
           end
           local.set $char|22
           local.get $char|22
           i32.const 123
           i32.eq
           if
            local.get $depth
            i32.const 1
            i32.add
            local.set $depth
           else
            local.get $char|22
            i32.const 125
            i32.eq
            if
             local.get $depth
             i32.const 1
             i32.sub
             local.set $depth
             local.get $depth
             i32.const 0
             i32.eq
             if
              local.get $objectValueIndex
              i32.const 1
              i32.add
              local.set $objectValueIndex
              local.get $schema
              local.set $56
              global.get $~lib/memory/__stack_pointer
              local.get $56
              i32.store offset=4
              local.get $56
              local.get $key
              local.set $56
              global.get $~lib/memory/__stack_pointer
              local.get $56
              i32.store offset=32
              local.get $56
              local.get $data|4
              local.set $56
              global.get $~lib/memory/__stack_pointer
              local.get $56
              i32.store offset=36
              local.get $56
              local.get $outerLoopIndex
              local.get $objectValueIndex
              local.get $initializeDefaultValues|5
              call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              local.get $objectValueIndex
              local.set $outerLoopIndex
              i32.const 0
              local.set $isKey
              br $for-break2
             end
            end
           end
           local.get $objectValueIndex
           i32.const 1
           i32.add
           local.set $objectValueIndex
           br $for-loop|2
          end
         end
        end
       else
        local.get $char
        i32.const 34
        i32.eq
        if
         i32.const 0
         local.set $escaping
         local.get $outerLoopIndex
         i32.const 1
         i32.add
         local.tee $outerLoopIndex
         local.set $stringValueIndex
         block $for-break3
          loop $for-loop|3
           local.get $stringValueIndex
           local.get $data|4
           local.set $56
           global.get $~lib/memory/__stack_pointer
           local.get $56
           i32.store offset=4
           local.get $56
           call $~lib/string/String#get:length
           i32.const 1
           i32.sub
           i32.lt_s
           if
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.40 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|25
             i32.store offset=44
             local.get $stringValueIndex
             local.set $pos|26
             local.get $data|25
             local.get $pos|26
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.40
            end
            local.set $char|27
            local.get $char|27
            i32.const 92
            i32.eq
            if (result i32)
             local.get $escaping
             i32.eqz
            else
             i32.const 0
            end
            if
             i32.const 1
             local.set $escaping
            else
             local.get $char|27
             i32.const 34
             i32.eq
             if (result i32)
              local.get $escaping
              i32.eqz
             else
              i32.const 0
             end
             if
              local.get $isKey
              i32.const 0
              i32.eq
              if
               local.get $key
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=4
               local.get $56
               local.get $data|4
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=32
               local.get $56
               local.get $outerLoopIndex
               local.get $stringValueIndex
               call $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>#reinst
               i32.const 1
               local.set $isKey
              else
               local.get $schema
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=4
               local.get $56
               local.get $key
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=32
               local.get $56
               local.get $data|4
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=36
               local.get $56
               local.get $outerLoopIndex
               local.get $stringValueIndex
               local.get $initializeDefaultValues|5
               call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
               i32.const 0
               local.set $isKey
              end
              local.get $stringValueIndex
              i32.const 1
              i32.add
              local.tee $stringValueIndex
              local.set $outerLoopIndex
              br $for-break3
             end
             i32.const 0
             local.set $escaping
            end
            local.get $stringValueIndex
            i32.const 1
            i32.add
            local.set $stringValueIndex
            br $for-loop|3
           end
          end
         end
        else
         local.get $char
         i32.const 110
         i32.eq
         if
          local.get $schema
          local.set $56
          global.get $~lib/memory/__stack_pointer
          local.get $56
          i32.store offset=4
          local.get $56
          local.get $key
          local.set $56
          global.get $~lib/memory/__stack_pointer
          local.get $56
          i32.store offset=32
          local.get $56
          i32.const 96
          local.set $56
          global.get $~lib/memory/__stack_pointer
          local.get $56
          i32.store offset=36
          local.get $56
          i32.const 0
          i32.const 4
          local.get $initializeDefaultValues|5
          call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
          i32.const 0
          local.set $isKey
         else
          local.get $char
          i32.const 116
          i32.eq
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.41 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|28
            i32.store offset=48
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|29
            local.get $data|28
            local.get $pos|29
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.41
           end
           i32.const 114
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.42 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|30
            i32.store offset=52
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|31
            local.get $data|30
            local.get $pos|31
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.42
           end
           i32.const 117
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.43 (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $data|4
            local.tee $data|32
            i32.store offset=56
            local.get $outerLoopIndex
            i32.const 1
            i32.add
            local.tee $outerLoopIndex
            local.set $pos|33
            local.get $data|32
            local.get $pos|33
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.43
           end
           i32.const 101
           i32.eq
          else
           i32.const 0
          end
          if
           local.get $schema
           local.set $56
           global.get $~lib/memory/__stack_pointer
           local.get $56
           i32.store offset=4
           local.get $56
           local.get $key
           local.set $56
           global.get $~lib/memory/__stack_pointer
           local.get $56
           i32.store offset=32
           local.get $56
           i32.const 32
           local.set $56
           global.get $~lib/memory/__stack_pointer
           local.get $56
           i32.store offset=36
           local.get $56
           i32.const 0
           i32.const 4
           local.get $initializeDefaultValues|5
           call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $isKey
          else
           local.get $char
           i32.const 102
           i32.eq
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.44 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|34
             i32.store offset=60
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|35
             local.get $data|34
             local.get $pos|35
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.44
            end
            i32.const 1104
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=4
            local.get $56
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.45 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|36
             i32.store offset=64
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|37
             local.get $data|36
             local.get $pos|37
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.45
            end
            i32.const 1136
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=4
            local.get $56
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.46 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|38
             i32.store offset=68
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|39
             local.get $data|38
             local.get $pos|39
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.46
            end
            i32.const 1168
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=4
            local.get $56
            i32.const 0
            call $~lib/string/String#charCodeAt
            i32.eq
           else
            i32.const 0
           end
           if (result i32)
            block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.47 (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $data|4
             local.tee $data|40
             i32.store offset=72
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $pos|41
             local.get $data|40
             local.get $pos|41
             i32.const 1
             i32.shl
             i32.add
             i32.load16_u
             br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.47
            end
            i32.const 101
            i32.eq
           else
            i32.const 0
           end
           if
            local.get $schema
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=4
            local.get $56
            local.get $key
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=32
            local.get $56
            i32.const 64
            local.set $56
            global.get $~lib/memory/__stack_pointer
            local.get $56
            i32.store offset=36
            local.get $56
            i32.const 0
            i32.const 5
            local.get $initializeDefaultValues|5
            call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $isKey
           else
            local.get $char
            i32.const 48
            i32.ge_s
            if (result i32)
             local.get $char
             i32.const 57
             i32.le_s
            else
             i32.const 0
            end
            if (result i32)
             i32.const 1
            else
             local.get $char
             i32.const 45
             i32.eq
            end
            if
             local.get $outerLoopIndex
             i32.const 1
             i32.add
             local.tee $outerLoopIndex
             local.set $numberValueIndex
             block $for-break4
              loop $for-loop|4
               local.get $numberValueIndex
               local.get $data|4
               local.set $56
               global.get $~lib/memory/__stack_pointer
               local.get $56
               i32.store offset=4
               local.get $56
               call $~lib/string/String#get:length
               i32.lt_s
               if
                block $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.48 (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.get $data|4
                 local.tee $data|43
                 i32.store offset=76
                 local.get $numberValueIndex
                 local.set $pos|44
                 local.get $data|43
                 local.get $pos|44
                 i32.const 1
                 i32.shl
                 i32.add
                 i32.load16_u
                 br $~lib/json-as/assembly/src/util/unsafeCharCodeAt|inlined.48
                end
                local.set $char|45
                local.get $char|45
                i32.const 44
                i32.eq
                if (result i32)
                 i32.const 1
                else
                 local.get $char|45
                 i32.const 125
                 i32.eq
                end
                if (result i32)
                 i32.const 1
                else
                 local.get $char|45
                 call $~lib/util/string/isSpace
                end
                if
                 local.get $schema
                 local.set $56
                 global.get $~lib/memory/__stack_pointer
                 local.get $56
                 i32.store offset=4
                 local.get $56
                 local.get $key
                 local.set $56
                 global.get $~lib/memory/__stack_pointer
                 local.get $56
                 i32.store offset=32
                 local.get $56
                 local.get $data|4
                 local.set $56
                 global.get $~lib/memory/__stack_pointer
                 local.get $56
                 i32.store offset=36
                 local.get $56
                 local.get $outerLoopIndex
                 i32.const 1
                 i32.sub
                 local.get $numberValueIndex
                 local.get $initializeDefaultValues|5
                 call $src/as/assembly/Board/Board#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                 local.get $numberValueIndex
                 local.set $outerLoopIndex
                 i32.const 0
                 local.set $isKey
                 br $for-break4
                end
                local.get $numberValueIndex
                i32.const 1
                i32.add
                local.set $numberValueIndex
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
      local.get $outerLoopIndex
      i32.const 1
      i32.add
      local.set $outerLoopIndex
      br $for-loop|0
     end
    end
    local.get $schema
    br $~lib/json-as/assembly/src/json/parseObject<src/as/assembly/Board/Board>|inlined.1
   end
   br $~lib/json-as/assembly/src/json/JSON.parse<src/as/assembly/Board/Board>|inlined.1
  end
  local.tee $board
  i32.store offset=80
  global.get $src/as/assembly/index/ai
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  local.get $board
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=32
  local.get $56
  call $src/as/assembly/Solver/Solver#setBoard
  global.get $src/as/assembly/index/ai
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  call $src/as/assembly/Solver/Solver#run
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $src/as/assembly/index/ai
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  call $src/as/assembly/GuessMaker/GuessMaker#constructor
  local.tee $guessMaker
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $guessMaker
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  call $src/as/assembly/GuessMaker/GuessMaker#makeGuess
  local.tee $guess
  i32.store offset=88
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#constructor
  local.tee $49
  i32.store offset=92
  local.get $49
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  local.get $guess
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=32
  local.get $56
  call $src/as/assembly/GuessMaker/Guess#get:id
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:id
  local.get $49
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  local.get $guess
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=32
  local.get $56
  call $src/as/assembly/GuessMaker/Guess#get:mines
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:mines
  local.get $49
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=4
  local.get $56
  local.get $guess
  local.set $56
  global.get $~lib/memory/__stack_pointer
  local.get $56
  i32.store offset=32
  local.get $56
  call $src/as/assembly/GuessMaker/Guess#get:cells
  call $src/as/assembly/models/SolverResponse/SolverGuessResponse#set:cells
  local.get $49
  local.tee $response
  i32.store offset=96
  block $~lib/json-as/assembly/src/json/JSON.stringify<src/as/assembly/models/SolverResponse/SolverGuessResponse>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $response
   local.tee $data|51
   i32.store offset=100
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   block $src/as/assembly/models/SolverResponse/SolverGuessResponse#__JSON_Serialize|inlined.0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $data|51
    local.tee $this|52
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $this|52
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    call $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:id
    i32.const 10
    call $~lib/number/I32#toString
    local.tee $53
    i32.store offset=108
    global.get $~lib/memory/__stack_pointer
    local.get $this|52
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    call $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:mines
    i32.const 10
    call $~lib/number/I32#toString
    local.tee $54
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    local.get $this|52
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    call $src/as/assembly/models/SolverResponse/SolverGuessResponse#get:cells
    i32.const 10
    call $~lib/number/I32#toString
    local.tee $55
    i32.store offset=116
    i32.const 5488
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    i32.const 1
    local.get $53
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=32
    local.get $56
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 5488
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    i32.const 3
    local.get $54
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=32
    local.get $56
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 5488
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    i32.const 5
    local.get $55
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=32
    local.get $56
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 5488
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=4
    local.get $56
    i32.const 752
    local.set $56
    global.get $~lib/memory/__stack_pointer
    local.get $56
    i32.store offset=32
    local.get $56
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    br $src/as/assembly/models/SolverResponse/SolverGuessResponse#__JSON_Serialize|inlined.0
   end
   br $~lib/json-as/assembly/src/json/JSON.stringify<src/as/assembly/models/SolverResponse/SolverGuessResponse>|inlined.0
  end
  local.set $56
  global.get $~lib/memory/__stack_pointer
  i32.const 120
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $56
  return
 )
 (func $src/as/assembly/Proposition/Proposition#toString (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $src/as/assembly/Proposition/Proposition#get:origin
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $src/as/assembly/Proposition/Proposition#get:cellsIndex
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 5920
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/array/Array<i32>#sort
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#toString
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $src/as/assembly/Proposition/Proposition#get:numberOfMines
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $3
  i32.store offset=24
  i32.const 5872
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 1
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5872
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 3
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5872
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 5
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5872
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 752
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/as/assembly/index/tests
  (local $0 i32)
  (local $1 i32)
  (local $a i32)
  (local $3 i32)
  (local $4 i32)
  (local $b i32)
  (local $6 i32)
  (local $7 i32)
  (local $c i32)
  (local $9 i32)
  (local $10 i32)
  (local $ps i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  i32.const 5536
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1104
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  i32.const 3
  i32.const 2
  i32.const 10
  i32.const 5584
  call $~lib/rt/__newArray
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i32.const 1
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $a
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5616
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  i32.const 5
  i32.const 2
  i32.const 10
  i32.const 5648
  call $~lib/rt/__newArray
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i32.const 3
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $b
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5696
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  i32.const 3
  i32.const 2
  i32.const 10
  i32.const 5728
  call $~lib/rt/__newArray
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i32.const 1
  call $src/as/assembly/Proposition/Proposition#constructor
  local.tee $c
  i32.store offset=16
  local.get $a
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  local.get $b
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  local.get $c
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $src/as/assembly/Proposition/Proposition#toString
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $9
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.load offset=4
  local.tee $10
  i32.store offset=24
  local.get $9
  i32.const 0
  local.get $a
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
  local.get $9
  i32.const 1
  local.get $b
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
  local.get $9
  i32.const 2
  local.get $c
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__set
  local.get $9
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#constructor
  local.tee $ps
  i32.store offset=28
  local.get $ps
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#findContradictions
  drop
  i32.const 5952
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  i32.const 6000
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $ps
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=40
  local.get $12
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownMineCellsIds
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=36
  local.get $12
  call $~lib/array/Array<i32>#toString
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=32
  local.get $12
  call $~lib/string/String.__concat
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  i32.const 6032
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $ps
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=40
  local.get $12
  call $src/as/assembly/HypothesisRunner/HypothesisRunner#getKnownSafeCellsIds
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=36
  local.get $12
  call $~lib/array/Array<i32>#toString
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=32
  local.get $12
  call $~lib/string/String.__concat
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/models/Cell/Cell>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/models/Cell/Cell>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/as/assembly/Proposition/Proposition>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/as/assembly/Proposition/Proposition>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/set/Set<i32>#get:buckets
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/set/Set<i32>#get:entries
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  (local $cur i32)
  (local $end i32)
  (local $entry i32)
  (local $val i32)
  (local $val|7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:buckets
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entries
  local.set $entries
  i32.const 1
  drop
  local.get $entries
  local.set $cur
  local.get $cur
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:entriesOffset
  block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.7 (result i32)
   i32.const 12
   br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.7
  end
  i32.mul
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    local.set $entry
    local.get $entry
    call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $entry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:key
     local.set $val
     i32.const 0
     drop
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
     i32.const 1
     drop
     local.get $entry
     call $~lib/map/MapEntry<~lib/string/String,src/as/assembly/Proposition/Proposition>#get:value
     local.set $val|7
     i32.const 0
     drop
     local.get $val|7
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    block $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.8 (result i32)
     i32.const 12
     br $~lib/map/ENTRY_SIZE<~lib/string/String,src/as/assembly/Proposition/Proposition>|inlined.8
    end
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store offset=4
  local.get $array
  local.get $bufferSize
  i32.store offset=8
  local.get $array
  local.get $length
  i32.store offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/as-virtual/assembly/index/Virtual.createEmpty<~lib/string/String> (result i32)
  (local $virt i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $virt
  i32.store
  local.get $virt
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/as/assembly/Solver/Solver#get:board (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  i32.load
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1696
   i32.const 1824
   i32.const 7
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/assembly/Board/Board#get:cells (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1696
   i32.const 1936
   i32.const 12
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/assembly/Board/Board#get:properties (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  i32.load
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1696
   i32.const 1936
   i32.const 11
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $this i32) (param $length i32) (result i32)
  (local $buffer i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1232
   i32.const 2304
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2368
   i32.const 2496
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 2560
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse#get:knownMineCellsIds (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  i32.load
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1696
   i32.const 5008
   i32.const 5
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/assembly/models/SolverResponse/SolverUpdateResponse#get:knownSafeCellsIds (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1696
   i32.const 5008
   i32.const 6
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/assembly/index/update (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/index/update
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/assembly/index/guess (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/assembly/index/guess
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
