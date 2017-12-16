.data
.balign 4
a:
	.word 9
.balign 4
b:
	.word 10
.balign 4 
c:
	.word 3
.balign 4
max:
	.word 0

.text
.balign 4
.global main
main:
	ldr r1, addressOfA
	ldr r1, [r1]
	ldr r2, addressOfB
	ldr r2, [r2]
	ldr r3, addressOfC
	ldr r3, [r3]
	ldr r0, addressOfMax
	ldr r0, [r0]
	cmp r1, r2
	bge case1
case4:
	cmp r2, r3
	bge case5
case6:
	mov r0, r3
	b end
case5:
	mov r0, r2
	b end
case1:
	cmp r1, r3
	bge case2
case3:
	mov r0, r3
	b end
case2:
	mov r0, r1
	b end
end:
	bx lr

addressOfA: .word a
addressOfB: .word b
addressOfC: .word c
addressOfMax: .word max
