/// @description 

loot = irandom(100);
item = "Nothing";
identify = 0;

if (loot <= 32)
{
	item = "Gun";	
}
else if (loot = 33 && loot <= 64)
{
	item = "Shield";
}
else if (loot = 65 && loot <= 95)
{
	item = "Scanner";
}
else
{
	item = choose("Gun+", "Shield+", "Thruster+");
}