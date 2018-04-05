/**
 * Tacoma player hud
 * @author Mav
 */

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
		class PTA_Background_Benzin
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.64;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.25};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_Background_Diesel
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.71333334;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.2,0.2,0.25};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_Background_Kerosin
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.78666667;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.2,0.25};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_Background_Moral
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "";
			colorBackground[] = {0.949,0.949,0.949,0.25};
			colorText[] = {0.1098,0.9961,0.9922,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class PTA_DIALOG_BENZIN
		{
			type = 13;
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.64;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Benzin";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PTA_DiIALOG_DIESEL
		{
			type = 13;
			idc = 1001;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.71333334;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Diesel";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PTA_DIALOG_KEROSIN
		{
			type = 13;
			idc = 1002;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.78666667;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Kerosin";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PTA_DIALOG_MORAL
		{
			type = 13;
			idc = 1003;
			x = safeZoneX + safeZoneW * 0.91875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.06111112;
			style = 0;
			text = "Moral";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};

	};

};
