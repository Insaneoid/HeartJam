/// @description

	
file = file_text_open_read("Scores.txt");

nam			= ds_list_create();
point		= ds_list_create();
namSorted	= ds_list_create();
pointSorted = ds_list_create();

for(var i = 0; i < 10; i++)
{
	ds_list_add(nam, file_text_read_string(file));
	file_text_readln(file);
	ds_list_add(point, file_text_read_real(file));
	file_text_readln(file);
}


ds_list_add(nam, global.name);
ds_list_add(point, global.points);

ds_list_copy(namSorted, nam);
ds_list_copy(pointSorted, point);

ds_list_sort(pointSorted, false);
file_text_close(file);
file_text_open_write(file);

for(var j =0; j < 10; j++)
{
	temp = ds_list_find_index(pointSorted, ds_list_find_value(point, j));
	namSorted[|j] = ds_list_find_value(nam, temp);
	
		file_text_write_string(file, ds_list_find_value(namSorted, j));
		file_text_writeln(file);
		file_text_write_real(file, ds_list_find_value(pointSorted, j));
		file_text_writeln(file);
}

file_text_close(file);
