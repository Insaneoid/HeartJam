/// @description 
dir = irandom(359);
loot = irandom(100);
item = "Nothing";

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