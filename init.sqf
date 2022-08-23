_p = execVM "params.sqf";
waitUntil {scriptDone _p};

if (isServer) then
{
	//  You can use any of the the following variables to check if a side is all dead or faitally injured and the side has no more lives left.
	//	TOUR_RC_WEST_DEAD 
	//	TOUR_RC_EAST_DEAD
	//	TOUR_RC_INDEPENDENT_DEAD
	//	TOUR_RC_CIVILIAN_DEAD

	waitUntil {!isNil "TOUR_RC_WEST_DEAD"};
	waitUntil {!TOUR_RC_WEST_DEAD};
	waitUntil {sleep 2; TOUR_RC_WEST_DEAD};
	
	//"kia" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];		
	hint "all dead"
};