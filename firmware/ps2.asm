	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_ps2_ringbuffer_init
_ps2_ringbuffer_init:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 27
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 28
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 28
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 30
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 30
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 31
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	11
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 31
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_ps2_ringbuffer_write
_ps2_ringbuffer_write:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	10
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 38
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 38
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
						//sizemod based on type 0x403
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 38
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l9
		add	r7
l8: # 

						//../DeMiSTify/firmware/ps2.c, line 38
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// deref 
	byt
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 38
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 62
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 38
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
						//sizemod based on type 0x403
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 38
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
l9: # 
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 41
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// allocreg r2

						//../DeMiSTify/firmware/ps2.c, line 42
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 42
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 42
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 62
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/ps2.c, line 42
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 43
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 2
						// deref 
	byt
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 43
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 43
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 43
						//FIXME convert
						// (convert - reducing type 403 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 44
						//call
						//pcreltotemp
	.lipcrel	_PS2Handler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/ps2.c, line 45
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r4
	.liconst	-16
	sub	r6
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_ps2_ringbuffer_read
_ps2_ringbuffer_read:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4

						//../DeMiSTify/firmware/ps2.c, line 53
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 40
						// deref 
	byt
	ld	r5
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 53
						// (bitwise/arithmetic) 	//ops: 6, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	addt	r5
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 53
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 53
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 53
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7

						//../DeMiSTify/firmware/ps2.c, line 54
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
	.liconst	-1
	mr	r0

						//../DeMiSTify/firmware/ps2.c, line 55
						//pcreltotemp
	.lipcrel	l10
	add	r7
l13: # 

						//../DeMiSTify/firmware/ps2.c, line 55
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 56
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/ps2.c, line 56
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 56
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 4, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	addt	r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 56
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 57
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 6a
						// deref 
	byt
	ld	r4
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 57
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 57
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 57
						//FIXME convert
						// (convert - reducing type 403 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 58
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 59
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r0
						//save_temp done
						// freereg r3
						// freereg r1
l10: # 
						// freereg r4
						// freereg r5
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_ps2_ringbuffer_receive
_ps2_ringbuffer_receive:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/ps2.c, line 64
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	24
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	255
	and	r2
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/ps2.c, line 64
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 64
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 64
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 62
						// reg r3 - only match against tmp
	mt	r3
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//../DeMiSTify/firmware/ps2.c, line 64
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 65
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r4
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 65
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 65
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 65
						// Z disposable
						//FIXME convert
						// (convert - reducing type 403 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r4
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_ps2_ringbuffer_count
_ps2_ringbuffer_count:
	stdec	r6
	.liconst	-16
	add	r6
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 70
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 70
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 70
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 70
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	sgn
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 70
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7

						//../DeMiSTify/firmware/ps2.c, line 71
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 71
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 62
						// deref 
	byt
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 71
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 71
						//setreturn
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0

						//../DeMiSTify/firmware/ps2.c, line 72
						//pcreltotemp
	.lipcrel	l16
	add	r7
l19: # 

						//../DeMiSTify/firmware/ps2.c, line 72
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 501
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 72
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 72
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 501
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 72
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with a
						// matchobj comparing flags a with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	8
						//sizemod based on type 0x403
	ldidx	r6
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 72
						//setreturn
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
l16: # 
						// freereg r1
						// freereg r2
	.liconst	-16
	sub	r6
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_PS2Handler
_PS2Handler:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-12
	add	r6
						// allocreg r3

						//../DeMiSTify/firmware/ps2.c, line 85
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/ps2.c, line 87
						//FIXME convert
						// (convert - reducing type 503 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 21 type 503
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	-32
						//sizemod based on type 0x503
	ldt
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 88
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 21
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2048
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 88
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//../DeMiSTify/firmware/ps2.c, line 89
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 89
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_kbbuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 89
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_receive // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l23: # 
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 91
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1024
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 91
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 93
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_kbbuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 93
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 501
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_kbbuffer, 11
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 93
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 93
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 95
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with a
						// extern
	.liabs	_kbbuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 95
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 12)
	.liabs	_kbbuffer, 12
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/ps2.c, line 95
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 501
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x21
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-32
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 96
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 501
						// extern
	.liabs	_kbbuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 96
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 96
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 96
						//FIXME convert
						// (convert - reducing type 403 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// extern (offset 10)
	.liabs	_kbbuffer, 10
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l27: # 

						//../DeMiSTify/firmware/ps2.c, line 102
						//FIXME convert
						// (convert - reducing type 503 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 21 type 503
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	-28
						//sizemod based on type 0x503
	ldt
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 103
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 21
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2048
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 103
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//../DeMiSTify/firmware/ps2.c, line 104
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 104
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 69
		// Real offset of type is 73, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 104
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_receive // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l29: # 
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 105
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1024
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 105
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 107
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_mousebuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 107
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 501
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_mousebuffer, 11
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 107
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/ps2.c, line 107
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 109
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with a
						// extern
	.liabs	_mousebuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 109
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 12)
	.liabs	_mousebuffer, 12
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/ps2.c, line 109
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 501
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x21
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-28
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 110
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 501
						// extern
	.liabs	_mousebuffer, 10
						//extern deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 110
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 110
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	7
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/ps2.c, line 110
						//FIXME convert
						// (convert - reducing type 403 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// extern (offset 10)
	.liabs	_mousebuffer, 10
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l33: # 
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 114
						//call
						//pcreltotemp
	.lipcrel	_GetInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/ps2.c, line 114
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r6

						//../DeMiSTify/firmware/ps2.c, line 115
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_PS2Init
_PS2Init:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 120
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_kbbuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 120
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_init // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 122
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 122
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_init // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/ps2.c, line 124
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_PS2Handler
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/ps2.c, line 124
						//call
						//pcreltotemp
	.lipcrel	_SetIntHandler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/ps2.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_ClearKeyboard // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
	ldinc	r6
	mr	r7

	.section	.bss.7
	.align	4
	.global	_kbbuffer
	.comm	_kbbuffer,20
	.section	.bss.8
	.align	4
	.global	_mousebuffer
	.comm	_mousebuffer,20
