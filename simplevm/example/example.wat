(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (import "sys" "ret" (func $main.sys_ret (type 1)))
  (import "fs" "delete" (func $main.fs_delete (type 1)))
  (import "fs" "read" (func $main.fs_read (type 8)))
  (import "fs" "write" (func $main.fs_write (type 0)))
  (import "log" "println" (func $main.log (type 1)))
  (import "sys" "params" (func $main.sys_params (type 1)))
  (func $errors.New (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 66684
    i32.load
    local.set 4
    i32.const 66684
    local.get 2
    i32.store
    i32.const 8
    call $runtime.alloc
    local.tee 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    i32.const 66684
    local.get 4
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $runtime.alloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 66680
      return
    end
    i32.const 66656
    i32.const 66656
    i64.load
    local.get 0
    i64.extend_i32_u
    i64.add
    i64.store
    i32.const 66664
    i32.const 66664
    i64.load
    i64.const 1
    i64.add
    i64.store
    local.get 0
    i32.const 15
    i32.add
    i32.const 4
    i32.shr_u
    local.set 5
    i32.const 66648
    i32.load
    local.tee 4
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 4
              i32.ne
              if  ;; label = @6
                local.get 2
                local.set 1
                br 1 (;@5;)
              end
              i32.const 1
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  br_table 2 (;@5;) 0 (;@7;) 1 (;@6;)
                end
                i32.const 66684
                i32.load
                drop
                i32.const 66628
                i32.load
                i32.eqz
                if  ;; label = @7
                  global.get $__stack_pointer
                  i32.const 65536
                  call $runtime.markRoots
                end
                i32.const 65536
                i32.const 66976
                call $runtime.markRoots
                loop  ;; label = @7
                  i32.const 66681
                  i32.load8_u
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 2
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.set 1
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 66652
                          i32.load
                          i32.lt_u
                          if  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    call $#func14<_runtime.gcBlock_.state>
                                    i32.const 255
                                    i32.and
                                    br_table 3 (;@13;) 0 (;@16;) 1 (;@15;) 2 (;@14;) 6 (;@10;)
                                  end
                                  local.get 1
                                  call $#func15<_runtime.gcBlock_.markFree>
                                  i32.const 66672
                                  i32.const 66672
                                  i64.load
                                  i64.const 1
                                  i64.add
                                  i64.store
                                  br 4 (;@11;)
                                end
                                local.get 4
                                i32.const 1
                                i32.and
                                i32.const 0
                                local.set 4
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 1
                                call $#func15<_runtime.gcBlock_.markFree>
                                br 3 (;@11;)
                              end
                              i32.const 0
                              local.set 4
                              i32.const 66644
                              i32.load
                              local.get 1
                              i32.const 2
                              i32.shr_u
                              i32.add
                              local.tee 8
                              i32.load8_u
                              i32.const 2
                              local.get 1
                              i32.const 1
                              i32.shl
                              i32.const 6
                              i32.and
                              i32.shl
                              i32.const -1
                              i32.xor
                              i32.and
                              local.set 6
                              local.get 8
                              local.get 6
                              i32.store8
                              br 3 (;@10;)
                            end
                            local.get 2
                            i32.const 16
                            i32.add
                            local.set 2
                            br 2 (;@10;)
                          end
                          i32.const 2
                          local.set 1
                          i32.const 66644
                          i32.load
                          i32.const 66976
                          i32.sub
                          i32.const 3
                          i32.div_u
                          local.get 2
                          i32.le_u
                          br_if 6 (;@5;)
                          call $runtime.growHeap
                          drop
                          br 6 (;@5;)
                        end
                        local.get 2
                        i32.const 16
                        i32.add
                        local.set 2
                        i32.const 1
                        local.set 4
                      end
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      br 0 (;@9;)
                    end
                    unreachable
                  end
                  i32.const 0
                  local.set 1
                  i32.const 66681
                  i32.const 0
                  i32.store8
                  i32.const 66652
                  i32.load
                  local.set 2
                  loop  ;; label = @8
                    local.get 1
                    local.get 2
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 1
                    call $#func14<_runtime.gcBlock_.state>
                    i32.const 255
                    i32.and
                    i32.const 3
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      call $runtime.startMark
                      i32.const 66652
                      i32.load
                      local.set 2
                    end
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 1
                    br 0 (;@8;)
                  end
                  unreachable
                end
                unreachable
              end
              local.get 2
              local.set 1
              call $runtime.growHeap
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const 66652
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              i32.const 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            call $#func14<_runtime.gcBlock_.state>
            i32.const 255
            i32.and
            if  ;; label = @5
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 2
            local.get 7
            i32.const 1
            i32.add
            local.tee 7
            local.get 5
            i32.ne
            if  ;; label = @5
              local.get 2
              local.set 3
              br 3 (;@2;)
            end
            i32.const 66648
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.sub
            local.tee 2
            i32.const 1
            call $#func18<_runtime.gcBlock_.setState>
            local.get 3
            local.get 5
            i32.sub
            i32.const 2
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 66648
              i32.load
              i32.ne
              if  ;; label = @6
                local.get 1
                i32.const 2
                call $#func18<_runtime.gcBlock_.setState>
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 1 (;@5;)
              end
            end
            local.get 2
            i32.const 4
            i32.shl
            i32.const 66976
            i32.add
            local.tee 2
            i32.const 0
            local.get 0
            memory.fill
            local.get 2
            return
          end
          unreachable
        end
        i32.const 0
        local.set 7
      end
      i32.const 66648
      i32.load
      local.set 4
      local.get 1
      local.set 2
      br 0 (;@1;)
    end
    unreachable)
  (func $#func8<interface:_Error:func:___basic:string__.Error$invoke> (@name "interface:{Error:func:{}{basic:string}}.Error$invoke") (type 6) (param i32 i32 i32)
    local.get 1
    i32.eqz
    local.get 2
    i32.const 2021
    i32.ne
    i32.or
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      i64.load align=4
      i64.store
      return
    end
    unreachable)
  (func $strconv.Itoa (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    i32.const 5
    i32.store offset=20
    i32.const 66684
    i32.load
    local.set 9
    i32.const 66684
    local.get 4
    i32.const 16
    i32.add
    i32.store
    local.get 4
    local.get 9
    i32.store offset=16
    block  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 1
        i32.const 99
        i32.le_u
        if  ;; label = @3
          local.get 4
          local.get 1
          i32.const 65536
          i32.add
          local.get 1
          i32.const 1
          i32.shl
          i32.const 65572
          i32.add
          local.get 1
          i32.const 10
          i32.lt_u
          local.tee 1
          select
          local.tee 2
          i32.store offset=24
          i32.const 1
          i32.const 2
          local.get 1
          select
          br 1 (;@2;)
        end
        i32.const 65
        local.set 5
        local.get 4
        i32.const 65
        call $runtime.alloc
        local.tee 7
        i32.store offset=28
        local.get 1
        i32.const 31
        i32.shr_s
        local.tee 2
        local.get 1
        i32.xor
        local.get 2
        i32.sub
        i64.extend_i32_u
        local.set 13
        local.get 7
        i32.const 2
        i32.sub
        local.set 8
        loop  ;; label = @3
          local.get 13
          i64.const 1000000000
          i64.ge_u
          if  ;; label = @4
            local.get 5
            local.get 8
            i32.add
            local.set 6
            local.get 13
            local.get 13
            i64.const 1000000000
            i64.div_u
            local.tee 13
            i64.const 3294967296
            i64.mul
            i64.add
            i32.wrap_i64
            local.set 3
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const -8
              i32.ne
              if  ;; label = @6
                local.get 2
                local.get 5
                i32.add
                local.tee 10
                i32.const 1
                i32.sub
                i32.const 64
                i32.gt_u
                br_if 5 (;@1;)
                local.get 2
                local.get 6
                i32.add
                local.tee 11
                i32.const 1
                i32.add
                local.get 3
                local.get 3
                i32.const 100
                i32.div_u
                local.tee 3
                i32.const -100
                i32.mul
                i32.add
                i32.const 1
                i32.shl
                local.tee 12
                i32.const 1
                i32.or
                i32.const 65572
                i32.add
                i32.load8_u
                i32.store8
                local.get 10
                i32.const 2
                i32.sub
                i32.const 64
                i32.gt_u
                br_if 5 (;@1;)
                local.get 11
                local.get 12
                i32.const 65572
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const 2
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            local.get 3
            i32.const 1
            i32.shl
            i32.const 1
            i32.or
            local.tee 3
            i32.const 199
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 5
            i32.add
            i32.const 1
            i32.sub
            local.tee 5
            i32.const 64
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 6
            i32.add
            i32.const 1
            i32.add
            local.get 3
            i32.const 65572
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
        local.get 13
        i32.wrap_i64
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 100
          i32.ge_u
          if  ;; label = @4
            local.get 5
            i32.const 1
            i32.sub
            i32.const 64
            i32.gt_u
            br_if 3 (;@1;)
            local.get 5
            local.get 7
            i32.add
            local.tee 6
            i32.const 1
            i32.sub
            local.get 2
            local.get 2
            i32.const 100
            i32.div_u
            local.tee 3
            i32.const -100
            i32.mul
            i32.add
            i32.const 1
            i32.shl
            local.tee 2
            i32.const 1
            i32.or
            i32.const 65572
            i32.add
            i32.load8_u
            i32.store8
            local.get 5
            i32.const 2
            i32.sub
            local.tee 5
            i32.const 64
            i32.gt_u
            br_if 3 (;@1;)
            local.get 6
            i32.const 2
            i32.sub
            local.get 2
            i32.const 65572
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            local.set 2
            br 1 (;@3;)
          end
        end
        local.get 5
        i32.const 1
        i32.sub
        local.tee 3
        i32.const 64
        i32.gt_u
        br_if 1 (;@1;)
        local.get 5
        local.get 7
        i32.add
        local.tee 6
        i32.const 1
        i32.sub
        local.get 2
        i32.const 1
        i32.shl
        local.tee 8
        i32.const 1
        i32.or
        i32.const 65572
        i32.add
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 10
        i32.ge_u
        if  ;; label = @3
          local.get 5
          i32.const 2
          i32.sub
          local.tee 3
          i32.const 64
          i32.gt_u
          br_if 2 (;@1;)
          local.get 6
          i32.const 2
          i32.sub
          local.get 8
          i32.const 65572
          i32.add
          i32.load8_u
          i32.store8
        end
        local.get 1
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.const 1
          i32.sub
          local.tee 3
          i32.const 64
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 7
          i32.add
          i32.const 45
          i32.store8
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 3
        local.get 7
        i32.add
        i32.const 65
        local.get 3
        i32.sub
        call $runtime.stringFromBytes
        local.get 4
        local.get 4
        i32.load offset=8
        local.tee 2
        i32.store offset=36
        local.get 4
        local.get 2
        i32.store offset=32
        local.get 4
        i32.load offset=12
      end
      local.set 1
      i32.const 66684
      local.get 9
      i32.store
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    unreachable)
  (func $runtime.stringFromBytes (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=20 align=4
    local.get 3
    i64.const 3
    i64.store offset=12 align=4
    i32.const 66684
    i32.load
    local.set 4
    i32.const 66684
    local.get 3
    i32.const 8
    i32.add
    i32.store
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 2
    call $runtime.alloc
    local.tee 5
    local.get 1
    local.get 2
    memory.copy
    i32.const 66684
    local.get 4
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.memequal (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 3
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 2
        local.get 3
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.get 3
        i32.add
        local.get 0
        local.get 3
        i32.add
        local.set 5
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        i32.load8_u
        local.get 5
        i32.load8_u
        i32.eq
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 1
      i32.sub
    end
    local.get 2
    i32.ge_u)
  (func $runtime.hash32 (type 0) (param i32 i32 i32 i32) (result i32)
    local.get 1
    i32.const -962287725
    i32.mul
    local.get 2
    i32.xor
    i32.const -1130422988
    i32.xor
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 4
      i32.ge_s
      if  ;; label = @2
        local.get 0
        i32.load align=1
        local.get 2
        i32.add
        i32.const -962287725
        i32.mul
        local.tee 2
        i32.const 16
        i32.shr_u
        local.get 2
        i32.xor
        local.set 2
        local.get 1
        i32.const 4
        i32.sub
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.sub
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 3 (;@1;)
          end
          local.get 2
          local.get 0
          i32.load8_u offset=2
          i32.const 16
          i32.shl
          i32.add
          local.set 2
        end
        local.get 2
        local.get 0
        i32.load8_u offset=1
        i32.const 8
        i32.shl
        i32.add
        local.set 2
      end
      local.get 2
      local.get 0
      i32.load8_u
      i32.add
      i32.const -962287725
      i32.mul
      local.tee 0
      i32.const 24
      i32.shr_u
      local.get 0
      i32.xor
      local.set 2
    end
    local.get 2)
  (func $runtime.markRoots (type 4) (param i32 i32)
    (local i32 i32)
    i32.const 66644
    i32.load
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const 66976
          i32.lt_u
          local.get 2
          local.get 3
          i32.ge_u
          i32.or
          br_if 0 (;@3;)
          local.get 2
          i32.const 66976
          i32.sub
          i32.const 4
          i32.shr_u
          local.tee 2
          call $#func14<_runtime.gcBlock_.state>
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call $#func20<_runtime.gcBlock_.findHead>
          local.tee 2
          call $#func14<_runtime.gcBlock_.state>
          i32.const 255
          i32.and
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          call $runtime.startMark
        end
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end)
  (func $#func14<_runtime.gcBlock_.state> (@name "(runtime.gcBlock).state") (type 3) (param i32) (result i32)
    i32.const 66644
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    i32.load8_u
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shr_u
    i32.const 3
    i32.and)
  (func $#func15<_runtime.gcBlock_.markFree> (@name "(runtime.gcBlock).markFree") (type 2) (param i32)
    (local i32 i32)
    i32.const 66644
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 1
    i32.load8_u
    local.set 2
    local.get 1
    local.get 2
    i32.const 3
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    i32.store8)
  (func $runtime.growHeap (type 7) (result i32)
    (local i32 i32 i32)
    memory.size
    memory.grow
    i32.const -1
    i32.ne
    local.tee 1
    if  ;; label = @1
      memory.size
      local.set 0
      i32.const 66632
      i32.load
      local.set 2
      i32.const 66632
      local.get 0
      i32.const 16
      i32.shl
      i32.store
      i32.const 66644
      i32.load
      local.set 0
      call $runtime.calculateHeapAddresses
      i32.const 66644
      i32.load
      local.get 0
      local.get 2
      local.get 0
      i32.sub
      memory.copy
    end
    local.get 1)
  (func $runtime.startMark (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const -64
    i32.add
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 4
    i32.add
    i32.const 0
    i32.const 60
    memory.fill
    local.get 4
    local.get 0
    i32.store
    local.get 0
    i32.const 3
    call $#func18<_runtime.gcBlock_.setState>
    i32.const 1
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 1
          i32.const 1
          i32.sub
          local.tee 1
          i32.const 15
          i32.gt_u
          br_if 2 (;@1;)
          local.get 4
          local.get 1
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 3
          i32.const 4
          i32.shl
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              call $#func14<_runtime.gcBlock_.state>
              i32.const 255
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
          end
          local.get 0
          i32.const 66976
          i32.add
          local.set 6
          local.get 3
          i32.const 4
          i32.shl
          local.tee 5
          local.get 0
          i32.sub
          local.set 2
          local.get 5
          i32.const 66976
          i32.add
          local.set 5
          i32.const 66644
          i32.load
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.set 0
              local.get 5
              local.get 7
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.set 2
              local.get 5
              i32.const 16
              i32.add
              local.set 5
              local.get 3
              call $#func14<_runtime.gcBlock_.state>
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              i32.const 255
              i32.and
              i32.const 2
              i32.eq
              br_if 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 6
              i32.load
              local.tee 2
              i32.const 66976
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 66644
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 66976
              i32.sub
              i32.const 4
              i32.shr_u
              local.tee 2
              call $#func14<_runtime.gcBlock_.state>
              i32.const 255
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              call $#func20<_runtime.gcBlock_.findHead>
              local.tee 2
              call $#func14<_runtime.gcBlock_.state>
              i32.const 255
              i32.and
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 3
              call $#func18<_runtime.gcBlock_.setState>
              local.get 1
              i32.const 16
              i32.eq
              if  ;; label = @6
                i32.const 66681
                i32.const 1
                i32.store8
                i32.const 16
                local.set 1
                br 1 (;@5;)
              end
              local.get 1
              i32.const 15
              i32.gt_u
              br_if 4 (;@1;)
              local.get 4
              local.get 1
              i32.const 2
              i32.shl
              i32.add
              local.get 2
              i32.store
              local.get 1
              i32.const 1
              i32.add
              local.set 1
            end
            local.get 0
            i32.const 4
            i32.sub
            local.set 0
            local.get 6
            i32.const 4
            i32.add
            local.set 6
            br 0 (;@4;)
          end
          unreachable
        end
      end
      local.get 4
      i32.const -64
      i32.sub
      global.set $__stack_pointer
      return
    end
    unreachable)
  (func $#func18<_runtime.gcBlock_.setState> (@name "(runtime.gcBlock).setState") (type 4) (param i32 i32)
    (local i32 i32)
    i32.const 66644
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 2
    i32.load8_u
    local.set 3
    local.get 2
    local.get 3
    local.get 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.or
    i32.store8)
  (func $runtime.calculateHeapAddresses (type 5)
    (local i32 i32)
    i32.const 66632
    i32.load
    local.tee 0
    i32.const 66912
    i32.sub
    i32.const 65
    i32.div_u
    local.set 1
    i32.const 66644
    local.get 0
    local.get 1
    i32.sub
    local.tee 0
    i32.store
    i32.const 66652
    local.get 0
    i32.const 66976
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store)
  (func $#func20<_runtime.gcBlock_.findHead> (@name "(runtime.gcBlock).findHead") (type 3) (param i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 0
      call $#func14<_runtime.gcBlock_.state>
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      i32.const 255
      i32.and
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 1
    i32.add)
  (func $malloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 3
      local.get 2
      i32.load offset=12
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 1
        global.set $__stack_pointer
        local.get 1
        i32.const 2
        i32.store offset=20
        i32.const 66684
        i32.load
        local.set 2
        i32.const 66684
        local.get 1
        i32.const 16
        i32.add
        i32.store
        local.get 1
        local.get 2
        i32.store offset=16
        local.get 0
        i32.eqz
        local.set 5
        i32.const 0
        local.set 3
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 5
            br_if 1 (;@3;)
            local.get 0
            i32.const 0
            i32.lt_s
            br_if 2 (;@2;)
            local.get 1
            local.get 0
            call $runtime.alloc
            local.tee 3
            i32.store offset=24
            local.get 1
            local.get 3
            i32.store offset=28
            local.get 1
            local.get 0
            i32.store offset=8
            local.get 1
            local.get 0
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            local.get 1
            local.get 3
            i32.store offset=12
            local.get 1
            i32.const 12
            i32.add
            local.set 0
          end
          local.get 4
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            call $runtime.hashmapBinarySet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 66684
          local.get 2
          i32.store
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 3
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      unreachable
    end
    local.set 4
    global.get 2
    i32.load
    local.get 4
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 3
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    global.get 2
    global.get 2
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinarySet (type 4) (param i32 i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 3
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 66596
        i32.load
        i32.const 66588
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 2
      end
      local.get 3
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 66584
        local.get 0
        local.get 1
        local.get 2
        call $runtime.hashmapSet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $free (type 2) (param i32)
    (local i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 2
        global.set $__stack_pointer
        local.get 0
        i32.eqz
        local.set 1
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            br_if 1 (;@3;)
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
            i32.const 12
            i32.add
            local.set 1
          end
          local.get 4
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 2
            call $runtime.hashmapBinaryGet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
            local.set 1
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 0
            i32.store
          end
          local.get 4
          i32.const 1
          i32.eq
          i32.const 1
          global.get 1
          select
          if  ;; label = @4
            local.get 2
            call $runtime.hashmapBinaryDelete
            i32.const 1
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 2
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $runtime.hashmapBinaryGet (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 3
      i32.load
      local.set 0
      local.get 3
      i32.load offset=4
      local.set 1
      local.get 3
      i32.load offset=8
      local.set 3
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 2
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 66596
        i32.load
        i32.const 66588
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 3
      end
      local.get 2
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 66584
        local.get 0
        local.get 1
        local.get 3
        call $runtime.hashmapGet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinaryDelete (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 44
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load offset=8
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 6
      local.get 1
      i32.load offset=24
      local.set 7
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=12
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 12
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 3
        global.set $__stack_pointer
        local.get 3
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i64.const 0
        i64.store offset=16
        local.get 3
        i32.const 6
        i32.store offset=4
        i32.const 66684
        i32.load
        local.set 7
        i32.const 66684
        local.get 3
        i32.store
        local.get 3
        local.get 7
        i32.store
        local.get 0
        i32.const 66596
        i32.load
        local.tee 2
        i32.const 66588
        i32.load
        local.get 5
        call $runtime.hash32
        local.set 5
        local.get 3
        i32.const 66584
        i32.load
        local.tee 1
        i32.store offset=8
        local.get 5
        i32.const 24
        i32.shr_u
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 10
        local.get 1
        i32.const 66600
        i32.load
        local.get 2
        i32.add
        i32.const 3
        i32.shl
        i32.const 12
        i32.add
        local.tee 6
        local.get 5
        i32.const -1
        i32.const -1
        i32.const 66604
        i32.load8_u
        local.tee 4
        i32.shl
        i32.const -1
        i32.xor
        local.tee 8
        local.get 4
        i32.const 31
        i32.gt_u
        select
        i32.and
        i32.mul
        i32.add
        local.set 4
      end
      block  ;; label = @2
        loop  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 3
            local.get 4
            i32.store offset=12
            local.get 3
            local.get 4
            i32.store offset=16
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            local.set 5
          end
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 5
                  i32.const 8
                  i32.eq
                  local.tee 1
                  br_if 1 (;@6;)
                  local.get 10
                  local.get 4
                  local.get 5
                  i32.add
                  local.tee 8
                  i32.load8_u
                  i32.ne
                  local.set 1
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    br_if 1 (;@7;)
                    i32.const 66596
                    i32.load
                    local.set 6
                    local.get 3
                    i32.const 66608
                    i32.load
                    local.tee 11
                    i32.store offset=20
                    local.get 3
                    i32.const 66612
                    i32.load
                    local.tee 1
                    i32.store offset=24
                    local.get 1
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 5
                    local.get 6
                    i32.mul
                    local.get 4
                    i32.add
                    i32.const 12
                    i32.add
                    local.set 9
                  end
                  local.get 12
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    local.get 9
                    local.get 6
                    local.get 11
                    local.get 1
                    call_indirect (type 0)
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.set 1
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.const 1
                    i32.and
                    i32.eqz
                    local.tee 1
                    br_if 1 (;@7;)
                    local.get 8
                    i32.const 0
                    i32.store8
                    i32.const 66592
                    i32.const 66592
                    i32.load
                    i32.const 1
                    i32.sub
                    i32.store
                    br 6 (;@2;)
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 5
                  i32.const 1
                  i32.add
                  local.set 5
                  br 2 (;@5;)
                end
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 3
              local.get 4
              i32.load offset=8
              local.tee 4
              i32.store offset=28
              br 2 (;@3;)
            end
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66684
        local.get 7
        i32.store
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 5
    i32.store offset=16
    local.get 2
    local.get 6
    i32.store offset=20
    local.get 2
    local.get 7
    i32.store offset=24
    local.get 2
    local.get 8
    i32.store offset=28
    local.get 2
    local.get 9
    i32.store offset=32
    local.get 2
    local.get 10
    i32.store offset=36
    local.get 2
    local.get 11
    i32.store offset=40
    global.get 2
    global.get 2
    i32.load
    i32.const 44
    i32.add
    i32.store)
  (func $calloc (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 2
      i32.load offset=8
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 3
        global.set $__stack_pointer
        i32.const 66684
        i32.load
        local.set 2
        i32.const 66684
        local.get 3
        i32.store
        local.get 0
        local.get 1
        i32.mul
        local.set 0
      end
      local.get 4
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $malloc
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66684
        local.get 2
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      unreachable
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 1
    local.get 0
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $realloc (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 4
      local.get 1
      i32.load offset=20
      local.set 7
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 6
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 2
        global.set $__stack_pointer
        local.get 2
        i32.const 2
        i32.store offset=20
        i32.const 66684
        i32.load
        local.set 7
        i32.const 66684
        local.get 2
        i32.const 16
        i32.add
        local.tee 3
        i32.store
        local.get 2
        local.get 7
        i32.store offset=16
        i32.const 0
        local.set 4
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.const 1
          local.get 1
          select
          if  ;; label = @4
            local.get 6
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              local.get 0
              call $free
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
            end
            global.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const 0
            i32.lt_s
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            call $runtime.alloc
            local.tee 4
            i32.store offset=24
            local.get 2
            local.get 4
            i32.store offset=28
            local.get 0
            i32.eqz
            local.set 3
          end
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 3
              br_if 1 (;@4;)
              local.get 2
              local.get 0
              i32.store offset=12
              local.get 2
              i32.const 12
              i32.add
              local.set 3
            end
            local.get 6
            i32.const 1
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 3
              local.get 2
              call $runtime.hashmapBinaryGet
              i32.const 1
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 3
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.const 1
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 4
              local.get 2
              i32.load
              local.get 2
              i32.load offset=4
              local.tee 3
              local.get 1
              local.get 1
              local.get 3
              i32.gt_u
              select
              memory.copy
              local.get 2
              local.get 0
              i32.store
            end
            local.get 6
            i32.const 2
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 2
              call $runtime.hashmapBinaryDelete
              i32.const 2
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 2
            local.get 1
            i32.store offset=8
            local.get 2
            local.get 1
            i32.store offset=4
            local.get 2
            local.get 4
            i32.store
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 2
            i32.const 12
            i32.add
            local.set 0
          end
          local.get 6
          i32.const 3
          i32.eq
          i32.const 1
          global.get 1
          select
          if  ;; label = @4
            local.get 0
            local.get 2
            call $runtime.hashmapBinarySet
            i32.const 3
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 66684
          local.get 7
          i32.store
          local.get 2
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 4
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      unreachable
    end
    local.set 5
    global.get 2
    i32.load
    local.get 5
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 5
    local.get 0
    i32.store
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 4
    i32.store offset=16
    local.get 5
    local.get 7
    i32.store offset=20
    global.get 2
    global.get 2
    i32.load
    i32.const 24
    i32.add
    i32.store
    i32.const 0)
  (func $_start (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const -64
    i32.add
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 14
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 0
    i32.const 56
    memory.fill
    local.get 2
    i32.const 66684
    i32.load
    local.tee 5
    i32.store
    i32.const 66684
    local.get 2
    i32.store
    i32.const 66632
    memory.size
    i32.const 16
    i32.shl
    local.tee 0
    i32.store
    call $runtime.calculateHeapAddresses
    local.get 2
    i32.const 66644
    i32.load
    local.tee 1
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 1
    i32.const 0
    local.get 0
    local.get 1
    i32.sub
    memory.fill
    i32.const 48
    call $runtime.alloc
    local.tee 1
    i32.const 1
    i32.store offset=20
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 1
    i32.const 28
    i32.add
    i32.const 16384
    call $runtime.alloc
    local.tee 0
    i32.store
    local.get 0
    i32.const -1204030091
    i32.store
    local.get 1
    i32.const 32
    i32.add
    local.get 0
    i32.const 16384
    i32.add
    i32.store
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    i32.const 66640
    i32.load
    local.tee 0
    i32.store offset=32
    local.get 0
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.store offset=36
      local.get 0
      local.get 1
      i32.store
    end
    local.get 1
    i32.const 0
    i32.store
    i32.const 66640
    local.get 1
    i32.store
    local.get 2
    i32.const 66636
    i32.load
    local.tee 0
    i32.store offset=40
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 66636
      local.get 1
      i32.store
    end
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 66688
          i32.load8_u
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 66636
            i32.load
            local.tee 0
            i32.store offset=56
            local.get 2
            local.get 0
            i32.store offset=44
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            i32.const 66636
            local.get 0
            i32.load
            local.tee 1
            i32.store
            local.get 2
            local.get 1
            i32.store offset=48
            local.get 2
            i32.const 66640
            i32.load
            local.tee 1
            i32.store offset=52
            local.get 0
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 66640
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 0
            i32.store
            i32.const 66628
            i32.load
            local.set 4
            i32.const 66628
            local.get 0
            i32.store
            local.get 2
            local.get 4
            i32.store offset=60
            local.get 0
            i32.load offset=16
            local.set 1
            local.get 0
            i32.const 66684
            i32.load
            i32.store offset=16
            i32.const 66684
            local.get 1
            i32.store
            local.get 0
            i32.const 20
            i32.add
            local.set 1
            local.get 0
            i32.const 36
            i32.add
            i32.load8_u
            if  ;; label = @5
              global.get $__stack_pointer
              local.get 1
              i32.load offset=12
              global.set $__stack_pointer
              local.get 1
              i32.load offset=4
              local.get 1
              i32.load
              i32.const 66624
              i32.const 1
              i32.store8
              local.get 1
              i32.const 8
              i32.add
              call $asyncify_start_rewind
              call_indirect (type 2)
              call $asyncify_stop_unwind
              global.set $__stack_pointer
              br 2 (;@3;)
            end
            global.get $__stack_pointer
            local.get 1
            i32.load offset=12
            global.set $__stack_pointer
            local.get 1
            i32.load offset=4
            local.get 1
            i32.load
            call_indirect (type 2)
            call $asyncify_stop_unwind
            global.set $__stack_pointer
            local.get 0
            i32.const 1
            i32.store8 offset=36
            br 1 (;@3;)
          end
          i32.const 66684
          local.get 5
          i32.store
          local.get 2
          i32.const -64
          i32.sub
          global.set $__stack_pointer
          return
        end
        i32.const 66628
        local.get 4
        i32.store
        i32.const 66684
        i32.load
        local.set 1
        i32.const 66684
        local.get 0
        i32.load offset=16
        i32.store
        local.get 0
        local.get 1
        i32.store offset=16
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.ge_u
        br_if 1 (;@1;)
      end
    end
    unreachable)
  (func $runtime.run$1$gowrapper (type 2) (param i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 1
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66632
        memory.size
        i32.const 16
        i32.shl
        i32.store
        i32.const 66688
        i32.const 1
        i32.store8
      end
      local.get 1
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if (result i32)  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
            else
              i32.const 0
            end
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 0
              i32.const 0
              local.set 1
              global.get 1
              i32.const 2
              i32.eq
              if  ;; label = @6
                global.get 2
                global.get 2
                i32.load
                i32.const 4
                i32.sub
                i32.store
                global.get 2
                i32.load
                i32.load
                local.set 0
              end
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  global.get 1
                  i32.const 2
                  i32.eq
                  if  ;; label = @8
                    global.get 2
                    global.get 2
                    i32.load
                    i32.const 4
                    i32.sub
                    i32.store
                    global.get 2
                    i32.load
                    i32.load
                    local.set 2
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    i32.const 66628
                    i32.load
                    local.tee 0
                    i32.eqz
                    local.set 1
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 1
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 28
                      i32.add
                      local.tee 0
                      i32.load
                      i32.load
                      i32.const -1204030091
                      i32.ne
                      br_if 1 (;@8;)
                    end
                    local.get 2
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      i32.const 66624
                      i32.load8_u
                      if  ;; label = @10
                        call $asyncify_stop_unwind
                        i32.const 66624
                        i32.const 0
                        i32.store8
                      else
                        local.get 0
                        global.get $__stack_pointer
                        i32.store offset=4
                        local.get 0
                        call $asyncify_start_unwind
                      end
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 2 (;@7;)
                      drop
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      i32.const 66628
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 28
                      i32.add
                      i32.load
                      i32.const -1204030091
                      i32.store
                      br 3 (;@6;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    unreachable
                  end
                  br 1 (;@6;)
                end
                local.set 1
                global.get 2
                i32.load
                local.get 1
                i32.store
                global.get 2
                global.get 2
                i32.load
                i32.const 4
                i32.add
                i32.store
                global.get 2
                i32.load
                local.get 0
                i32.store
                global.get 2
                global.get 2
                i32.load
                i32.const 4
                i32.add
                i32.store
              end
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              unreachable
            end
            br 1 (;@3;)
          end
          local.set 0
          global.get 2
          i32.load
          local.get 0
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $runtime.hashmapGet (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 52
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 6
      local.get 1
      i32.load offset=24
      local.set 7
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=44
      local.set 12
      local.get 1
      i32.load offset=48
      local.set 13
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 14
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 48
        i32.sub
        local.tee 5
        global.set $__stack_pointer
        local.get 5
        i32.const 40
        i32.add
        i32.const 0
        i32.store
        local.get 5
        i64.const 0
        i64.store offset=32
        local.get 5
        i32.const 7
        i32.store offset=12
        i32.const 66684
        i32.load
        local.set 9
        i32.const 66684
        local.get 5
        i32.const 8
        i32.add
        i32.store
        local.get 5
        local.get 9
        i32.store offset=8
        local.get 5
        local.get 0
        i32.load
        local.tee 4
        i32.store offset=16
        local.get 4
        local.get 0
        i32.load offset=16
        local.get 0
        i32.load offset=12
        i32.add
        i32.const 3
        i32.shl
        i32.const 12
        i32.add
        local.tee 8
        i32.const -1
        i32.const -1
        local.get 0
        i32.load8_u offset=20
        local.tee 6
        i32.shl
        i32.const -1
        i32.xor
        local.tee 10
        local.get 6
        i32.const 31
        i32.gt_u
        select
        local.get 3
        i32.and
        i32.mul
        local.tee 7
        i32.add
        local.set 6
        local.get 3
        i32.const 24
        i32.shr_u
        local.tee 3
        i32.const 1
        local.get 3
        select
        local.set 11
      end
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 6
                i32.store offset=24
                local.get 5
                local.get 6
                i32.store offset=28
                local.get 5
                local.get 6
                i32.store offset=20
                local.get 6
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.eq
                    local.tee 7
                    br_if 1 (;@7;)
                    local.get 11
                    local.get 3
                    local.get 6
                    i32.add
                    i32.load8_u
                    i32.ne
                    local.set 7
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=12
                      local.set 7
                      local.get 0
                      i32.load offset=16
                      local.set 13
                      local.get 5
                      local.get 0
                      i32.load offset=24
                      local.tee 10
                      i32.store offset=32
                      local.get 5
                      local.get 0
                      i32.load offset=28
                      local.tee 8
                      i32.store offset=36
                      local.get 8
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 3
                      local.get 7
                      i32.mul
                      local.get 6
                      i32.add
                      i32.const 12
                      i32.add
                      local.set 12
                    end
                    local.get 14
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 1
                      local.get 12
                      local.get 7
                      local.get 10
                      local.get 8
                      call_indirect (type 0)
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 8
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 8
                      br_if 1 (;@8;)
                      local.get 2
                      local.get 6
                      local.get 3
                      local.get 13
                      i32.mul
                      local.get 7
                      i32.const 3
                      i32.shl
                      i32.add
                      i32.add
                      i32.const 12
                      i32.add
                      local.get 0
                      i32.load offset=16
                      memory.copy
                      br 7 (;@2;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 6
                i32.load offset=8
                local.tee 6
                i32.store offset=40
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 0
            local.get 0
            i32.load offset=16
            memory.fill
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66684
        local.get 9
        i32.store
        local.get 5
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 6
        i32.const 0
        i32.ne
        return
      end
      unreachable
    end
    local.set 4
    global.get 2
    i32.load
    local.get 4
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 5
    i32.store offset=16
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 7
    i32.store offset=24
    local.get 4
    local.get 8
    i32.store offset=28
    local.get 4
    local.get 9
    i32.store offset=32
    local.get 4
    local.get 10
    i32.store offset=36
    local.get 4
    local.get 11
    i32.store offset=40
    local.get 4
    local.get 12
    i32.store offset=44
    local.get 4
    local.get 13
    i32.store offset=48
    global.get 2
    global.get 2
    i32.load
    i32.const 52
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapSet (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 68
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 4
      local.get 1
      i32.load offset=20
      local.set 6
      local.get 1
      i32.load offset=24
      local.set 8
      local.get 1
      i32.load offset=28
      local.set 5
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=44
      local.set 12
      local.get 1
      i32.load offset=48
      local.set 13
      local.get 1
      i32.load offset=52
      local.set 14
      local.get 1
      i32.load offset=56
      local.set 15
      local.get 1
      i32.load offset=60
      local.set 17
      local.get 1
      i32.load offset=64
      local.set 18
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 16
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 256
        i32.sub
        local.tee 4
        global.set $__stack_pointer
        local.get 4
        i32.const 50
        i32.store offset=52
        local.get 4
        i32.const 56
        i32.add
        i32.const 0
        i32.const 200
        memory.fill
        local.get 4
        i32.const 66684
        i32.load
        local.tee 17
        i32.store offset=48
        i32.const 66684
        local.get 4
        i32.const 48
        i32.add
        i32.store
        local.get 0
        i32.eqz
        local.set 6
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 6
            br_if 1 (;@3;)
            local.get 0
            i32.load8_u offset=20
            local.tee 8
            i32.const 29
            i32.gt_u
            local.set 6
          end
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 6
              br_if 1 (;@4;)
              i32.const 6
              local.get 8
              i32.shl
              local.tee 9
              local.get 0
              i32.load offset=8
              i32.ge_u
              local.tee 6
              br_if 1 (;@4;)
              local.get 4
              i64.const 0
              i64.store offset=24
              local.get 4
              local.get 0
              i32.load offset=36
              local.tee 3
              i32.store offset=72
              local.get 4
              local.get 0
              i32.load offset=32
              local.tee 6
              i32.store offset=68
              local.get 4
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.store offset=64
              local.get 4
              local.get 0
              i32.load offset=24
              local.tee 10
              i32.store offset=60
              local.get 4
              local.get 0
              i32.load
              i32.store offset=56
              local.get 4
              local.get 3
              i32.store offset=44
              local.get 4
              local.get 6
              i32.store offset=40
              local.get 4
              local.get 5
              i32.store offset=36
              local.get 4
              local.get 10
              i32.store offset=32
              local.get 4
              local.get 0
              i32.load offset=16
              i32.store offset=24
              local.get 4
              local.get 0
              i32.load offset=12
              i32.store offset=20
              i32.const 66580
              i32.load
              local.tee 3
              i32.const 7
              i32.shl
              local.set 6
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.const 1
              i32.shr_u
              local.set 6
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.const 9
              i32.shl
              local.set 6
              i32.const 66580
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.store
              local.get 4
              i32.const 0
              i32.store offset=16
              local.get 4
              local.get 3
              i32.store offset=12
              local.get 4
              local.get 8
              i32.const 1
              i32.add
              local.tee 3
              i32.store8 offset=28
              local.get 4
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=12
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              local.get 3
              i32.shl
              call $runtime.alloc
              local.tee 3
              i32.store offset=8
              local.get 4
              local.get 3
              i32.store offset=76
              local.get 4
              local.get 0
              i32.load offset=12
              call $runtime.alloc
              local.tee 6
              i32.store offset=80
              local.get 4
              local.get 0
              i32.load offset=16
              call $runtime.alloc
              local.tee 14
              i32.store offset=84
              i32.const 0
              local.set 9
              i32.const 0
              local.set 13
              i32.const 0
              local.set 12
              i32.const 0
              local.set 8
              i32.const 0
              local.set 3
            end
            loop  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 12
                i32.store offset=88
                local.get 12
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  local.get 0
                  i32.load
                  local.tee 12
                  i32.store offset=92
                  i32.const 0
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=20
                  local.tee 5
                  i32.shl
                  local.tee 10
                  local.get 5
                  i32.const 31
                  i32.gt_u
                  local.tee 5
                  select
                  local.set 13
                end
                local.get 4
                local.get 12
                i32.store offset=108
                local.get 4
                local.get 12
                i32.store offset=124
              end
              block  ;; label = @6
                loop  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.get 3
                    i32.store offset=96
                    local.get 8
                    i32.const 255
                    i32.and
                    i32.const 8
                    i32.lt_u
                    local.tee 5
                    i32.eqz
                    if  ;; label = @9
                      local.get 3
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 4
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      i32.store offset=100
                      i32.const 0
                      local.set 8
                    end
                    local.get 4
                    local.get 3
                    i32.store offset=104
                    local.get 3
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      local.get 13
                      i32.ge_u
                      local.tee 3
                      br_if 3 (;@6;)
                      local.get 12
                      local.get 9
                      local.get 0
                      i32.load offset=16
                      local.get 0
                      i32.load offset=12
                      i32.add
                      i32.const 3
                      i32.shl
                      i32.const 12
                      i32.add
                      i32.mul
                      i32.add
                      local.set 3
                      local.get 9
                      i32.const 1
                      i32.add
                      local.set 9
                    end
                    local.get 4
                    local.get 3
                    i32.store offset=116
                    local.get 4
                    local.get 3
                    i32.store offset=120
                    local.get 4
                    local.get 3
                    i32.store offset=112
                    local.get 3
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 8
                    i32.const 255
                    i32.and
                    local.tee 10
                    local.get 3
                    i32.add
                    i32.load8_u
                    local.tee 5
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      i32.const 1
                      i32.add
                      local.set 8
                      br 2 (;@7;)
                    end
                    local.get 6
                    local.get 10
                    local.get 0
                    i32.load offset=12
                    local.tee 5
                    i32.mul
                    local.get 3
                    i32.add
                    i32.const 12
                    i32.add
                    local.get 5
                    memory.copy
                    local.get 4
                    local.get 0
                    i32.load
                    local.tee 7
                    i32.store offset=128
                    local.get 7
                    local.get 12
                    i32.ne
                    local.set 11
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 11
                      i32.eqz
                      if  ;; label = @10
                        local.get 5
                        i32.const 3
                        i32.shl
                        local.set 11
                        local.get 14
                        local.get 11
                        local.get 10
                        local.get 0
                        i32.load offset=16
                        local.tee 5
                        i32.mul
                        i32.add
                        local.get 3
                        i32.add
                        i32.const 12
                        i32.add
                        local.tee 10
                        local.get 5
                        memory.copy
                        local.get 8
                        i32.const 1
                        i32.add
                        local.set 8
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 0
                      i32.load offset=32
                      local.tee 11
                      i32.store offset=132
                      local.get 4
                      local.get 0
                      i32.load offset=36
                      local.tee 10
                      i32.store offset=136
                      local.get 10
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.load offset=4
                      local.set 15
                      local.get 8
                      i32.const 1
                      i32.add
                      local.set 8
                    end
                    local.get 16
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      local.get 5
                      local.get 15
                      local.get 11
                      local.get 10
                      call_indirect (type 0)
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 5
                    end
                    local.get 16
                    i32.const 1
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 0
                      local.get 6
                      local.get 14
                      local.get 5
                      call $runtime.hashmapGet
                      i32.const 1
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 5
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 5
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 5
                      br_if 2 (;@7;)
                    end
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  local.get 4
                  i32.load offset=40
                  local.tee 10
                  i32.store offset=140
                  local.get 4
                  local.get 4
                  i32.load offset=44
                  local.tee 5
                  i32.store offset=144
                  local.get 5
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 4
                  i32.load offset=20
                  local.set 15
                  local.get 4
                  i32.load offset=12
                  local.set 18
                  local.get 4
                  i32.const 8
                  i32.add
                  local.set 11
                end
                local.get 16
                i32.const 2
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 6
                  local.get 15
                  local.get 18
                  local.get 10
                  local.get 5
                  call_indirect (type 0)
                  i32.const 2
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                  local.set 5
                end
                local.get 16
                i32.const 3
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 11
                  local.get 6
                  local.get 14
                  local.get 5
                  call $runtime.hashmapSet
                  i32.const 3
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                end
                global.get 1
                i32.eqz
                br_if 1 (;@5;)
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 4
              i32.load offset=8
              local.tee 3
              i32.store
              local.get 0
              local.get 4
              i64.load offset=12 align=4
              i64.store offset=4 align=4
              local.get 0
              local.get 4
              i64.load offset=20 align=4
              i64.store offset=12 align=4
              local.get 0
              local.get 4
              i32.load8_u offset=28
              i32.store8 offset=20
              local.get 0
              local.get 4
              i32.load offset=32
              local.tee 6
              i32.store offset=24
              local.get 0
              local.get 4
              i32.load offset=36
              local.tee 9
              i32.store offset=28
              local.get 0
              local.get 4
              i32.load offset=40
              local.tee 5
              i32.store offset=32
              local.get 0
              local.get 4
              i32.load offset=44
              local.tee 10
              i32.store offset=36
              local.get 4
              local.get 3
              i32.store offset=148
              local.get 4
              local.get 6
              i32.store offset=152
              local.get 4
              local.get 9
              i32.store offset=156
              local.get 4
              local.get 5
              i32.store offset=160
              local.get 4
              local.get 10
              i32.store offset=164
              local.get 4
              local.get 0
              i32.load offset=32
              local.tee 8
              i32.store offset=168
              local.get 4
              local.get 0
              i32.load offset=36
              local.tee 3
              i32.store offset=172
              local.get 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=4
              local.set 9
              local.get 0
              i32.load offset=12
              local.set 6
            end
            local.get 16
            i32.const 4
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 1
              local.get 6
              local.get 9
              local.get 8
              local.get 3
              call_indirect (type 0)
              i32.const 4
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 3
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.load8_u offset=20
              local.set 8
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 4
            local.get 0
            i32.load
            local.tee 6
            i32.store offset=176
            local.get 0
            i32.load offset=12
            local.get 0
            i32.load offset=16
            i32.add
            i32.const 3
            i32.shl
            i32.const 12
            i32.add
            i32.const -1
            i32.const -1
            local.get 8
            i32.const 255
            i32.and
            local.tee 5
            i32.shl
            i32.const -1
            i32.xor
            local.get 5
            i32.const 31
            i32.gt_u
            select
            local.get 3
            i32.and
            i32.mul
            local.get 6
            i32.add
            local.set 9
            local.get 3
            i32.const 24
            i32.shr_u
            local.tee 3
            i32.const 1
            local.get 3
            select
            local.set 13
            i32.const 0
            local.set 8
            i32.const 0
            local.set 10
            i32.const 0
            local.set 5
            i32.const 0
            local.set 3
          end
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 9
                local.tee 6
                i32.store offset=212
                local.get 4
                local.get 6
                i32.store offset=216
                local.get 4
                local.get 6
                i32.store offset=196
                local.get 4
                local.get 3
                i32.store offset=192
                local.get 4
                local.get 8
                i32.store offset=188
                local.get 4
                local.get 10
                i32.store offset=184
                local.get 4
                local.get 5
                i32.store offset=180
                local.get 6
                i32.eqz
                local.tee 9
                br_if 1 (;@5;)
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.get 10
                    i32.store offset=204
                    local.get 4
                    local.get 8
                    i32.store offset=208
                    local.get 4
                    local.get 5
                    i32.store offset=200
                    local.get 3
                    i32.const 8
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 3
                    local.get 6
                    i32.add
                    local.tee 9
                    i32.load8_u
                    local.get 8
                    i32.or
                    local.set 11
                    local.get 4
                    local.get 5
                    local.get 9
                    local.get 11
                    select
                    local.tee 5
                    i32.store offset=220
                    local.get 4
                    local.get 8
                    local.get 0
                    i32.load offset=12
                    local.tee 12
                    local.get 3
                    i32.mul
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 14
                    local.get 11
                    select
                    local.tee 8
                    i32.store offset=228
                    local.get 4
                    local.get 10
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    local.get 12
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 15
                    local.get 11
                    select
                    local.tee 10
                    i32.store offset=224
                    local.get 13
                    local.get 9
                    i32.load8_u
                    i32.ne
                    local.set 9
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      br_if 1 (;@8;)
                      local.get 4
                      local.get 0
                      i32.load offset=24
                      local.tee 11
                      i32.store offset=232
                      local.get 4
                      local.get 0
                      i32.load offset=28
                      local.tee 9
                      i32.store offset=236
                      local.get 9
                      i32.eqz
                      br_if 6 (;@3;)
                    end
                    local.get 16
                    i32.const 5
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 1
                      local.get 14
                      local.get 12
                      local.get 11
                      local.get 9
                      call_indirect (type 0)
                      i32.const 5
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 9
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 9
                      br_if 1 (;@8;)
                      local.get 15
                      local.get 2
                      local.get 0
                      i32.load offset=16
                      memory.copy
                      br 7 (;@2;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 6
                i32.load offset=8
                local.tee 9
                i32.store offset=240
                local.get 6
                local.set 3
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 8
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=12
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              call $runtime.alloc
              local.set 5
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              local.get 4
              local.get 5
              i32.store offset=248
              local.get 4
              local.get 5
              i32.store offset=252
              local.get 4
              local.get 5
              i32.store offset=244
              local.get 5
              i32.const 12
              i32.add
              local.tee 6
              local.get 1
              local.get 0
              i32.load offset=12
              local.tee 1
              memory.copy
              local.get 6
              local.get 1
              i32.const 3
              i32.shl
              i32.add
              local.get 2
              local.get 0
              i32.load offset=16
              memory.copy
              local.get 5
              local.get 13
              i32.store8
              local.get 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              local.get 5
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 0
            local.get 0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 8
            local.get 1
            local.get 0
            i32.load offset=12
            memory.copy
            local.get 10
            local.get 2
            local.get 0
            i32.load offset=16
            memory.copy
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            local.get 13
            i32.store8
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66684
        local.get 17
        i32.store
        local.get 4
        i32.const 256
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 7
    global.get 2
    i32.load
    local.get 7
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 7
    local.get 0
    i32.store
    local.get 7
    local.get 1
    i32.store offset=4
    local.get 7
    local.get 2
    i32.store offset=8
    local.get 7
    local.get 3
    i32.store offset=12
    local.get 7
    local.get 4
    i32.store offset=16
    local.get 7
    local.get 6
    i32.store offset=20
    local.get 7
    local.get 8
    i32.store offset=24
    local.get 7
    local.get 5
    i32.store offset=28
    local.get 7
    local.get 9
    i32.store offset=32
    local.get 7
    local.get 10
    i32.store offset=36
    local.get 7
    local.get 11
    i32.store offset=40
    local.get 7
    local.get 12
    i32.store offset=44
    local.get 7
    local.get 13
    i32.store offset=48
    local.get 7
    local.get 14
    i32.store offset=52
    local.get 7
    local.get 15
    i32.store offset=56
    local.get 7
    local.get 17
    i32.store offset=60
    local.get 7
    local.get 18
    i32.store offset=64
    global.get 2
    global.get 2
    i32.load
    i32.const 68
    i32.add
    i32.store)
  (func $runtime.sliceAppend (type 10) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 2
    i32.store offset=4
    i32.const 66684
    i32.load
    local.set 9
    i32.const 66684
    local.get 7
    i32.store
    local.get 7
    local.get 9
    i32.store
    block  ;; label = @1
      local.get 5
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.set 6
        local.get 3
        local.set 8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        local.get 3
        local.get 5
        i32.add
        local.tee 8
        i32.ge_u
        if  ;; label = @3
          local.get 1
          local.set 6
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 6
        loop  ;; label = @3
          local.get 6
          local.tee 4
          i32.const 1
          i32.shl
          local.set 6
          local.get 4
          local.get 8
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 7
        local.get 4
        call $runtime.alloc
        local.tee 6
        i32.store offset=8
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 1
        local.get 3
        memory.copy
      end
      local.get 7
      local.get 6
      i32.store offset=12
      local.get 3
      local.get 6
      i32.add
      local.get 2
      local.get 5
      memory.copy
    end
    i32.const 66684
    local.get 9
    i32.store
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $runtime.stringConcat (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i64.const 0
    i64.store offset=20 align=4
    local.get 5
    i64.const 3
    i64.store offset=12 align=4
    i32.const 66684
    i32.load
    local.set 7
    i32.const 66684
    local.get 5
    i32.const 8
    i32.add
    i32.store
    local.get 5
    local.get 7
    i32.store offset=8
    block  ;; label = @1
      local.get 4
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.set 6
        local.get 2
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      local.get 2
      local.get 4
      i32.add
      local.tee 8
      call $runtime.alloc
      local.tee 6
      i32.store offset=20
      local.get 5
      local.get 6
      i32.store offset=24
      local.get 5
      local.get 6
      i32.store offset=16
      local.get 6
      local.get 1
      local.get 2
      memory.copy
      local.get 2
      local.get 6
      i32.add
      local.get 3
      local.get 4
      memory.copy
    end
    i32.const 66684
    local.get 7
    i32.store
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.stringToBytes (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=20 align=4
    local.get 2
    i64.const 3
    i64.store offset=12 align=4
    i32.const 66684
    i32.load
    local.set 3
    i32.const 66684
    local.get 2
    i32.const 8
    i32.add
    i32.store
    local.get 2
    local.get 3
    i32.store offset=8
    local.get 1
    call $runtime.alloc
    local.tee 4
    local.get 0
    local.get 1
    memory.copy
    i32.const 66684
    local.get 3
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $invoke (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 36
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 7
      local.get 1
      i32.load offset=24
      local.set 9
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 10
      local.get 1
      i32.load offset=8
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 6
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 448
        i32.sub
        local.tee 0
        global.set $__stack_pointer
        local.get 0
        i32.const 54
        i32.store offset=228
        local.get 0
        i32.const 232
        i32.add
        i32.const 0
        i32.const 216
        memory.fill
        local.get 0
        i32.const 66684
        i32.load
        local.tee 10
        i32.store offset=224
        i32.const 66684
        local.get 0
        i32.const 224
        i32.add
        i32.store
        local.get 0
        i32.const 1024
        call $runtime.alloc
        local.tee 1
        i32.store offset=232
        i32.const 12
        call $runtime.alloc
        local.tee 2
        i64.const 4398046512128
        i64.store offset=4 align=4
        local.get 2
        local.get 1
        i32.store
        local.get 0
        local.get 2
        i32.store offset=236
        local.get 0
        local.get 2
        i32.store offset=240
        i32.const 4
        call $runtime.alloc
        local.tee 2
        i32.const 0
        i32.store
        local.get 0
        local.get 2
        i32.store offset=244
        local.get 0
        local.get 2
        i32.store offset=248
        i32.const 0
        local.set 4
      end
      local.get 6
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 2
        call $main.sys_params
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 5
      end
      local.get 7
      local.get 5
      i32.eqz
      global.get 1
      select
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 7
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  i32.const 216
                  i32.add
                  local.get 5
                  call $strconv.Itoa
                  local.get 0
                  local.get 0
                  i32.load offset=216
                  local.tee 1
                  i32.store offset=252
                  local.get 0
                  i32.const 208
                  i32.add
                  i32.const 65772
                  i32.const 17
                  local.get 1
                  local.get 0
                  i32.load offset=220
                  call $runtime.stringConcat
                  local.get 0
                  local.get 0
                  i32.load offset=208
                  local.tee 1
                  i32.store offset=256
                  local.get 0
                  local.get 1
                  local.get 0
                  i32.load offset=212
                  call $errors.New
                  local.tee 2
                  i32.store offset=260
                  i32.const 0
                  local.set 7
                  i32.const 2021
                  br 1 (;@6;)
                end
                local.get 2
                i32.load
                local.tee 7
                i32.const 1024
                i32.gt_u
                br_if 2 (;@4;)
                local.get 1
                local.set 4
                i32.const 0
                local.set 2
                i32.const 0
              end
              local.set 5
              local.get 0
              local.get 4
              i32.store offset=264
              local.get 0
              local.get 2
              i32.store offset=268
              local.get 5
              if  ;; label = @6
                local.get 0
                i32.const 200
                i32.add
                local.get 2
                local.get 5
                call $#func8<interface:_Error:func:___basic:string__.Error$invoke>
                local.get 0
                local.get 0
                i32.load offset=200
                local.tee 2
                i32.store offset=276
                local.get 0
                i32.load offset=204
                local.set 1
                br 3 (;@3;)
              end
              local.get 0
              i32.const 192
              i32.add
              local.get 4
              local.get 7
              call $runtime.stringFromBytes
              local.get 0
              local.get 0
              i32.load offset=192
              local.tee 1
              i32.store offset=280
              local.get 0
              i32.const 184
              i32.add
              i32.const 65789
              i32.const 12
              local.get 1
              local.get 0
              i32.load offset=196
              local.tee 4
              call $runtime.stringConcat
              local.get 0
              local.get 0
              i32.load offset=184
              local.tee 2
              i32.store offset=284
              local.get 0
              i32.load offset=188
              local.set 1
            end
            local.get 6
            i32.const 1
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 2
              local.get 1
              call $main.log
              i32.const 1
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 1
            end
            local.get 6
            i32.const 2
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              i32.const 65801
              i32.const 5
              call $main.log
              i32.const 2
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 1
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 65806
              i32.const 677
              call $runtime.stringToBytes
              local.tee 1
              i32.store offset=288
              i32.const 12
              call $runtime.alloc
              local.tee 2
              i64.const 2907692860069
              i64.store offset=4 align=4
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 2
              i32.store offset=292
              local.get 0
              local.get 2
              i32.store offset=296
            end
            local.get 6
            i32.const 3
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              i32.const 66520
              i32.const 13
              local.get 1
              i32.const 677
              call $main.fs_write
              i32.const 3
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 2
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 1
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 176
                i32.add
                local.get 2
                call $strconv.Itoa
                local.get 0
                local.get 0
                i32.load offset=176
                local.tee 1
                i32.store offset=300
                local.get 0
                i32.const 168
                i32.add
                i32.const 65772
                i32.const 17
                local.get 1
                local.get 0
                i32.load offset=180
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=168
                local.tee 1
                i32.store offset=304
                local.get 0
                local.get 1
                local.get 0
                i32.load offset=172
                call $errors.New
                local.tee 1
                i32.store offset=308
                i32.const 2021
              end
              local.set 2
              local.get 0
              local.get 1
              i32.store offset=312
              local.get 2
              i32.eqz
              local.set 4
            end
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                br_if 1 (;@5;)
                local.get 0
                i32.const 160
                i32.add
                local.get 1
                local.get 2
                call $#func8<interface:_Error:func:___basic:string__.Error$invoke>
                local.get 0
                local.get 0
                i32.load offset=160
                local.tee 1
                i32.store offset=316
                local.get 0
                i32.const 152
                i32.add
                i32.const 66483
                i32.const 11
                local.get 1
                local.get 0
                i32.load offset=164
                local.tee 4
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=152
                local.tee 2
                i32.store offset=320
                local.get 0
                i32.load offset=156
                local.set 1
              end
              local.get 6
              i32.const 4
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 2
                local.get 1
                call $main.log
                i32.const 4
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
                local.set 1
              end
            end
            local.get 6
            i32.const 5
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              i32.const 66494
              i32.const 13
              call $main.log
              i32.const 5
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 1
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 1024
              call $runtime.alloc
              local.tee 5
              i32.store offset=324
              i32.const 12
              call $runtime.alloc
              local.tee 2
              i64.const 4398046512128
              i64.store offset=4 align=4
              local.get 2
              local.get 5
              i32.store
              local.get 0
              local.get 2
              i32.store offset=328
              local.get 0
              local.get 2
              i32.store offset=332
              i32.const 0
              local.set 7
              i32.const 0
              local.set 9
              i32.const 0
              local.set 4
              i32.const 0
              local.set 1
            end
            block  ;; label = @5
              loop  ;; label = @6
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  local.get 1
                  i32.store offset=336
                  i32.const 4
                  call $runtime.alloc
                  local.tee 2
                  i32.const 0
                  i32.store
                  local.get 0
                  local.get 2
                  i32.store offset=340
                  local.get 0
                  local.get 2
                  i32.store offset=344
                end
                local.get 6
                i32.const 6
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 5
                  i32.const 66520
                  i32.const 13
                  local.get 4
                  local.get 2
                  call $main.fs_read
                  i32.const 6
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                  local.set 8
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 8
                  if  ;; label = @8
                    local.get 0
                    i32.const 144
                    i32.add
                    local.get 8
                    call $strconv.Itoa
                    local.get 0
                    local.get 0
                    i32.load offset=144
                    local.tee 1
                    i32.store offset=348
                    local.get 0
                    i32.const 136
                    i32.add
                    i32.const 65772
                    i32.const 17
                    local.get 1
                    local.get 0
                    i32.load offset=148
                    call $runtime.stringConcat
                    local.get 0
                    local.get 0
                    i32.load offset=136
                    local.tee 1
                    i32.store offset=352
                    local.get 0
                    local.get 1
                    local.get 0
                    i32.load offset=140
                    call $errors.New
                    local.tee 1
                    i32.store offset=356
                    i32.const 0
                    local.set 2
                    i32.const 2021
                    local.set 4
                    i32.const 0
                    local.set 5
                    br 3 (;@5;)
                  end
                  local.get 2
                  i32.load
                  local.tee 2
                  i32.const 1024
                  i32.ne
                  local.tee 8
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    i32.const 8
                    i32.add
                    local.tee 2
                    local.get 1
                    local.get 5
                    local.get 7
                    local.get 9
                    i32.const 1024
                    call $runtime.sliceAppend
                    local.get 0
                    local.get 0
                    i32.load offset=8
                    local.tee 1
                    i32.store offset=360
                    local.get 4
                    i32.const 1024
                    i32.add
                    local.set 4
                    local.get 0
                    i32.load offset=16
                    local.set 9
                    local.get 0
                    i32.load offset=12
                    local.set 7
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 2
                i32.const 1024
                i32.gt_u
                br_if 2 (;@4;)
                local.get 0
                i32.const 120
                i32.add
                local.get 1
                local.get 5
                local.get 7
                local.get 9
                local.get 2
                call $runtime.sliceAppend
                local.get 0
                local.get 0
                i32.load offset=120
                local.tee 2
                i32.store offset=364
                i32.const 0
                local.set 4
                local.get 0
                i32.load offset=124
                local.set 5
                i32.const 0
                local.set 1
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 2
              i32.store offset=368
              local.get 0
              local.get 1
              i32.store offset=372
              local.get 4
              i32.eqz
              local.set 7
            end
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 7
                br_if 1 (;@5;)
                local.get 0
                i32.const 112
                i32.add
                local.get 1
                local.get 4
                call $#func8<interface:_Error:func:___basic:string__.Error$invoke>
                local.get 0
                local.get 0
                i32.load offset=112
                local.tee 1
                i32.store offset=376
                local.get 0
                i32.const 104
                i32.add
                i32.const 66533
                i32.const 10
                local.get 1
                local.get 0
                i32.load offset=116
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=104
                local.tee 1
                i32.store offset=380
                local.get 0
                i32.load offset=108
                local.set 4
              end
              local.get 6
              i32.const 7
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 1
                local.get 4
                call $main.log
                i32.const 7
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
                local.set 1
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 96
              i32.add
              local.get 2
              local.get 5
              call $runtime.stringFromBytes
              local.get 0
              local.get 0
              i32.load offset=96
              local.tee 1
              i32.store offset=384
              local.get 0
              i32.const 88
              i32.add
              i32.const 66507
              i32.const 13
              local.get 1
              local.get 0
              i32.load offset=100
              local.tee 4
              call $runtime.stringConcat
              local.get 0
              local.get 0
              i32.load offset=88
              local.tee 2
              i32.store offset=388
              local.get 0
              i32.load offset=92
              local.set 1
            end
            local.get 6
            i32.const 8
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 2
              local.get 1
              call $main.log
              i32.const 8
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 1
            end
            local.get 6
            i32.const 9
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              i32.const 66520
              i32.const 13
              call $main.fs_delete
              i32.const 9
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 2
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 1
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 80
                i32.add
                local.get 2
                call $strconv.Itoa
                local.get 0
                local.get 0
                i32.load offset=80
                local.tee 1
                i32.store offset=392
                local.get 0
                i32.const 72
                i32.add
                i32.const 65772
                i32.const 17
                local.get 1
                local.get 0
                i32.load offset=84
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=72
                local.tee 1
                i32.store offset=396
                local.get 0
                local.get 1
                local.get 0
                i32.load offset=76
                call $errors.New
                local.tee 1
                i32.store offset=400
                i32.const 2021
              end
              local.set 2
              local.get 0
              local.get 1
              i32.store offset=404
              local.get 2
              i32.eqz
              local.set 4
            end
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                br_if 1 (;@5;)
                local.get 0
                i32.const -64
                i32.sub
                local.get 1
                local.get 2
                call $#func8<interface:_Error:func:___basic:string__.Error$invoke>
                local.get 0
                local.get 0
                i32.load offset=64
                local.tee 1
                i32.store offset=408
                local.get 0
                i32.const 56
                i32.add
                i32.const 66533
                i32.const 10
                local.get 1
                local.get 0
                i32.load offset=68
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=56
                local.tee 2
                i32.store offset=412
                local.get 0
                i32.load offset=60
                local.set 1
              end
              local.get 6
              i32.const 10
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 2
                local.get 1
                call $main.log
                i32.const 10
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
                local.set 1
              end
            end
            local.get 6
            i32.const 11
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              i32.const 66543
              i32.const 12
              call $main.log
              i32.const 11
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 1
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 66555
              i32.const 6
              call $runtime.stringToBytes
              local.tee 1
              i32.store offset=416
              i32.const 12
              call $runtime.alloc
              local.tee 2
              i64.const 25769803782
              i64.store offset=4 align=4
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 2
              i32.store offset=420
              local.get 0
              local.get 2
              i32.store offset=424
            end
            local.get 6
            i32.const 12
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 1
              i32.const 6
              call $main.sys_ret
              i32.const 12
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 2
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 1
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 48
                i32.add
                local.get 2
                call $strconv.Itoa
                local.get 0
                local.get 0
                i32.load offset=48
                local.tee 1
                i32.store offset=428
                local.get 0
                i32.const 40
                i32.add
                i32.const 65772
                i32.const 17
                local.get 1
                local.get 0
                i32.load offset=52
                call $runtime.stringConcat
                local.get 0
                local.get 0
                i32.load offset=40
                local.tee 1
                i32.store offset=432
                local.get 0
                local.get 1
                local.get 0
                i32.load offset=44
                call $errors.New
                local.tee 1
                i32.store offset=436
                i32.const 2021
              end
              local.set 2
              local.get 0
              local.get 1
              i32.store offset=440
              local.get 2
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              i32.const 32
              i32.add
              local.get 1
              local.get 2
              call $#func8<interface:_Error:func:___basic:string__.Error$invoke>
              local.get 0
              local.get 0
              i32.load offset=32
              local.tee 2
              i32.store offset=444
              local.get 0
              i32.load offset=36
              local.set 1
              br 2 (;@3;)
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            unreachable
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 24
          i32.add
          i32.const 66561
          i32.const 17
          local.get 2
          local.get 1
          call $runtime.stringConcat
          local.get 0
          local.get 0
          i32.load offset=24
          local.tee 2
          i32.store offset=272
          local.get 0
          i32.load offset=28
          local.set 1
        end
        local.get 6
        i32.const 13
        i32.eq
        i32.const 1
        global.get 1
        select
        if  ;; label = @3
          local.get 2
          local.get 1
          call $main.log
          drop
          i32.const 13
          global.get 1
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66684
        local.get 10
        i32.store
        local.get 0
        i32.const 448
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 5
    i32.store offset=16
    local.get 3
    local.get 7
    i32.store offset=20
    local.get 3
    local.get 9
    i32.store offset=24
    local.get 3
    local.get 8
    i32.store offset=28
    local.get 3
    local.get 10
    i32.store offset=32
    global.get 2
    global.get 2
    i32.load
    i32.const 36
    i32.add
    i32.store)
  (func $asyncify_start_unwind (type 2) (param i32)
    i32.const 1
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_stop_unwind (type 5)
    i32.const 0
    global.set 1
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_start_rewind (type 2) (param i32)
    i32.const 2
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_get_state (type 7) (result i32)
    global.get 1)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) i32.const 65536)
  (global (;1;) (mut i32) i32.const 0)
  (global (;2;) (mut i32) i32.const 0)
  (export "memory" (memory 0))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "_start" (func $_start))
  (export "invoke" (func $invoke))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_unwind))
  (export "asyncify_get_state" (func $asyncify_get_state))
  (elem (;0;) (i32.const 1) func $runtime.run$1$gowrapper $runtime.memequal $runtime.hash32)
  (data $.rodata (i32.const 65536) "0123456789abcdefghijklmnopqrstuvwxyz00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899code not correct read params start\e6\98\9f\e9\99\85\e6\96\87\e4\bb\b6\e7\b3\bb\e7\bb\9f\e6\98\af\e4\b8\80\e7\a7\8d\e7\82\b9\e5\af\b9\e7\82\b9\e7\9a\84\e5\88\86\e5\b8\83\e5\bc\8f\e6\96\87\e4\bb\b6\e7\b3\bb\e7\bb\9f\ef\bc\8c \e6\97\a8\e5\9c\a8\e8\bf\9e\e6\8e\a5\e6\89\80\e6\9c\89\e6\9c\89\e7\9b\b8\e5\90\8c\e7\9a\84\e6\96\87\e4\bb\b6\e7\b3\bb\e7\bb\9f\e7\9a\84\e8\ae\a1\e7\ae\97\e6\9c\ba\e8\ae\be\e5\a4\87\e3\80\82\e5\9c\a8\e6\9f\90\e4\ba\9b\e6\96\b9\e9\9d\a2\ef\bc\8c IPFS\e7\b1\bb\e4\bc\bc\e4\ba\8eweb, \e4\bd\86web \e6\98\af\e4\b8\ad\e5\bf\83\e5\8c\96\e7\9a\84\ef\bc\8c\e8\80\8cIPFS\e6\98\af\e4\b8\80\e4\b8\aa\e5\8d\95\e4\b8\80\e7\9a\84Bittorrent \e7\be\a4\e9\9b\86\ef\bc\8c \e7\94\a8git \e4\bb\93\e5\ba\93\e5\88\86\e5\b8\83\e5\bc\8f\e5\ad\98\e5\82\a8\e3\80\82\e6\8d\a2\e5\8f\a5\e8\af\9d\e8\af\b4\ef\bc\8c IPFS \e6\8f\90\e4\be\9b\e4\ba\86\e9\ab\98\e5\90\9e\e5\90\90\e9\87\8f\e7\9a\84\e5\86\85\e5\ae\b9\e5\af\bb\e5\9d\80\e5\9d\97\e5\ad\98\e5\82\a8\e6\a8\a1\e5\9e\8b\ef\bc\8c \e5\85\b7\e6\9c\89\e5\86\85\e5\ae\b9\e5\af\bb\e5\9d\80\e7\9a\84\e8\b6\85\e9\93\be\e6\8e\a5\e3\80\82\e8\bf\99\e5\bd\a2\e6\88\90\e4\ba\86\e4\b8\80\e4\b8\aa\e5\b9\bf\e4\b9\89\e7\9a\84Merkle DAG \e6\95\b0\e6\8d\ae\e7\bb\93\e6\9e\84\ef\bc\8c\e5\8f\af\e4\bb\a5\e7\94\a8\e8\bf\99\e4\b8\aa\e6\95\b0\e6\8d\ae\e7\bb\93\e6\9e\84\e6\9e\84\e5\bb\ba\e7\89\88\e6\9c\ac\e6\96\87\e4\bb\b6\e7\b3\bb\e7\bb\9f\ef\bc\8c\e5\8c\ba\e5\9d\97\e9\93\be\ef\bc\8c\e7\94\9a\e8\87\b3\e6\98\af\e6\b0\b8\e4\b9\85\e6\80\a7\e7\bd\91\e7\ab\99\e3\80\82\e3\80\82IPFS \e7\bb\93\e5\90\88\e4\ba\86\e5\88\86\e5\b8\83\e5\bc\8f\e5\93\88\e5\b8\8c\e8\a1\a8\ef\bc\8c \e5\b8\a6\e6\9c\89\e6\bf\80\e5\8a\b1\e6\9c\ba\e5\88\b6\e7\9a\84\e5\9d\97\e4\ba\a4\e6\8d\a2\e5\92\8c\e8\87\aa\e6\88\91\e8\ae\a4\e8\af\81\e5\91\bd\e5\90\8d\e7\a9\ba\e9\97\b4\e3\80\82IPFS \e6\b2\a1\e6\9c\89\e5\8d\95\e6\95\85\e9\9a\9c\e7\82\b9\ef\bc\8c \e8\8a\82\e7\82\b9\e4\b8\8d\e9\9c\80\e8\a6\81\e7\9b\b8\e4\ba\92\e4\bf\a1\e4\bb\bb\e3\80\82write fail write successread success ./fs_test.datread fail read success\e5\ae\8c\e6\af\95read params fail ")
  (data $.data (i32.const 66580) "\c1\82\01\00\84\04\01\00\c1\82\01\00\00\00\00\00\04\00\00\00\0c\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03"))