#!/usr/bin/perl

@file_list = `ls ../hospital_compare/rn_backup/*csv` ;



# Open each csv flle and extract the header
for(my$i = 0; $i<=$#file_list; $i++)
{
	chomp($file = $file_list[$i]) ;
	printf ("Opening %s\n", $file) ;
	open my $l, '<', $file or die "Could not open $file $!\n";

	my @lines = <$l>;
	close( $l );

	chomp(my $header = $lines[0]) ; 
	my @fields = split( ",", $header ) ;


	my @file_out = split(/\//, $file) ;
	my @file_sql = split(/\./, $file_out[3]) ;

	$table = $file_sql[0] ;
        # Replace - with _
        $table=~s/-/_/g ;
	# Split again 

	printf("%s.sql is the output file\n", $table) ;
      
	# Output file
	my $out_file = "$table.sql" ;
	open my $out, '>', $out_file or die "Could not open $out_file $!\n";

	printf($out "DROP TABLE IF EXISTS %s_log;\n", $table) ;
	printf($out "CREATE TABLE %s_log\n", $table) ;
	printf($out "(\n") ;
	if ( $file eq "FY2013_Percent_Change_in_Medicare_Payments.csv" ) {
		printf($out "\tChange_in_Base_Operating_DRG_Payment_Amount string,\n") ;
		printf($out "\tNumber_of_Hospitals_Receiving_this__Change string\n") ;
	} else {
		$size = @fields ;
		for(my$j = 0; $j < $size; $j++ ) {
			$token =  $fields[$j] ;
			# Remove white spaces and change it to _
			$token=~s/ /_/g ;
			# Replace - with _
			$token=~s/-/_/g ;
			# Replace / with _
			$token=~s/\//_/g ;
			# Remove ^M (carriage return if present
#			$token=~s/\x0D//;
			# Remove "
#			$token=~s/["]+//;
			$token =~ s/[\$#@~!&*()\[\];.,:?^ `\\\/"\x0D\%]+//g;
	
			if ( $j == ($size-1) ) {
				printf($out "\t%s\tvarchar(500)", $token) ;
			} else {
				printf($out "\t%s\tvarchar(500),\n", $token) ;
			}
		}
	}
	printf($out "\n)\n") ;
	printf($out "ROW FORMAT delimited fields terminated by \'/t\'\n") ;
	printf($out "STORED AS TEXTFILE;\n") ;
	printf($out "\n\nLOAD DATA LOCAL INPATH \"%s\" INTO TABLE %s_log;\n", $file, $table) ;


	close($out) ;
      
}


  
