///////////////////////////////////////////////////////////////////////////////
// 
// All rights reserved.
// File name   : Bin2Gray.v
//
// Author      : ChaoyaWang
// Date        : 2023-10-11
// Version     : 0.1
// Description :
//              任意位宽二进制数据转格雷码模块
//
// Parameter   :
//    
//    ...
// IO Port     :
//    ...
//    ...
// Modification History:
//   Date       |   Author      |   Version     |   Change Description
//==============================================================================
// 2023-10-11   |   ChaoyaWang  |     0.1       |   第一版
////////////////////////////////////////////////////////////////////////////////
module Bin2Gray #(
    parameter DATA_WIDTH = 8
)(
    input       [DATA_WIDTH-1:0]      iBinValue,
    output      [DATA_WIDTH-1:0]      oGrayValue
    
);
    generate
        genvar i;
        for (i = 0; i <DATA_WIDTH-1; i=i+1) begin
            assign oGrayValue[i] = iBinValue[i] ^ iBinValue[i+1];
        end
    endgenerate
    assign  oGrayValue[DATA_WIDTH-1]= iBinValue[DATA_WIDTH-1];
endmodule //Bin2Gray
