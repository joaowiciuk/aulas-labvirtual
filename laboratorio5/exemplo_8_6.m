f = imread ( 'Fig0503 (original_pattern).tif' ) ;
[ c, s ]=wavefast ( f , 2 , 'db4' ) ;
wavedisplay ( c , s ) ;
figure ; wavedisplay ( c , s,  8 ) ;
figure ; wavedisplay ( c , s,  -8 ) ;