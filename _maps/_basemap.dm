//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Mining\Lavaland.dmm"
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\Deltastation\DeltaStation2.dmm"
		#include "gs_maps\MetaStation\MetaStation.dmm" //GS13 - gainstation variant
		#include "gs_maps\OmegaStation\OmegaStation.dmm" //GS13 - gainstation variant
		#include "gs_maps\PubbyStation\PubbyStation.dmm" //GS13 - gainstation variant
		#include "gs_maps\BoxStation\BoxStation.dmm" //GS13 - gainstation variant
		#include "map_files\LambdaStation\lambda.dmm"
		#include "map_files\SpookyStation\SpookyStation.dmm"

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
