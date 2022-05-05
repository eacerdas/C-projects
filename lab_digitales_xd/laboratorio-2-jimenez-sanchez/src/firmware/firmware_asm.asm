
00000000 <fact-0x10>:
   0:	00004137          	lui	sp,0x4
   4:	00010113          	mv	sp,sp
   8:	068000ef          	jal	ra,70 <main>
   c:	00100073          	ebreak

00000010 <fact>:
  10:	fd010113          	addi	sp,sp,-48 # 3fd0 <end+0x3e80>
  14:	02812623          	sw	s0,44(sp)
  18:	03010413          	addi	s0,sp,48
  1c:	fca42e23          	sw	a0,-36(s0)
  20:	00100793          	li	a5,1
  24:	fef42623          	sw	a5,-20(s0)
  28:	00100793          	li	a5,1
  2c:	fef42423          	sw	a5,-24(s0)
  30:	0200006f          	j	50 <fact+0x40>
  34:	fe842783          	lw	a5,-24(s0)
  38:	fec42703          	lw	a4,-20(s0)
  3c:	02f707b3          	mul	a5,a4,a5
  40:	fef42623          	sw	a5,-20(s0)
  44:	fe842783          	lw	a5,-24(s0)
  48:	00178793          	addi	a5,a5,1
  4c:	fef42423          	sw	a5,-24(s0)
  50:	fe842783          	lw	a5,-24(s0)
  54:	fdc42703          	lw	a4,-36(s0)
  58:	fcf77ee3          	bgeu	a4,a5,34 <fact+0x24>
  5c:	fec42783          	lw	a5,-20(s0)
  60:	00078513          	mv	a0,a5
  64:	02c12403          	lw	s0,44(sp)
  68:	03010113          	addi	sp,sp,48
  6c:	00008067          	ret

