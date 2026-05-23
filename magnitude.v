module magnitude #(
   parameter M=0
)(
   input [31:0]Sprev1,
   input [31:0]Sprev2,
   input clk,
   input rst_n,
   input activation_pulse,
   output reg [31:0]mag
    );
   
   wire [63:0] Sprev1sq, Sprev2sq, Sprev1Sprev2, MSprev1Sprev2;
   assign Sprev1sq = Sprev1*Sprev1;
   assign Sprev2sq = Sprev2*Sprev2;
   assign Sprev1Sprev2 = Sprev1 * Sprev2;
   assign MSprev1Sprev2 = M * Sprev1Sprev2[45:14];
   
   always @ (posedge clk or negedge rst_n)
   begin
     if (~rst_n)
     begin
       mag <= 32'b0;
     end
     else if(activation_pulse)
     begin
       //mag <= Sprev1^2 + Sprev2^2 - (M * Sprev1 * Sprev2);
       if (MSprev1Sprev2[45]==1'b0)
       mag <= Sprev1sq[45:14] + Sprev2sq[45:14] - MSprev1Sprev2[45:14];
       else
       mag <= Sprev1sq[45:14] + Sprev2sq[45:14] + MSprev1Sprev2[45:14];
     end
   end  
endmodule