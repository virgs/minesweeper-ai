(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32 i32)))
 (type $6 (func (param i32 i32 i64)))
 (type $7 (func (result i32)))
 (type $8 (func (param i32 i32 i32 i32 i32)))
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
 (global $~lib/rt/__rtti_base i32 (i32.const 4016))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36812))
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
 (data $7.1 (i32.const 1272) "\02")
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
 (data $16.1 (i32.const 1704) "\02\00\00\00\0c\00\00\00h\00e\00i\00g\00h\00t")
 (data $17 (i32.const 1724) "\1c")
 (data $17.1 (i32.const 1736) "\02\00\00\00\n\00\00\00w\00i\00d\00t\00h")
 (data $18 (i32.const 1756) "\1c")
 (data $18.1 (i32.const 1768) "\02\00\00\00\n\00\00\00m\00i\00n\00e\00s")
 (data $19 (i32.const 1788) "L")
 (data $19.1 (i32.const 1800) "\02\00\00\00<\00\00\00S\00t\00a\00r\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00a\00r\00g\00e\00r\00 \00t\00h\00a\00n\00 \00e\00n\00d\00!")
 (data $20 (i32.const 1868) "\\")
 (data $20.1 (i32.const 1880) "\02\00\00\00B\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00v\00i\00r\00t\00u\00a\00l\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data $21 (i32.const 1964) "\1c")
 (data $21.1 (i32.const 1976) "\02\00\00\00\02\00\00\00a")
 (data $22 (i32.const 1996) "\1c")
 (data $22.1 (i32.const 2008) "\02\00\00\00\02\00\00\00l")
 (data $23 (i32.const 2028) "\1c")
 (data $23.1 (i32.const 2040) "\02\00\00\00\02\00\00\00s")
 (data $24 (i32.const 2060) "|")
 (data $24.1 (i32.const 2072) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $25 (i32.const 2188) "<")
 (data $25.1 (i32.const 2200) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $26 (i32.const 2252) "\1c")
 (data $26.1 (i32.const 2264) "\02\00\00\00\02\00\00\000")
 (data $27 (i32.const 2284) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $28 (i32.const 2684) "\1c\04")
 (data $28.1 (i32.const 2696) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $29 (i32.const 3740) "\\")
 (data $29.1 (i32.const 3752) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $30 (i32.const 3836) ",")
 (data $30.1 (i32.const 3848) "\02\00\00\00\0e\00\00\00r\00e\00s\00u\00l\00t\00 ")
 (data $31 (i32.const 3884) "<")
 (data $31.1 (i32.const 3896) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $32 (i32.const 3948) "<")
 (data $32.1 (i32.const 3960) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $33 (i32.const 4016) "\06\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 ")
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "board" (func $export:assembly/index/board))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1504
  call $~lib/rt/itcms/__visit
  i32.const 1312
  call $~lib/rt/itcms/__visit
  i32.const 3904
  call $~lib/rt/itcms/__visit
  i32.const 3968
  call $~lib/rt/itcms/__visit
  i32.const 2704
  call $~lib/rt/itcms/__visit
  i32.const 3760
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
   i32.const 36812
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
   i32.const 4016
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
   i32.const 4020
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
  i32.const 36816
  i32.const 0
  i32.store
  i32.const 38384
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
    i32.const 36816
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
      i32.const 36816
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
  i32.const 36816
  i32.const 38388
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36816
  global.set $~lib/rt/tlsf/ROOT
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
      i32.const 36812
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
    i32.const 36812
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
     local.tee $0
     i32.const 36812
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
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
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
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
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
   block $__inlined_func$~lib/rt/itcms/interrupt$70
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
      br $__inlined_func$~lib/rt/itcms/interrupt$70
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
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
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
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
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
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
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
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
  local.get $5
  local.get $2
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
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
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
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
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
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$74
   local.get $0
   i32.eqz
   if
    local.get $1
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2272
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$74
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
   local.tee $3
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
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2284
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2284
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2284
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 2284
    i32.add
    i32.load
    i32.store
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
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
    i32.const 3904
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
   i32.const 3968
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
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/as-virtual/assembly/index/Virtual<~lib/string/String>
    block $assembly/index/BoardConfig
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        block $~lib/object/Object
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/index/BoardConfig $~lib/as-virtual/assembly/index/Virtual<~lib/string/String> $invalid
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
    return
   end
   return
  end
  unreachable
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 36812
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
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
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
 (func $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
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
  i32.const 1712
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 1712
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
   i32.const 1744
   i32.store offset=4
   local.get $1
   i32.const 1744
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
   i32.const 1776
   i32.store offset=4
   local.get $1
   i32.const 1776
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
 (func $~lib/string/String#charCodeAt (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
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
 (func $~lib/console/console.log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
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
 (func $assembly/index/board (param $0 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4044
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   i32.const 0
   i32.const 84
   memory.fill
   local.get $8
   local.get $0
   i32.store
   local.get $8
   local.get $0
   i32.store offset=4
   local.get $8
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4044
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $1
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.gt_u
    if (result i32)
     block $__inlined_func$~lib/util/string/isSpace (result i32)
      local.get $0
      local.get $2
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
       br $__inlined_func$~lib/util/string/isSpace
      end
      i32.const 1
      local.get $3
      i32.const -8192
      i32.add
      i32.const 10
      i32.le_u
      br_if $__inlined_func$~lib/util/string/isSpace
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
       br $__inlined_func$~lib/util/string/isSpace
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   block $__inlined_func$~lib/string/String#trimStart$168
    local.get $2
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     local.set $1
     br $__inlined_func$~lib/string/String#trimStart$168
    end
    local.get $1
    local.get $2
    i32.sub
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1280
     local.set $1
     br $__inlined_func$~lib/string/String#trimStart$168
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store offset=4
    local.get $1
    local.get $0
    local.get $2
    i32.add
    local.get $3
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $8
   local.get $1
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4044
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $9
   i32.store offset=20
   i32.const 1
   local.set $1
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $3
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.sub
    i32.lt_s
    if
     local.get $2
     local.get $3
     i32.store offset=24
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.tee $2
     i32.const 91
     i32.eq
     if
      local.get $1
      local.set $2
      loop $for-loop|1
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $3
       i32.store offset=4
       local.get $2
       local.get $3
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
         local.get $4
         local.get $3
         i32.store offset=28
         local.get $3
         local.get $2
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
         local.tee $4
         i32.const 91
         i32.eq
         if
          local.get $7
          i32.const 1
          i32.add
          local.set $7
         else
          local.get $4
          i32.const 93
          i32.eq
          if
           local.get $7
           i32.const 1
           i32.sub
           local.tee $7
           i32.eqz
           if
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $6
            i32.store offset=4
            local.get $4
            local.get $9
            i32.store offset=32
            local.get $4
            local.get $3
            i32.store offset=36
            local.get $6
            local.get $9
            local.get $3
            local.get $1
            local.get $2
            i32.const 1
            i32.add
            local.tee $1
            call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
            i32.const 0
            local.set $5
            br $for-break1
           end
          end
         end
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|1
        end
       end
      end
     else
      local.get $2
      i32.const 123
      i32.eq
      if
       local.get $1
       local.set $2
       loop $for-loop|2
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $3
        i32.store offset=4
        local.get $2
        local.get $3
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
          local.get $4
          local.get $3
          i32.store offset=40
          local.get $3
          local.get $2
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          local.tee $4
          i32.const 123
          i32.eq
          if
           local.get $7
           i32.const 1
           i32.add
           local.set $7
          else
           local.get $4
           i32.const 125
           i32.eq
           if
            local.get $7
            i32.const 1
            i32.sub
            local.tee $7
            i32.eqz
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             local.get $6
             i32.store offset=4
             local.get $4
             local.get $9
             i32.store offset=32
             local.get $4
             local.get $3
             i32.store offset=36
             local.get $6
             local.get $9
             local.get $3
             local.get $1
             local.get $2
             i32.const 1
             i32.add
             local.tee $1
             call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
             i32.const 0
             local.set $5
             br $for-break2
            end
           end
          end
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $for-loop|2
         end
        end
       end
      else
       local.get $2
       i32.const 34
       i32.eq
       if
        i32.const 0
        local.set $4
        local.get $1
        i32.const 1
        i32.add
        local.tee $1
        local.set $2
        loop $for-loop|3
         global.get $~lib/memory/__stack_pointer
         local.tee $10
         local.get $3
         i32.store offset=4
         local.get $2
         local.get $3
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
           local.get $10
           local.get $3
           i32.store offset=44
           local.get $4
           i32.eqz
           local.get $3
           local.get $2
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.tee $10
           i32.const 92
           i32.eq
           i32.and
           if (result i32)
            i32.const 1
           else
            local.get $4
            i32.eqz
            local.get $10
            i32.const 34
            i32.eq
            i32.and
            if
             local.get $5
             if (result i32)
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              local.get $6
              i32.store offset=4
              local.get $4
              local.get $9
              i32.store offset=32
              local.get $4
              local.get $3
              i32.store offset=36
              local.get $6
              local.get $9
              local.get $3
              local.get $1
              local.get $2
              call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
              i32.const 0
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              local.get $9
              i32.store offset=4
              local.get $4
              local.get $3
              i32.store offset=32
              local.get $4
              i32.const 8
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 4044
              i32.lt_s
              br_if $folding-inner1
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              i64.const 0
              i64.store
              local.get $4
              local.get $9
              i32.store
              local.get $9
              local.get $1
              i32.store offset=12
              local.get $4
              local.get $9
              i32.store
              local.get $9
              local.get $2
              i32.store offset=4
              local.get $4
              local.get $9
              i32.store
              local.get $9
              local.get $3
              i32.store
              local.get $2
              if
               local.get $4
               local.get $9
               i32.store
               local.get $4
               local.get $9
               i32.store offset=4
               local.get $9
               local.get $9
               i32.load
               local.get $1
               i32.const 1
               i32.shl
               i32.add
               i32.store offset=16
               local.get $4
               local.get $9
               i32.store
               local.get $9
               local.get $2
               local.get $1
               i32.sub
               i32.const 1
               i32.shl
               i32.store offset=8
              else
               global.get $~lib/memory/__stack_pointer
               local.tee $4
               local.get $9
               i32.store
               local.get $4
               local.get $9
               i32.store offset=4
               local.get $9
               local.get $9
               i32.load
               local.get $1
               i32.const 1
               i32.shl
               i32.add
               i32.store offset=16
               local.get $4
               local.get $9
               i32.store
               local.get $4
               local.get $3
               i32.store offset=4
               local.get $9
               local.get $3
               i32.const 20
               i32.sub
               i32.load offset=16
               i32.const 1
               i32.shr_u
               local.get $1
               i32.sub
               i32.const 1
               i32.shl
               i32.store offset=8
              end
              global.get $~lib/memory/__stack_pointer
              local.get $9
              i32.store
              local.get $9
              i32.load offset=8
              i32.const 0
              i32.le_s
              if
               i32.const 1808
               i32.const 1888
               i32.const 50
               i32.const 13
               call $~lib/builtins/abort
               unreachable
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 8
              i32.add
              global.set $~lib/memory/__stack_pointer
              i32.const 1
             end
             local.set $5
             local.get $2
             i32.const 1
             i32.add
             local.set $1
             br $for-break3
            end
            i32.const 0
           end
           local.set $4
           local.get $2
           i32.const 1
           i32.add
           local.set $2
           br $for-loop|3
          end
         end
        end
       else
        local.get $2
        i32.const 110
        i32.eq
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $6
         i32.store offset=4
         local.get $2
         local.get $9
         i32.store offset=32
         local.get $2
         i32.const 1120
         i32.store offset=36
         local.get $6
         local.get $9
         i32.const 1120
         i32.const 0
         i32.const 4
         call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
         i32.const 0
         local.set $5
        else
         local.get $2
         i32.const 116
         i32.eq
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store offset=48
          local.get $3
          local.get $1
          i32.const 1
          i32.add
          local.tee $1
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
          local.get $3
          i32.store offset=52
          local.get $3
          local.get $1
          i32.const 1
          i32.add
          local.tee $1
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
          local.get $3
          i32.store offset=56
          local.get $3
          local.get $1
          i32.const 1
          i32.add
          local.tee $1
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
          local.tee $2
          local.get $6
          i32.store offset=4
          local.get $2
          local.get $9
          i32.store offset=32
          local.get $2
          i32.const 1056
          i32.store offset=36
          local.get $6
          local.get $9
          i32.const 1056
          i32.const 0
          i32.const 4
          call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
          i32.const 0
          local.set $5
         else
          local.get $2
          i32.const 102
          i32.eq
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $3
           i32.store offset=60
           local.get $3
           local.get $1
           i32.const 1
           i32.add
           local.tee $1
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $10
           local.get $4
           i32.const 1984
           i32.store offset=4
           i32.const 1984
           call $~lib/string/String#charCodeAt
           local.get $10
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $3
           i32.store offset=64
           local.get $3
           local.get $1
           i32.const 1
           i32.add
           local.tee $1
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $10
           local.get $4
           i32.const 2016
           i32.store offset=4
           i32.const 2016
           call $~lib/string/String#charCodeAt
           local.get $10
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $3
           i32.store offset=68
           local.get $3
           local.get $1
           i32.const 1
           i32.add
           local.tee $1
           i32.const 1
           i32.shl
           i32.add
           i32.load16_u
           local.set $10
           local.get $4
           i32.const 2048
           i32.store offset=4
           i32.const 2048
           call $~lib/string/String#charCodeAt
           local.get $10
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $3
           i32.store offset=72
           local.get $3
           local.get $1
           i32.const 1
           i32.add
           local.tee $1
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
           local.tee $2
           local.get $6
           i32.store offset=4
           local.get $2
           local.get $9
           i32.store offset=32
           local.get $2
           i32.const 1088
           i32.store offset=36
           local.get $6
           local.get $9
           i32.const 1088
           i32.const 0
           i32.const 5
           call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
           i32.const 0
           local.set $5
          else
           local.get $2
           i32.const 57
           i32.le_u
           local.get $2
           i32.const 48
           i32.ge_u
           i32.and
           local.get $2
           i32.const 45
           i32.eq
           i32.or
           if
            local.get $1
            i32.const 1
            i32.add
            local.tee $1
            local.set $2
            loop $for-loop|4
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             local.get $3
             i32.store offset=4
             local.get $2
             local.get $3
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.const 1
             i32.shr_u
             i32.lt_s
             if
              block $for-break4
               local.get $4
               local.get $3
               i32.store offset=76
               local.get $3
               local.get $2
               i32.const 1
               i32.shl
               i32.add
               i32.load16_u
               local.tee $4
               i32.const 125
               i32.eq
               local.get $4
               i32.const 44
               i32.eq
               i32.or
               if (result i32)
                i32.const 1
               else
                block $__inlined_func$~lib/util/string/isSpace$2 (result i32)
                 local.get $4
                 i32.const 128
                 i32.or
                 i32.const 160
                 i32.eq
                 local.get $4
                 i32.const 9
                 i32.sub
                 i32.const 4
                 i32.le_u
                 i32.or
                 local.get $4
                 i32.const 5760
                 i32.lt_u
                 br_if $__inlined_func$~lib/util/string/isSpace$2
                 drop
                 i32.const 1
                 local.get $4
                 i32.const -8192
                 i32.add
                 i32.const 10
                 i32.le_u
                 br_if $__inlined_func$~lib/util/string/isSpace$2
                 drop
                 block $break|00
                  block $case6|01
                   local.get $4
                   i32.const 5760
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 8232
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 8233
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 8239
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 8287
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 12288
                   i32.eq
                   br_if $case6|01
                   local.get $4
                   i32.const 65279
                   i32.eq
                   br_if $case6|01
                   br $break|00
                  end
                  i32.const 1
                  br $__inlined_func$~lib/util/string/isSpace$2
                 end
                 i32.const 0
                end
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $4
                local.get $6
                i32.store offset=4
                local.get $4
                local.get $9
                i32.store offset=32
                local.get $4
                local.get $3
                i32.store offset=36
                local.get $6
                local.get $9
                local.get $3
                local.get $1
                i32.const 1
                i32.sub
                local.get $2
                call $assembly/index/BoardConfig#__JSON_Set_Key<~lib/as-virtual/assembly/index/Virtual<~lib/string/String>>
                local.get $2
                local.set $1
                i32.const 0
                local.set $5
                br $for-break4
               end
               local.get $2
               i32.const 1
               i32.add
               local.set $2
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
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $8
   local.get $6
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=32
   local.get $6
   i32.load
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 3856
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=36
   local.get $6
   i32.load offset=8
   call $~lib/number/I32#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4044
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 3856
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4044
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 3856
   i32.store
   i32.const 3852
   i32.load
   i32.const -2
   i32.and
   local.set $2
   local.get $0
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$169
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
     local.get $0
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1280
     local.set $0
     br $__inlined_func$~lib/string/String#concat$169
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=4
    local.get $0
    i32.const 3856
    local.get $2
    memory.copy
    local.get $0
    local.get $2
    i32.add
    local.get $1
    local.get $3
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 84
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 36832
  i32.const 36880
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/index/board (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4044
  i32.lt_s
  if
   i32.const 36832
   i32.const 36880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/board
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)