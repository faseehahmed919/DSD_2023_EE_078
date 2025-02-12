module lab3_tb();

	logic A;
	logic B;
	logic C;
	logic X;
	logic Y;

	localparam period = 10;

	lab3 UUT(
	.a(A),
	.b(B),
	.c(C),
	.x(X),
	.y(Y)
	);

	initial
	begin

			A = 0; B = 0; C = 0;
			#period;
			A = 0; B = 0; C = 1;
			#period;
			A = 0; B = 1; C = 0;
			#period;
			A = 0; B = 1; C = 1;
			#period;
			A = 1; B = 0; C = 0;
			#period;
			A = 1; B = 0; C = 1;
			#period;
			A = 1; B = 1; C = 0;
			#period;
			A = 1; B = 1; C = 1;
			#period;
			$stop;

end
initial begin

    $monitor("a = %b, b = %b, c = %b, x = %b, y = %b", A, B, C, X, Y);
end

endmodule