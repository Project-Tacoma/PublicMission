#include "CustomControlClasses.h"
class Pta_UI
{
	idd = -1;
	duration = 10e10;
	movingEnable = false;
	enableSimulation = false;
	fadein = 0;
	fadeout = 0;
	name = "Pta_UI";
	onLoad = "uiNamespace setVariable ['Pta_UI',_this select 0]";

	class ControlsBackground
	{

	};
	class Controls
	{
		class PTA_RES1
		{
			type = 0;
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.81111112;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Schwefel";
			colorBackground[] = {0.902,0.902,0.302,0.25};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_RES2
		{
			type = 0;
			idc = 1001;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.73777778;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Benzin";
			colorBackground[] = {0.8,0.2,0.2,0.25};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_RES3
		{
			type = 0;
			idc = 1002;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.66444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Öl";
			colorBackground[] = {0,0,0,0.25};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_RES4
		{
			type = 0;
			idc = 1003;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.02888889;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Moral";
			colorBackground[] = {0.949,0.949,0.949,0.25};
			colorText[] = {0.102,0.102,0.102,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};

};
