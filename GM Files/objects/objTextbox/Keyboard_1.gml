if (selected == true)
{
    if (string_width(keyboard_string) < max_width) //if keyboard_string's width is smaller than the maximum
    {
        txt = keyboard_string; //set txt to keyboard_string
    }
    else
    {
        keyboard_string = txt; //set keyboard_string to txt
    }
}