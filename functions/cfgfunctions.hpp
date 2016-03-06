class SEPP
{
	tag = "SEPP";
	class functions
	{
		file = "functions";
		class globalHint {};
		class globalNotification {};
		class globalSideChat {};
        class globalSound {};
	};
};
class CleanUp
{
	tag= "TF47_AreaCleanUp";
	class functions
	{
		file = "functions";
		class cleanMarkedPosition {};
	};
};
class VehicleReplacement
{
	tag= "TF47_VehicleReplacement";
	class functions 
	{
		file = "functions";
		class replaceVehicle {};
	};
};
class SamBuilding
{
	tag= "TF47_SamBuilding";
	class functions 
	{
		file = "functions\samBuilding";
		class buildSingleSam {};
		class buildSupply {};
		class buildCCRadar {};
		class buildSA20 {};
		class findSamPosition {};
	};
}