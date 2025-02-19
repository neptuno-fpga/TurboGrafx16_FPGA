	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_spi_write
_spi_write:
	stdec	r6
	mt	r3
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
						// allocreg r3
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	8
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi.c, line 7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 102
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi.c, line 7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi.c, line 7
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/spi.c, line 7
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l7
		add	r7
l6: # 

						//../DeMiSTify/firmware/spi.c, line 8
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 301
						// deref 
	ldbinc	r2
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
	.liconst	-44
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// allocreg r1

						//../DeMiSTify/firmware/spi.c, line 7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi.c, line 7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi.c, line 7
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/spi.c, line 7
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
l7: # 
						// freereg r2
						// freereg r3
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
	.section	.text.1
	.global	_spi_read
_spi_read:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
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
						// allocreg r4
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	-44
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi.c, line 14
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 102
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi.c, line 14
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi.c, line 14
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/spi.c, line 14
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7
l13: # 

						//../DeMiSTify/firmware/spi.c, line 15
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/spi.c, line 15
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 503
						// matchobj comparing flags 260 with 1
						// deref 
	ld	r4
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi.c, line 14
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 13
		// Real offset of type is 13, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 260
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi.c, line 14
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi.c, line 14
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/spi.c, line 14
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7
l14: # 
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

