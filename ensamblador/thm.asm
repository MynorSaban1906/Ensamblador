.model small
.data
	;definimos el mensaje que queremos imprimir en DosBox
	;colocamos el 13,10 para que se guarde y se muestre de izquierda a derecha
	; se coloca el simbolo de dolar para que el ensamblador sepa hasta donde debe de terminar la cadena
	;si no se coloca escribiria seguidamente, "y eso no queremos"; porque deseamos que se muestre con saltos de linea
	msg1 db 13,10,'Grupo #5 $'
	msg2 db 13,10,'Walter Oswaldo Mach Velasquez - 201315300 $'
	msg3 db 13,10,'Mynor Alison Isai Saban Che   - 201800516 $'
	msg4 db 13,10,'Kevin Jose Sandoval Catalán   - 201807265 $'
	msg5 db 13,10,'Jorge Isaac Xicol Vicente     - 201807316 $'

.code
	main PROC

	;@data es una constante para regresar info a la pantalla o para I/O
	; @DATA se mueve a un registro
	MOV AX, @data

	; ds registro de segmento es igual a AX donde se encuentra los datos << FUNCION QUE MUESTRA EL MENSAJE >>
	MOV DS, AX

	;se mueve el mensaje a dx, pero ya con esto no muestra el mensaje necestia la interrupcikon
	LEA DX,msg1

	;funcion para imprimir en pantalla
	MOV AH,09H	

	;esta es la interrupcion para imprimir en pantalla
	INT 21H

	; Para mostrar el mensaje 2
	LEA DX,msg2
	MOV AH,09H
	INT 21H

	; Para mostrar el mensaje 3
	LEA DX,msg3
	MOV AH,09H
	INT 21H

	; Para mostrar el mensaje 4
	LEA DX,msg4
	MOV AH,09H
	INT 21H

	; Para mostrar el mensaje 5
	LEA DX,msg5
	MOV AH,09H
	INT 21H

	.exit
	main ENDP
END main

;para compilar se hace:
;1. tasm thm "thm nombre del archivo si tiene mas de 6 caracteres da error"
;2. tlink thm
;3. thm  "solo ingresar el nombre sin extensiones y se muestra el mensaje"