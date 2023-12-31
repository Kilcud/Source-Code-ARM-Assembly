;	Khởi tạo ngăn xếp đơn giản

		TTL		Ch10Ex4
		AREA	Program, CODE, READONLY
		ENTRY

StackStart		EQU		0x9000
START
		LDR		R1, Value1		    ; đưa giá trị vào các thanh ghi
		LDR		R2, Value2
		LDR		R3, Value3
		LDR		R4, Value4

		LDR		R7, =StackStart	    ; phần trên ngăn xếp = 9000
		STMDB	R7, {R1 – R4}	    ; đẩy R1-R4 vào trên ngăn xếp

		SWI		&11			        ; hoàn thành

		AREA	Data1, DATA
Value1	DCD	    0xFFFF
Value2	DCD	    0xDDDD
Value3	DCD	    0xAAAA
Value4	DCD	    0x3333

		AREA	Data2, DATA
		^	    StackStart	         ; đảo ngược 40 bytes bộ nhớ cho ngăn xếp
Stack1	DCD		0

		END
