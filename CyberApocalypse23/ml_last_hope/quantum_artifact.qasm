OPENQASM 2.0;
include "qelib1.inc";
qreg q[177];
creg c[176];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[35];
h q[36];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
h q[43];
h q[44];
h q[45];
h q[46];
h q[47];
h q[48];
h q[49];
h q[50];
h q[51];
h q[52];
h q[53];
h q[54];
h q[55];
h q[56];
h q[57];
h q[58];
h q[59];
h q[60];
h q[61];
h q[62];
h q[63];
h q[64];
h q[65];
h q[66];
h q[67];
h q[68];
h q[69];
h q[70];
h q[71];
h q[72];
h q[73];
h q[74];
h q[75];
h q[76];
h q[77];
h q[78];
h q[79];
h q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
h q[86];
h q[87];
h q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
h q[96];
h q[97];
h q[98];
h q[99];
h q[100];
h q[101];
h q[102];
h q[103];
h q[104];
h q[105];
h q[106];
h q[107];
h q[108];
h q[109];
h q[110];
h q[111];
h q[112];
h q[113];
h q[114];
h q[115];
h q[116];
h q[117];
h q[118];
h q[119];
h q[120];
h q[121];
h q[122];
h q[123];
h q[124];
h q[125];
h q[126];
h q[127];
h q[128];
h q[129];
h q[130];
h q[131];
h q[132];
h q[133];
h q[134];
h q[135];
h q[136];
h q[137];
h q[138];
h q[139];
h q[140];
h q[141];
h q[142];
h q[143];
h q[144];
h q[145];
h q[146];
h q[147];
h q[148];
h q[149];
h q[150];
h q[151];
h q[152];
h q[153];
h q[154];
h q[155];
h q[156];
h q[157];
h q[158];
h q[159];
h q[160];
h q[161];
h q[162];
h q[163];
h q[164];
h q[165];
h q[166];
h q[167];
h q[168];
h q[169];
h q[170];
h q[171];
h q[172];
h q[173];
h q[174];
h q[175];
x q[176];
h q[176];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72],q[73],q[74],q[75],q[76],q[77],q[78],q[79],q[80],q[81],q[82],q[83],q[84],q[85],q[86],q[87],q[88],q[89],q[90],q[91],q[92],q[93],q[94],q[95],q[96],q[97],q[98],q[99],q[100],q[101],q[102],q[103],q[104],q[105],q[106],q[107],q[108],q[109],q[110],q[111],q[112],q[113],q[114],q[115],q[116],q[117],q[118],q[119],q[120],q[121],q[122],q[123],q[124],q[125],q[126],q[127],q[128],q[129],q[130],q[131],q[132],q[133],q[134],q[135],q[136],q[137],q[138],q[139],q[140],q[141],q[142],q[143],q[144],q[145],q[146],q[147],q[148],q[149],q[150],q[151],q[152],q[153],q[154],q[155],q[156],q[157],q[158],q[159],q[160],q[161],q[162],q[163],q[164],q[165],q[166],q[167],q[168],q[169],q[170],q[171],q[172],q[173],q[174],q[175],q[176];
cx q[0],q[176];
cx q[2],q[176];
cx q[3],q[176];
cx q[4],q[176];
cx q[5],q[176];
cx q[6],q[176];
cx q[8],q[176];
cx q[9],q[176];
cx q[12],q[176];
cx q[13],q[176];
cx q[20],q[176];
cx q[21],q[176];
cx q[22],q[176];
cx q[28],q[176];
cx q[29],q[176];
cx q[35],q[176];
cx q[37],q[176];
cx q[38],q[176];
cx q[40],q[176];
cx q[41],q[176];
cx q[42],q[176];
cx q[43],q[176];
cx q[44],q[176];
cx q[46],q[176];
cx q[49],q[176];
cx q[50],q[176];
cx q[53],q[176];
cx q[54],q[176];
cx q[60],q[176];
cx q[61],q[176];
cx q[64],q[176];
cx q[65],q[176];
cx q[66],q[176];
cx q[67],q[176];
cx q[68],q[176];
cx q[70],q[176];
cx q[72],q[176];
cx q[73],q[176];
cx q[76],q[176];
cx q[77],q[176];
cx q[80],q[176];
cx q[81],q[176];
cx q[84],q[176];
cx q[85],q[176];
cx q[86],q[176];
cx q[92],q[176];
cx q[93],q[176];
cx q[94],q[176];
cx q[96],q[176];
cx q[98],q[176];
cx q[99],q[176];
cx q[101],q[176];
cx q[102],q[176];
cx q[104],q[176];
cx q[108],q[176];
cx q[109],q[176];
cx q[114],q[176];
cx q[115],q[176];
cx q[117],q[176];
cx q[118],q[176];
cx q[120],q[176];
cx q[121],q[176];
cx q[122],q[176];
cx q[125],q[176];
cx q[126],q[176];
cx q[128],q[176];
cx q[129],q[176];
cx q[130],q[176];
cx q[131],q[176];
cx q[132],q[176];
cx q[134],q[176];
cx q[136],q[176];
cx q[141],q[176];
cx q[142],q[176];
cx q[144],q[176];
cx q[145],q[176];
cx q[147],q[176];
cx q[148],q[176];
cx q[149],q[176];
cx q[150],q[176];
cx q[153],q[176];
cx q[158],q[176];
cx q[162],q[176];
cx q[164],q[176];
cx q[166],q[176];
cx q[171],q[176];
cx q[174],q[176];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72],q[73],q[74],q[75],q[76],q[77],q[78],q[79],q[80],q[81],q[82],q[83],q[84],q[85],q[86],q[87],q[88],q[89],q[90],q[91],q[92],q[93],q[94],q[95],q[96],q[97],q[98],q[99],q[100],q[101],q[102],q[103],q[104],q[105],q[106],q[107],q[108],q[109],q[110],q[111],q[112],q[113],q[114],q[115],q[116],q[117],q[118],q[119],q[120],q[121],q[122],q[123],q[124],q[125],q[126],q[127],q[128],q[129],q[130],q[131],q[132],q[133],q[134],q[135],q[136],q[137],q[138],q[139],q[140],q[141],q[142],q[143],q[144],q[145],q[146],q[147],q[148],q[149],q[150],q[151],q[152],q[153],q[154],q[155],q[156],q[157],q[158],q[159],q[160],q[161],q[162],q[163],q[164],q[165],q[166],q[167],q[168],q[169],q[170],q[171],q[172],q[173],q[174],q[175],q[176];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[35];
h q[36];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
h q[43];
h q[44];
h q[45];
h q[46];
h q[47];
h q[48];
h q[49];
h q[50];
h q[51];
h q[52];
h q[53];
h q[54];
h q[55];
h q[56];
h q[57];
h q[58];
h q[59];
h q[60];
h q[61];
h q[62];
h q[63];
h q[64];
h q[65];
h q[66];
h q[67];
h q[68];
h q[69];
h q[70];
h q[71];
h q[72];
h q[73];
h q[74];
h q[75];
h q[76];
h q[77];
h q[78];
h q[79];
h q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
h q[86];
h q[87];
h q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
h q[96];
h q[97];
h q[98];
h q[99];
h q[100];
h q[101];
h q[102];
h q[103];
h q[104];
h q[105];
h q[106];
h q[107];
h q[108];
h q[109];
h q[110];
h q[111];
h q[112];
h q[113];
h q[114];
h q[115];
h q[116];
h q[117];
h q[118];
h q[119];
h q[120];
h q[121];
h q[122];
h q[123];
h q[124];
h q[125];
h q[126];
h q[127];
h q[128];
h q[129];
h q[130];
h q[131];
h q[132];
h q[133];
h q[134];
h q[135];
h q[136];
h q[137];
h q[138];
h q[139];
h q[140];
h q[141];
h q[142];
h q[143];
h q[144];
h q[145];
h q[146];
h q[147];
h q[148];
h q[149];
h q[150];
h q[151];
h q[152];
h q[153];
h q[154];
h q[155];
h q[156];
h q[157];
h q[158];
h q[159];
h q[160];
h q[161];
h q[162];
h q[163];
h q[164];
h q[165];
h q[166];
h q[167];
h q[168];
h q[169];
h q[170];
h q[171];
h q[172];
h q[173];
h q[174];
h q[175];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72],q[73],q[74],q[75],q[76],q[77],q[78],q[79],q[80],q[81],q[82],q[83],q[84],q[85],q[86],q[87],q[88],q[89],q[90],q[91],q[92],q[93],q[94],q[95],q[96],q[97],q[98],q[99],q[100],q[101],q[102],q[103],q[104],q[105],q[106],q[107],q[108],q[109],q[110],q[111],q[112],q[113],q[114],q[115],q[116],q[117],q[118],q[119],q[120],q[121],q[122],q[123],q[124],q[125],q[126],q[127],q[128],q[129],q[130],q[131],q[132],q[133],q[134],q[135],q[136],q[137],q[138],q[139],q[140],q[141],q[142],q[143],q[144],q[145],q[146],q[147],q[148],q[149],q[150],q[151],q[152],q[153],q[154],q[155],q[156],q[157],q[158],q[159],q[160],q[161],q[162],q[163],q[164],q[165],q[166],q[167],q[168],q[169],q[170],q[171],q[172],q[173],q[174],q[175],q[176];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];
measure q[15] -> c[15];
measure q[16] -> c[16];
measure q[17] -> c[17];
measure q[18] -> c[18];
measure q[19] -> c[19];
measure q[20] -> c[20];
measure q[21] -> c[21];
measure q[22] -> c[22];
measure q[23] -> c[23];
measure q[24] -> c[24];
measure q[25] -> c[25];
measure q[26] -> c[26];
measure q[27] -> c[27];
measure q[28] -> c[28];
measure q[29] -> c[29];
measure q[30] -> c[30];
measure q[31] -> c[31];
measure q[32] -> c[32];
measure q[33] -> c[33];
measure q[34] -> c[34];
measure q[35] -> c[35];
measure q[36] -> c[36];
measure q[37] -> c[37];
measure q[38] -> c[38];
measure q[39] -> c[39];
measure q[40] -> c[40];
measure q[41] -> c[41];
measure q[42] -> c[42];
measure q[43] -> c[43];
measure q[44] -> c[44];
measure q[45] -> c[45];
measure q[46] -> c[46];
measure q[47] -> c[47];
measure q[48] -> c[48];
measure q[49] -> c[49];
measure q[50] -> c[50];
measure q[51] -> c[51];
measure q[52] -> c[52];
measure q[53] -> c[53];
measure q[54] -> c[54];
measure q[55] -> c[55];
measure q[56] -> c[56];
measure q[57] -> c[57];
measure q[58] -> c[58];
measure q[59] -> c[59];
measure q[60] -> c[60];
measure q[61] -> c[61];
measure q[62] -> c[62];
measure q[63] -> c[63];
measure q[64] -> c[64];
measure q[65] -> c[65];
measure q[66] -> c[66];
measure q[67] -> c[67];
measure q[68] -> c[68];
measure q[69] -> c[69];
measure q[70] -> c[70];
measure q[71] -> c[71];
measure q[72] -> c[72];
measure q[73] -> c[73];
measure q[74] -> c[74];
measure q[75] -> c[75];
measure q[76] -> c[76];
measure q[77] -> c[77];
measure q[78] -> c[78];
measure q[79] -> c[79];
measure q[80] -> c[80];
measure q[81] -> c[81];
measure q[82] -> c[82];
measure q[83] -> c[83];
measure q[84] -> c[84];
measure q[85] -> c[85];
measure q[86] -> c[86];
measure q[87] -> c[87];
measure q[88] -> c[88];
measure q[89] -> c[89];
measure q[90] -> c[90];
measure q[91] -> c[91];
measure q[92] -> c[92];
measure q[93] -> c[93];
measure q[94] -> c[94];
measure q[95] -> c[95];
measure q[96] -> c[96];
measure q[97] -> c[97];
measure q[98] -> c[98];
measure q[99] -> c[99];
measure q[100] -> c[100];
measure q[101] -> c[101];
measure q[102] -> c[102];
measure q[103] -> c[103];
measure q[104] -> c[104];
measure q[105] -> c[105];
measure q[106] -> c[106];
measure q[107] -> c[107];
measure q[108] -> c[108];
measure q[109] -> c[109];
measure q[110] -> c[110];
measure q[111] -> c[111];
measure q[112] -> c[112];
measure q[113] -> c[113];
measure q[114] -> c[114];
measure q[115] -> c[115];
measure q[116] -> c[116];
measure q[117] -> c[117];
measure q[118] -> c[118];
measure q[119] -> c[119];
measure q[120] -> c[120];
measure q[121] -> c[121];
measure q[122] -> c[122];
measure q[123] -> c[123];
measure q[124] -> c[124];
measure q[125] -> c[125];
measure q[126] -> c[126];
measure q[127] -> c[127];
measure q[128] -> c[128];
measure q[129] -> c[129];
measure q[130] -> c[130];
measure q[131] -> c[131];
measure q[132] -> c[132];
measure q[133] -> c[133];
measure q[134] -> c[134];
measure q[135] -> c[135];
measure q[136] -> c[136];
measure q[137] -> c[137];
measure q[138] -> c[138];
measure q[139] -> c[139];
measure q[140] -> c[140];
measure q[141] -> c[141];
measure q[142] -> c[142];
measure q[143] -> c[143];
measure q[144] -> c[144];
measure q[145] -> c[145];
measure q[146] -> c[146];
measure q[147] -> c[147];
measure q[148] -> c[148];
measure q[149] -> c[149];
measure q[150] -> c[150];
measure q[151] -> c[151];
measure q[152] -> c[152];
measure q[153] -> c[153];
measure q[154] -> c[154];
measure q[155] -> c[155];
measure q[156] -> c[156];
measure q[157] -> c[157];
measure q[158] -> c[158];
measure q[159] -> c[159];
measure q[160] -> c[160];
measure q[161] -> c[161];
measure q[162] -> c[162];
measure q[163] -> c[163];
measure q[164] -> c[164];
measure q[165] -> c[165];
measure q[166] -> c[166];
measure q[167] -> c[167];
measure q[168] -> c[168];
measure q[169] -> c[169];
measure q[170] -> c[170];
measure q[171] -> c[171];
measure q[172] -> c[172];
measure q[173] -> c[173];
measure q[174] -> c[174];
measure q[175] -> c[175];
