//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.
//gs13 - replaced some of the stations with GS versions

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "gs_maps\Mining\Lavaland.dmm"
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\Deltastation\DeltaStation2.dmm"
		#include "gs_maps\MetaStation\MetaStation.dmm"
		#include "gs_maps\OmegaStation\OmegaStation.dmm"
		#include "gs_maps\PubbyStation\PubbyStation.dmm"
		#include "gs_maps\BoxStation\BoxStation.dmm"
		#include "map_files\LambdaStation\lambda.dmm"
		#include "map_files\SpookyStation\SpookyStation.dmm"

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
