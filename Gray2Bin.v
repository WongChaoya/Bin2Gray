///////////////////////////////////////////////////////////////////////////////
// 
// All rights reserved.
// File name   : Gray2Bin.v
//
// Author      : ChaoyaWang
// Date        : 2023-10-11
// Version     : 0.1
// Description :
//              任意位宽格雷码转二进制数据模块
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
module Gray2Bin #(
    parameter DATA_WIDTH = 8
)(
    input       [DATA_WIDTH-1:0]      iGrayValue,
    output      [DATA_WIDTH-1:0]      oBinValue
    
);
    generate
        genvar i;
        for (i = 0; i<DATA_WIDTH-1; i=i+1) begin
            assign oBinValue[i] = iGrayValue[i] ^ oBinValue[i+1];
        end
    endgenerate
    assign oBinValue[DATA_WIDTH-1] = iGrayValue[DATA_WIDTH-1];
endmodule //Gray2Bin
