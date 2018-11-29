.data
.LC0:
        .ascii  "Paso uno \000"
.LC1:
        .ascii  "Paso dos \000"
.LC2:
        .ascii  "Paso tres \000"
.LC3:
        .ascii  "Paso cuatro: \000"

.text
.global main

main:
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #16
        ldr     r0, .L195
        bl      printf
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        mov     r3, #0
        str     r3, [fp, #-8]
        b       .L2
.L5:
        mov     r3, #0
        str     r3, [fp, #-12]
        b       .L3
.L4:
        mov     r0, #33
        bl      putchar
        ldr     r3, [fp, #-12]
        add     r3, r3, #1
        str     r3, [fp, #-12]
.L3:
        ldr     r3, [fp, #-12]
        cmp     r3, #107
        ble     .L4
        mov     r0, #10
        bl      putchar
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        str     r3, [fp, #-8]
.L2:
        ldr     r3, [fp, #-8]
        cmp     r3, #107
        ble     .L5
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        ldr     r0, .L195+4
        bl      printf
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        mov     r3, #0
        str     r3, [fp, #-8]
        b       .L6
.L12:
        mov     r3, #0
        str     r3, [fp, #-12]
        b       .L7
.L11:
        ldr     r3, [fp, #-8]
        cmp     r3, #35
        ble     .L8
        ldr     r3, [fp, #-8]
        cmp     r3, #72
        bgt     .L8
        ldr     r3, [fp, #-12]
        cmp     r3, #35
        ble     .L8
        ldr     r3, [fp, #-12]
        cmp     r3, #72
        bgt     .L8
        mov     r0, #32
        bl      putchar
        b       .L9
.L8:
        mov     r0, #36
        bl      putchar
.L9:
        ldr     r3, [fp, #-12]
        cmp     r3, #107
        bne     .L10
        mov     r0, #10
        bl      putchar
.L10:
        ldr     r3, [fp, #-12]
        add     r3, r3, #1
        str     r3, [fp, #-12]
.L7:
        ldr     r3, [fp, #-12]
        cmp     r3, #107
        ble     .L11
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        str     r3, [fp, #-8]
.L6:
        ldr     r3, [fp, #-8]
        cmp     r3, #107
        ble     .L12
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        ldr     r0, .L195+8
        bl      printf
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        mov     r3, #0
        str     r3, [fp, #-16]
        b       .L13
.L31:
        mov     r3, #0
        str     r3, [fp, #-20]
        b       .L14
.L30:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L15
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L15
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L15
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L16
.L15:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L17
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L17
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L17
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L16
.L17:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L18
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L18
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L18
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L18
.L16:
        mov     r0, #32
        bl      putchar
        b       .L19
.L18:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L20
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L20
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L20
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L21
.L20:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L22
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L22
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L22
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L21
.L22:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L23
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L23
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L23
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L23
.L21:
        mov     r0, #32
        bl      putchar
        b       .L19
.L23:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L24
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L24
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L24
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L25
.L24:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L26
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L26
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L26
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L25
.L26:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L27
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L27
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L27
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L27
.L25:
        mov     r0, #32
        bl      putchar
        b       .L19
.L27:
        ldr     r3, [fp, #-16]
        cmp     r3, #35
        ble     .L28
        ldr     r3, [fp, #-16]
        cmp     r3, #72
        bgt     .L28
        ldr     r3, [fp, #-20]
        cmp     r3, #35
        ble     .L28
        ldr     r3, [fp, #-20]
        cmp     r3, #72
        bgt     .L28
        mov     r0, #32
        bl      putchar
        b       .L19
.L28:
        mov     r0, #35
        bl      putchar
.L19:
        ldr     r3, [fp, #-20]
        cmp     r3, #107
        bne     .L29
        mov     r0, #10
        bl      putchar
.L29:
        ldr     r3, [fp, #-20]
        add     r3, r3, #1
        str     r3, [fp, #-20]
.L14:
        ldr     r3, [fp, #-20]
        cmp     r3, #107
        ble     .L30
        ldr     r3, [fp, #-16]
        add     r3, r3, #1
        str     r3, [fp, #-16]
.L13:
        ldr     r3, [fp, #-16]
        cmp     r3, #107
        ble     .L31
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        ldr     r0, .L195+12
        bl      printf
        mov     r0, #10
        bl      putchar
        mov     r0, #10
        bl      putchar
        mov     r3, #0
        str     r3, [fp, #-16]
        b       .L32
.L193:
        mov     r3, #0
        str     r3, [fp, #-20]
        b       .L33
.L192:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L34
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L34
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L34
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L35
.L34:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L36
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L36
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L36
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L35
.L36:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L37
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L37
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L37
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L35
.L37:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L38
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L38
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L38
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L35
.L38:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L39
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L39
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L39
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L35
.L39:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L40
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L40
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L40
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L35
.L40:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L41
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L41
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L41
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L35
.L41:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L42
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L42
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L42
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L35
.L42:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L43
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L43
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L43
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L35
.L43:
        ldr     r3, [fp, #-16]
        cmp     r3, #4
        ble     .L44
        ldr     r3, [fp, #-16]
        cmp     r3, #7
        bgt     .L44
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L44
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L44
.L35:
        mov     r0, #32
        bl      putchar
        b       .L45
.L44:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L46
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L46
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L46
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L47
.L46:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L48
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L48
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L48
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L47
.L48:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L49
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L49
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L49
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L47
.L49:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L50
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L50
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L50
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L47
.L50:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L51
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L51
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L51
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L47
.L51:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L52
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L52
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L52
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L47
.L52:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L53
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L53
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L53
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L47
.L53:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L54
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L54
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L54
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L47
.L54:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L55
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L55
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L55
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L47
.L55:
        ldr     r3, [fp, #-16]
        cmp     r3, #12
        ble     .L56
        ldr     r3, [fp, #-16]
        cmp     r3, #15
        bgt     .L56
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L56
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L56
.L47:
        mov     r0, #32
        bl      putchar
        b       .L45
.L56:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L57
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L57
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L57
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L58
.L57:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L59
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L59
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L59
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L58
.L59:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L60
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L60
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L60
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L58
.L60:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L61
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L61
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L61
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L58
.L61:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L62
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L62
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L62
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L58
.L62:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L63
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L63
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L63
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L58
.L63:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L64
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L64
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L64
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L58
.L64:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L65
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L65
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L65
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L58
.L65:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L66
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L66
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L66
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L58
.L66:
        ldr     r3, [fp, #-16]
        cmp     r3, #20
        ble     .L67
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L67
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L67
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L67
.L58:
        mov     r0, #32
        bl      putchar
        b       .L45
.L67:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L68
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L68
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L68
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L69
.L68:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L70
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L70
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L70
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L69
.L70:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L71
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L71
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L71
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L69
.L71:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L72
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L72
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L72
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L69
.L72:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L73
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L73
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L73
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L69
.L73:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L74
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L74
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L74
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L69
.L74:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L75
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L75
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L75
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L69
.L75:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L76
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L76
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L76
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L69
.L76:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L77
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L77
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L77
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L69
.L77:
        ldr     r3, [fp, #-16]
        cmp     r3, #28
        ble     .L78
        ldr     r3, [fp, #-16]
        cmp     r3, #31
        bgt     .L78
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L78
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L78
.L69:
        mov     r0, #32
        bl      putchar
        b       .L45
.L78:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L79
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L79
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L79
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L80
.L79:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L81
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L81
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L81
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L80
.L81:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L82
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L82
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L82
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L80
.L82:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L83
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L83
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L83
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L80
.L83:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L84
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L84
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L84
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L80
.L84:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L85
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L85
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L85
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L80
.L85:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L86
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L86
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L86
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L80
.L86:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L87
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L87
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L87
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L80
.L87:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L88
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L88
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L88
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L80
.L88:
        ldr     r3, [fp, #-16]
        cmp     r3, #36
        ble     .L89
        ldr     r3, [fp, #-16]
        cmp     r3, #39
        bgt     .L89
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L89
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L89
.L80:
        mov     r0, #32
        bl      putchar
        b       .L45
.L89:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L90
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L90
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L90
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L91
.L90:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L92
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L92
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L92
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L91
.L92:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L93
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L93
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L93
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L91
.L93:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L94
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L94
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L94
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L91
.L94:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L95
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L95
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L95
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L91
.L95:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L96
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L96
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L96
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L91
.L96:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L97
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L97
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L97
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L91
.L97:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L98
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L98
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L98
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L91
.L98:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L99
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L99
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L99
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L91
.L99:
        ldr     r3, [fp, #-16]
        cmp     r3, #44
        ble     .L100
        ldr     r3, [fp, #-16]
        cmp     r3, #47
        bgt     .L100
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L100
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L100
.L91:
        mov     r0, #32
        bl      putchar
        b       .L45
.L195:
        .word   .LC0
        .word   .LC1
        .word   .LC2
        .word   .LC3
.L100:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L101
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L101
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L101
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L102
.L101:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L103
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L103
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L103
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L102
.L103:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L104
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L104
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L104
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L102
.L104:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L105
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L105
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L105
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L102
.L105:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L106
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L106
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L106
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L102
.L106:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L107
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L107
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L107
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L102
.L107:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L108
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L108
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L108
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L102
.L108:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L109
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L109
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L109
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L102
.L109:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L110
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L110
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L110
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L102
.L110:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L111
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L111
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L111
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L111
.L102:
        mov     r0, #32
        bl      putchar
        b       .L45
.L111:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L112
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L112
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L112
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L113
.L112:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L114
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L114
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L114
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L113
.L114:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L115
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L115
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L115
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L113
.L115:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L116
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L116
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L116
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L113
.L116:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L117
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L117
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L117
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L113
.L117:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L118
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L118
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L118
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L113
.L118:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L119
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L119
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L119
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L113
.L119:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L120
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L120
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L120
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L113
.L120:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L121
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L121
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L121
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L113
.L121:
        ldr     r3, [fp, #-16]
        cmp     r3, #60
        ble     .L122
        ldr     r3, [fp, #-16]
        cmp     r3, #63
        bgt     .L122
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L122
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L122
.L113:
        mov     r0, #32
        bl      putchar
        b       .L45
.L122:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L123
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L123
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L123
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L124
.L123:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L125
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L125
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L125
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L124
.L125:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L126
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L126
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L126
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L124
.L126:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L127
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L127
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L127
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L124
.L127:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L128
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L128
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L128
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L124
.L128:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L129
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L129
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L129
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L124
.L129:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L130
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L130
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L130
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L124
.L130:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L131
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L131
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L131
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L124
.L131:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L132
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L132
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L132
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L124
.L132:
        ldr     r3, [fp, #-16]
        cmp     r3, #68
        ble     .L133
        ldr     r3, [fp, #-16]
        cmp     r3, #71
        bgt     .L133
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L133
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L133
.L124:
        mov     r0, #32
        bl      putchar
        b       .L45
.L133:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L134
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L134
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L134
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L135
.L134:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L136
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L136
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L136
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L135
.L136:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L137
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L137
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L137
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L135
.L137:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L138
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L138
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L138
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L135
.L138:
        ldr     r3, [fp, #-16]
        cmp     r3, #52
        ble     .L139
        ldr     r3, [fp, #-16]
        cmp     r3, #55
        bgt     .L139
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L139
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L135
.L139:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L140
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L140
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L140
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L135
.L140:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L141
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L141
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L141
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L135
.L141:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L142
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L142
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L142
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L135
.L142:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L143
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L143
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L143
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L135
.L143:
        ldr     r3, [fp, #-16]
        cmp     r3, #76
        ble     .L144
        ldr     r3, [fp, #-16]
        cmp     r3, #79
        bgt     .L144
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L144
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L144
.L135:
        mov     r0, #32
        bl      putchar
        b       .L45
.L144:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L145
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L145
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L145
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L146
.L145:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L147
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L147
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L147
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L146
.L147:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L148
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L148
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L148
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L146
.L148:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L149
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L149
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L149
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L146
.L149:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L150
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L150
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L150
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L146
.L150:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L151
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L151
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L151
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L146
.L151:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L152
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L152
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L152
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L146
.L152:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L153
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L153
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L153
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L146
.L153:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L154
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L154
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L154
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L146
.L154:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L155
        ldr     r3, [fp, #-16]
        cmp     r3, #87
        bgt     .L155
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L155
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L155
.L146:
        mov     r0, #32
        bl      putchar
        b       .L45
.L155:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L156
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L156
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L156
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L157
.L156:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L158
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L158
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L158
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L157
.L158:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L159
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L159
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L159
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L157
.L159:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L160
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L160
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L160
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L157
.L160:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L161
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L161
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L161
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L157
.L161:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L162
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L162
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L162
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L157
.L162:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L163
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L163
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L163
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L157
.L163:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L164
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L164
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L164
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L157
.L164:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L165
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L165
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L165
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L157
.L165:
        ldr     r3, [fp, #-16]
        cmp     r3, #92
        ble     .L166
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L166
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L166
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L166
.L157:
        mov     r0, #32
        bl      putchar
        b       .L45
.L166:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L167
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L167
        ldr     r3, [fp, #-20]
        cmp     r3, #4
        ble     .L167
        ldr     r3, [fp, #-20]
        cmp     r3, #7
        ble     .L168
.L167:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L169
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L169
        ldr     r3, [fp, #-20]
        cmp     r3, #16
        ble     .L169
        ldr     r3, [fp, #-20]
        cmp     r3, #19
        ble     .L168
.L169:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L170
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L170
        ldr     r3, [fp, #-20]
        cmp     r3, #28
        ble     .L170
        ldr     r3, [fp, #-20]
        cmp     r3, #31
        ble     .L168
.L170:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L171
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L171
        ldr     r3, [fp, #-20]
        cmp     r3, #40
        ble     .L171
        ldr     r3, [fp, #-20]
        cmp     r3, #43
        ble     .L168
.L171:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L172
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L172
        ldr     r3, [fp, #-20]
        cmp     r3, #52
        ble     .L172
        ldr     r3, [fp, #-20]
        cmp     r3, #55
        ble     .L168
.L172:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L173
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L173
        ldr     r3, [fp, #-20]
        cmp     r3, #64
        ble     .L173
        ldr     r3, [fp, #-20]
        cmp     r3, #67
        ble     .L168
.L173:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L174
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L174
        ldr     r3, [fp, #-20]
        cmp     r3, #76
        ble     .L174
        ldr     r3, [fp, #-20]
        cmp     r3, #79
        ble     .L168
.L174:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L175
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L175
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L175
        ldr     r3, [fp, #-20]
        cmp     r3, #87
        ble     .L168
.L175:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L176
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L176
        ldr     r3, [fp, #-20]
        cmp     r3, #92
        ble     .L176
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        ble     .L168
.L176:
        ldr     r3, [fp, #-16]
        cmp     r3, #100
        ble     .L177
        ldr     r3, [fp, #-16]
        cmp     r3, #103
        bgt     .L177
        ldr     r3, [fp, #-20]
        cmp     r3, #100
        ble     .L177
        ldr     r3, [fp, #-20]
        cmp     r3, #103
        bgt     .L177
.L168:
        mov     r0, #32
        bl      putchar
        b       .L45
.L177:
        ldr     r3, [fp, #-16]
        cmp     r3, #35
        ble     .L178
        ldr     r3, [fp, #-16]
        cmp     r3, #72
        bgt     .L178
        ldr     r3, [fp, #-20]
        cmp     r3, #35
        ble     .L178
        ldr     r3, [fp, #-20]
        cmp     r3, #72
        bgt     .L178
        mov     r0, #32
        bl      putchar
        b       .L45
.L178:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L179
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L179
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L179
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L180
.L179:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L181
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L181
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L181
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L180
.L181:
        ldr     r3, [fp, #-16]
        cmp     r3, #11
        ble     .L182
        ldr     r3, [fp, #-16]
        cmp     r3, #23
        bgt     .L182
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L182
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L182
.L180:
        mov     r0, #32
        bl      putchar
        b       .L45
.L182:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L183
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L183
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L183
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L184
.L183:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L185
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L185
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L185
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L184
.L185:
        ldr     r3, [fp, #-16]
        cmp     r3, #48
        ble     .L186
        ldr     r3, [fp, #-16]
        cmp     r3, #59
        bgt     .L186
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L186
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L186
.L184:
        mov     r0, #32
        bl      putchar
        b       .L45
.L186:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L187
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L187
        ldr     r3, [fp, #-20]
        cmp     r3, #11
        ble     .L187
        ldr     r3, [fp, #-20]
        cmp     r3, #23
        ble     .L188
.L187:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L189
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L189
        ldr     r3, [fp, #-20]
        cmp     r3, #48
        ble     .L189
        ldr     r3, [fp, #-20]
        cmp     r3, #59
        ble     .L188
.L189:
        ldr     r3, [fp, #-16]
        cmp     r3, #84
        ble     .L190
        ldr     r3, [fp, #-16]
        cmp     r3, #95
        bgt     .L190
        ldr     r3, [fp, #-20]
        cmp     r3, #84
        ble     .L190
        ldr     r3, [fp, #-20]
        cmp     r3, #95
        bgt     .L190
.L188:
        mov     r0, #32
        bl      putchar
        b       .L45
.L190:
        mov     r0, #46
        bl      putchar
.L45:
        ldr     r3, [fp, #-20]
        cmp     r3, #107
        bne     .L191
        mov     r0, #10
        bl      putchar
.L191:
        ldr     r3, [fp, #-20]
        add     r3, r3, #1
        str     r3, [fp, #-20]
.L33:
        ldr     r3, [fp, #-20]
        cmp     r3, #107
        ble     .L192
        ldr     r3, [fp, #-16]
        add     r3, r3, #1
        str     r3, [fp, #-16]
.L32:
        ldr     r3, [fp, #-16]
        cmp     r3, #107
        ble     .L193
        mov     r3, #0
        mov     r0, r3
        sub     sp, fp, #4
        pop     {fp, lr}
        bx      lr
